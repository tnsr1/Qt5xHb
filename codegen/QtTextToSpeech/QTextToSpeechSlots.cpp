%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtTextToSpeech

$header

$includes=5,10,0

$beginSlotsClass
$slot=5,10,0|localeChanged( const QLocale & locale )
$slot=5,10,0|pitchChanged( double pitch )
$slot=5,10,0|rateChanged( double rate )
$slot=5,10,0|stateChanged( QTextToSpeech::State state )
$slot=5,10,0|voiceChanged( const QVoice & voice )
$slot=5,10,0|volumeChanged( int volume )
$endSlotsClass
