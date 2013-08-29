package EntryEvent::L10N::es;

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
    'Sunday' => 'Domingo',
    'Monday' => 'Lunes',
    'Tuesday' => 'Martes',
    'Wednesday' => 'Miércoles',
    'Thursday' => 'Jueves',
    'Friday' => 'Viernes',
    'Saturday' => 'Sábado',
    'S|M|T|W|T|F|S' => 'D|L|M|M|J|V|S',
    'January' => 'Enero',
    'Febuary' => 'Febrero',
    'March' => 'Marzo',
    'April' => 'Abril',
    'May' => 'Mayo',
    'June' => 'Junio',
    'July' => 'Julio',
    'August' => 'Agosto',
    'September' => 'Septiembre',
    'October' => 'Octubre',
    'November' => 'Noviembre',
    'December' => 'Diciembre',
    'Jan' => 'Ene.',
    'Feb' => 'Feb.',
    'Mar' => 'Mar.',
    'Apr' => 'Abr.',
    '_SHORT_MAY' => 'May.',
    'Jun' => 'Jun.',
    'Jul' => 'Jul.',
    'Aug' => 'Ago.',
    'Sep' => 'Sep.',
    'Oct' => 'Oct.',
    'Nov' => 'Nov.',
    'Dec' => 'Dic.',
    'OK' => 'Aceptar',

    ## .\plugins\EntryEvents/tmpl/events-widget-mt5.tmpl
    'Events' => 'Eventos',

    ## .\plugins\EntryEvents/tmpl/events-widget.tmpl

    ## Error messages, strings in the app code.

    ## .\plugins\EntryEvents/extlib/DateTime/Event/ICal.pm

    ## .\plugins\EntryEvents/lib/EntryEvent/App.pm

    ## .\plugins\EntryEvents/lib/EntryEvent/CMS.pm

    ## .\plugins\EntryEvents/lib/EntryEvent/EntryEvent.pm

    ## .\plugins\EntryEvents/lib/EntryEvent/Search.pm
    'Unsupported type: [_1]' => 'Tipo no soportado: [_1]',
    'Invalid query: [_1]' => 'Consulta no válida: [_1]',

    ## .\plugins\EntryEvents/lib/EntryEvent/Tags.pm

    ## .\plugins\EntryEvents/lib/EntryEvent/Util.pm
);

1;
