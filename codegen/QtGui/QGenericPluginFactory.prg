%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=QObject * create ( const QString & key, const QString & specification )
$method=|QObject *|create|const QString &,const QString &

$prototype=QStringList keys ()
$method=|QStringList|keys|

$extraMethods

#pragma ENDDUMP
