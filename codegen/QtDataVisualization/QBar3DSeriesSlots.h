%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtDataVisualization

$header

$includes

using namespace QtDataVisualization;

$beginSlotsClass
$signal=|dataProxyChanged( QBarDataProxy * proxy )
$signal=|selectedBarChanged( const QPoint & position )
$signal=|meshAngleChanged( float angle )
$endSlotsClass
