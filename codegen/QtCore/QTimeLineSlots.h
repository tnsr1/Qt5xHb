%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCore

$header

$includes

$beginSlotsClass
$signal=|finished()
$signal=|frameChanged( int frame )
$signal=|stateChanged( QTimeLine::State newState )
$signal=|valueChanged( qreal value )
$endSlotsClass
