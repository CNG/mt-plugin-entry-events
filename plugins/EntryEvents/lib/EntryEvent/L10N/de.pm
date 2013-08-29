package EntryEvent::L10N::de;

use strict;
use MT::L10N::en_us;
use base 'EntryEvent::L10N::en_us';
use vars qw( %Lexicon );

sub encoding { 'utf-8' } 

## The following is the translation table.

%Lexicon = (

    ## .\plugins\EntryEvents/tmpl/blog_config.tmpl

    ## .\plugins\EntryEvents/tmpl/calendar.tmpl
    '_LOCALE_WEEK_START' => '1',
    'Sunday' => 'Sonntag',
    'Monday' => 'Montag',
    'Tuesday' => 'Dienstag',
    'Wednesday' => 'Mittwoch',
    'Thursday' => 'Donnerstag',
    'Friday' => 'Freitag',
    'Saturday' => 'Samstag',
    'S|M|T|W|T|F|S' => 'S|M|D|M|D|F|S',
    'January' => 'Januar',
    'Febuary' => 'Februar',
    'March' => 'März',
    'April' => 'April',
    'May' => 'Mai',
    'June' => 'Juni',
    'July' => 'Juli',
    'August' => 'August',
    'September' => 'September',
    'October' => 'Oktober',
    'November' => 'November',
    'December' => 'Dezember',
    'Jan' => 'Jan',
    'Feb' => 'Feb',
    'Mar' => 'Mrz',
    'Apr' => 'Apr',
    '_SHORT_MAY' => 'Mai',
    'Jun' => 'Jun',
    'Jul' => 'Jul',
    'Aug' => 'Aug',
    'Sep' => 'Sep',
    'Oct' => 'Okt',
    'Nov' => 'Nov',
    'Dec' => 'Dez',
    'OK' => 'OK',

    ## .\plugins\EntryEvents/tmpl/events-widget-mt5.tmpl
    'Events' => 'Veranstaltungen',

    ## .\plugins\EntryEvents/tmpl/events-widget.tmpl

    ## Error messages, strings in the app code.

    ## .\plugins\EntryEvents/extlib/DateTime/Event/ICal.pm

    ## .\plugins\EntryEvents/lib/EntryEvent/App.pm

    ## .\plugins\EntryEvents/lib/EntryEvent/CMS.pm

    ## .\plugins\EntryEvents/lib/EntryEvent/EntryEvent.pm

    ## .\plugins\EntryEvents/lib/EntryEvent/Search.pm
    'Unsupported type: [_1]' => 'Nicht unterstützter Typ: [_1]',
    'Invalid query: [_1]' => 'Ungültige Suchanfrage: [_1]',

    ## .\plugins\EntryEvents/lib/EntryEvent/Tags.pm

    ## .\plugins\EntryEvents/lib/EntryEvent/Util.pm
);

1;
