%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtQml

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

$prototype=virtual Flags flags() const = 0
$virtualMethod=|QQmlImageProviderBase::Flags|flags|

$prototype=virtual ImageType imageType() const = 0
$virtualMethod=|QQmlImageProviderBase::ImageType|imageType|

$extraMethods

#pragma ENDDUMP
