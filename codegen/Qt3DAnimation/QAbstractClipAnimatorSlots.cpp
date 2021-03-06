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
$slot=|runningChanged( bool running )
$slot=|channelMapperChanged( Qt3DAnimation::QChannelMapper * channelMapper )
$slot=|loopCountChanged( int loops )
$slot=|clockChanged( Qt3DAnimation::QClock * clock )
$endSlotsClass
