package EntryEvent::L10N::ja;

use strict;
use MT::L10N::en_us;
use base 'EntryEvent::L10N::en_us';
use vars qw( %Lexicon );

sub encoding { 'utf-8' } 

## The following is the translation table.

%Lexicon = (

    ## .\plugins\EntryEvents/tmpl/blog_config.tmpl

    ## .\plugins\EntryEvents/tmpl/calendar.tmpl
    '_LOCALE_WEEK_START' => '00',
    'Sunday' => '日曜日',
    'Monday' => '月曜日',
    'Tuesday' => '火曜日',
    'Wednesday' => '水曜日',
    'Thursday' => '木曜日',
    'Friday' => '金曜日',
    'Saturday' => '土曜日',
    'S|M|T|W|T|F|S' => '日|月|火|水|木|金|土',
    'January' => '1月',
    'Febuary' => '2月',
    'March' => '3月',
    'April' => '4月',
    'May' => '5月',
    'June' => '6月',
    'July' => '7月',
    'August' => '8月',
    'September' => '9月',
    'October' => '10月',
    'November' => '11月',
    'December' => '12月',
    'Jan' => '1月',
    'Feb' => '2月',
    'Mar' => '3月',
    'Apr' => '4月',
    '_SHORT_MAY' => '5月',
    'Jun' => '6月',
    'Jul' => '7月',
    'Aug' => '8月',
    'Sep' => '9月',
    'Oct' => '10月',
    'Nov' => '11月',
    'Dec' => '12月',
    'OK' => 'OK',

    ## .\plugins\EntryEvents/tmpl/events-widget-mt5.tmpl
	'Events' => 'イベント',

    ## .\plugins\EntryEvents/tmpl/events-widget.tmpl

    ## Error messages, strings in the app code.

    ## .\plugins\EntryEvents/extlib/DateTime/Event/ICal.pm

    ## .\plugins\EntryEvents/lib/EntryEvent/App.pm

    ## .\plugins\EntryEvents/lib/EntryEvent/CMS.pm

    ## .\plugins\EntryEvents/lib/EntryEvent/EntryEvent.pm

    ## .\plugins\EntryEvents/lib/EntryEvent/Search.pm
    'Unsupported type: [_1]' => '[_1]はサポートされていません。',
    'Invalid query: [_1]' => '不正なクエリーです: [_1]',

    ## .\plugins\EntryEvents/lib/EntryEvent/Tags.pm

    ## .\plugins\EntryEvents/lib/EntryEvent/Util.pm
);


1;
