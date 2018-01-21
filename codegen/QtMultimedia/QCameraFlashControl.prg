%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QCameraFlashControl INHERIT QMediaControl

%%   METHOD new
   METHOD delete

   METHOD flashMode
   METHOD isFlashModeSupported
   METHOD isFlashReady
   METHOD setFlashMode

   METHOD onFlashReady

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QCameraFlashControl(QObject *parent = Q_NULLPTR) (protected)

$prototype=~QCameraFlashControl()
$deleteMethod

$prototype=virtual QCameraExposure::FlashModes flashMode() const = 0
$virtualMethod=|QCameraExposure::FlashModes|flashMode|

$prototype=virtual bool isFlashModeSupported(QCameraExposure::FlashModes mode) const = 0
$virtualMethod=|bool|isFlashModeSupported|QCameraExposure::FlashModes

$prototype=virtual bool isFlashReady() const = 0
$virtualMethod=|bool|isFlashReady|

$prototype=virtual void setFlashMode(QCameraExposure::FlashModes mode) = 0
$virtualMethod=|void|setFlashMode|QCameraExposure::FlashModes

#pragma ENDDUMP

%% Q_SIGNALS:
%% void flashReady(bool);
