package EntryEvent::L10N::nl;

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
    'Sunday' => 'Zondag',
    'Monday' => 'Maandag',
    'Tuesday' => 'Dinsdag',
    'Wednesday' => 'Woensdag',
    'Thursday' => 'Donderdag',
    'Friday' => 'Vrijdag',
    'Saturday' => 'Zaterdag',
    'S|M|T|W|T|F|S' => 'Z|M|D|W|D|V|Z',
    'January' => 'Januari',
    'Febuary' => 'Februari',
    'March' => 'Maart',
    'April' => 'April',
    'May' => 'Mei',
    'June' => 'Juni',
    'July' => 'Juli',
    'August' => 'Augustus',
    'September' => 'September',
    'October' => 'Oktober',
    'November' => 'November',
    'December' => 'December',
    'Jan' => 'Jan',
    'Feb' => 'Feb',
    'Mar' => 'Maa',
    'Apr' => 'Apr',
    '_SHORT_MAY' => 'Mei',
    'Jun' => 'Jun',
    'Jul' => 'Jul',
    'Aug' => 'Aug',
    'Sep' => 'Sep',
    'Oct' => 'Okt',
    'Nov' => 'Nov',
    'Dec' => 'Dec',
    'OK' => 'OK',

    ## .\plugins\EntryEvents/tmpl/events-widget-mt5.tmpl
    'Events' => 'Gebeurtenissen',

    ## .\plugins\EntryEvents/tmpl/events-widget.tmpl

    ## Error messages, strings in the app code.

    ## .\plugins\EntryEvents/extlib/DateTime/Event/ICal.pm

    ## .\plugins\EntryEvents/lib/EntryEvent/App.pm

    ## .\plugins\EntryEvents/lib/EntryEvent/CMS.pm

    ## .\plugins\EntryEvents/lib/EntryEvent/EntryEvent.pm

    ## .\plugins\EntryEvents/lib/EntryEvent/Search.pm
    'Unsupported type: [_1]' => 'Niet ondersteund type: [_1]',
    'Invalid query: [_1]' => 'Ongeldige zoekopdracht: [_1]',

    ## .\plugins\EntryEvents/lib/EntryEvent/Tags.pm

    ## .\plugins\EntryEvents/lib/EntryEvent/Util.pm
);

1;
