%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtNetworkAuth

$header

$includes=5,10,0

$beginSlotsClass
$slot=5,10,0|clientSharedSecretChanged( const QString & credential )
$slot=5,10,0|signatureMethodChanged( QOAuth1::SignatureMethod method )
$slot=5,10,0|temporaryCredentialsUrlChanged( const QUrl & url )
$slot=5,10,0|tokenCredentialsUrlChanged( const QUrl & url )
$slot=5,10,0|tokenSecretChanged( const QString & token )
$endSlotsClass
