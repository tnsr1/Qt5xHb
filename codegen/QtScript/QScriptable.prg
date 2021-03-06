%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtScript

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtScript/QScriptValue>
#include <QtScript/QScriptEngine>

$deleteMethod

$prototype=QScriptValue argument(int index) const
$method=|QScriptValue|argument|int

$prototype=int argumentCount() const
$method=|int|argumentCount|

$prototype=QScriptContext * context() const
$method=|QScriptContext *|context|

$prototype=QScriptEngine * engine() const
$method=|QScriptEngine *|engine|

$prototype=QScriptValue thisObject() const
$method=|QScriptValue|thisObject|

$extraMethods

#pragma ENDDUMP
