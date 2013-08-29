package EntryEvent::L10N::fr;

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
    'Sunday' => 'Dimanche',
    'Monday' => 'Lundi',
    'Tuesday' => 'Mar',
    'Wednesday' => 'Mercredi',
    'Thursday' => 'Jeudi',
    'Friday' => 'Vendredi',
    'Saturday' => 'Samedi',
    'S|M|T|W|T|F|S' => 'D|L|M|M|J|V|S',
    'January' => 'Janvier',
    'Febuary' => 'Février',
    'March' => 'Mars',
    'April' => 'Avril',
    'May' => 'Mai',
    'June' => 'Juin',
    'July' => 'Juillet',
    'August' => 'Août',
    'September' => 'Septembre',
    'October' => 'Octobre',
    'November' => 'Novembre',
    'December' => 'Décembre',
    'Jan' => 'Jan',
    'Feb' => 'Fév',
    'Mar' => 'Mar',
    'Apr' => 'Avr',
    '_SHORT_MAY' => 'Mai',
    'Jun' => 'Juin',
    'Jul' => 'Juil',
    'Aug' => 'Aoû',
    'Sep' => 'Sep',
    'Oct' => 'Oct',
    'Nov' => 'Nov',
    'Dec' => 'Déc',
    'OK' => 'OK',

    ## .\plugins\EntryEvents/tmpl/events-widget-mt5.tmpl
    'Events' => 'événéments',

    ## .\plugins\EntryEvents/tmpl/events-widget.tmpl

    ## Error messages, strings in the app code.

    ## .\plugins\EntryEvents/extlib/DateTime/Event/ICal.pm

    ## .\plugins\EntryEvents/lib/EntryEvent/App.pm

    ## .\plugins\EntryEvents/lib/EntryEvent/CMS.pm

    ## .\plugins\EntryEvents/lib/EntryEvent/EntryEvent.pm

    ## .\plugins\EntryEvents/lib/EntryEvent/Search.pm
    'Unsupported type: [_1]' => 'Type non supporté : [_1]',
    'Invalid query: [_1]' => 'Requête non valide : [_1]',

    ## .\plugins\EntryEvents/lib/EntryEvent/Tags.pm

    ## .\plugins\EntryEvents/lib/EntryEvent/Util.pm
);

1;
