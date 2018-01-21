%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMEDIAOBJECT
#endif

CLASS QMediaBindableInterface

   DATA pointer
   DATA self_destruction INIT .F.

%%   METHOD new
   METHOD delete

   METHOD mediaObject

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=virtual ~QMediaBindableInterface()
$deleteMethod

$prototype=virtual QMediaObject * mediaObject() const = 0
$virtualMethod=|QMediaObject *|mediaObject|

$prototype=virtual bool setMediaObject(QMediaObject *object) = 0 (protected)

$extraMethods

#pragma ENDDUMP
