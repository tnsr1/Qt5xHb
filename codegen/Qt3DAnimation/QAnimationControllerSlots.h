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
$signal=|activeAnimationGroupChanged( int index )
$signal=|positionChanged( float position )
$signal=|positionScaleChanged( float scale )
$signal=|positionOffsetChanged( float offset )
$signal=|entityChanged( Qt3DCore::QEntity * entity )
$signal=|recursiveChanged( bool recursive )
$endSlotsClass
