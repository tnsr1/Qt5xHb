%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=Qt3DAnimation

$header

$includes

$beginSlotsClass
$signal=|targetPositionsChanged( const QVector<float> & targetPositions )
$signal=|interpolatorChanged( float interpolator )
$signal=|targetChanged( Qt3DRender::QGeometryRenderer * target )
$signal=|targetNameChanged( const QString & name )
$endSlotsClass
