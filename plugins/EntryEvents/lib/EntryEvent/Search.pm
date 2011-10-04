############################################################################
# Copyright © 2010 Six Apart Ltd.
# This program is free software: you can redistribute it and/or modify it
# under the terms of version 2 of the GNU General Public License as published
# by the Free Software Foundation, or (at your option) any later version.
# This program is distributed in the hope that it will be useful, but WITHOUT
# ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
# FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License
# version 2 for more details. You should have received a copy of the GNU
# General Public License version 2 along with this program. If not, see
# <http://www.gnu.org/licenses/>.

package EntryEvent::Search;

use strict;
use warnings;

use MT::Util qw( epoch2ts );
use EntryEvent::EntryEvent;
use EntryEvent::Util qw( ts2datetime );

require DateTime;

sub init_request {
    my $cb = shift;
    my $plugin = $cb->plugin;
    my ($app) = @_;

    my $reg = $app->registry( $app->mode, 'types', 'entry' );
    my $filter_types = $reg->{'filter_types'};
    $filter_types->{entry_events} = \&_filter_by_event;
}

sub _filter_by_event {
    my ($app, $term) = @_;
    return unless $term->{term};

    # Separate event_range value into component parts:
    #   "start:YYYYMMDDHHMMSS,end:YYYYMMDDHHMMSS,days:nn"
    my ($start, $end, $days);
    my @event_params = split /,/, $term->{term};
    foreach my $event_param (@event_params) {
        my ($name, $value) = split /:/, $event_param;
        $start = $value if ( $name eq 'start' );
        $end   = $value if ( $name eq 'end' );
        $days  = $value if ( $name eq 'days' );
    }
    # Default 7 days if no $days (and no $end)
    $days = 7 unless $days;
    # $end overrides $days
    $days = undef if $end;

    # Default $start: Current time in first blog being searched
    if (!$start) {
        my $q = $app->param;
        my $blog_id = $q->param('blog_id') || $app->first_blog_id();
        $start = epoch2ts($blog_id, time) unless $start;
    }

    # Time is passed in YYYYMMDDHHMMSS format

    # Return if $start does not look like a timestamp
    return if ($start !~ m/^\d{14}$/);
    # Return if $end is defined but does not look like a timestamp
    return if ( $end && ( $end !~ m/^\d{14}$/ ) );
    # Return if $days is defined but does not look like a number
    return if ( $days && ( $days !~ m/^\d+$/ ) );

    # Parse start (passed as YYYYMMDDHHMMSS) to a DateTime obj
    my $start_dt = ts2datetime($start);

    # Compute $end from $days
    if ($days) {
        my $end_dt = $start_dt->clone;
        $end_dt->add( days => $days );
        $end = epoch2ts(undef, $end_dt->epoch);
        $days = undef;
    }

    # Make sure $start is included in recurrence check
    #   (but note that $end is *not* included)
    $start_dt->subtract( seconds => 1 );
    $start = epoch2ts(undef, $start_dt->epoch);

    my @entry_ids;
    # Load entry events from all blogs being searched
    my @blog_ids = keys(%{$app->{searchparam}{IncludeBlogs}});
    my $event_iter = EntryEvent::EntryEvent->load_iter({ blog_id => \@blog_ids });
    while ( my $event = $event_iter->() ) {
        my $event_date = $event->get_next_occurrence($start);
        if ( $event_date && ($event_date < $end) ) {
                push @entry_ids, $event->entry_id;
        }
    }

    # If we have no entry IDs, use "0" as a place holder to prevent query error
    #   but still force no results to be returned
    push @entry_ids, 0 unless scalar(@entry_ids);

    # Return join on mt_entryevent with list of entry IDs which have event
    #   or event recurrence within specified time period
    return EntryEvent::EntryEvent->join_on(
        undef,
        [
            { 'entry_id'   => \"= entry_id" }  #"
            => -and => { 'entry_id' => \@entry_ids }
        ],
        { 'unique' => 1 }
    );
}

1;
