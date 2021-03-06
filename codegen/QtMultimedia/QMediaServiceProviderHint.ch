%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtMultimedia

$header

/*
enum QMediaServiceProviderHint::Type
*/
#define QMediaServiceProviderHint_Null                               0
#define QMediaServiceProviderHint_ContentType                        1
#define QMediaServiceProviderHint_Device                             2
#define QMediaServiceProviderHint_SupportedFeatures                  3
#define QMediaServiceProviderHint_CameraPosition                     4

/*
enum QMediaServiceProviderHint::Feature
flags QMediaServiceProviderHint::Features
*/
#define QMediaServiceProviderHint_LowLatencyPlayback                 0x01
#define QMediaServiceProviderHint_RecordingSupport                   0x02
#define QMediaServiceProviderHint_StreamPlayback                     0x04
#define QMediaServiceProviderHint_VideoSurface                       0x08
