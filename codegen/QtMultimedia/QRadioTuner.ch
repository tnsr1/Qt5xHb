%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtMultimedia

$header

/*
enum QRadioTuner::State
*/
#define QRadioTuner_ActiveState                                      0
#define QRadioTuner_StoppedState                                     1

/*
enum QRadioTuner::Band
*/
#define QRadioTuner_AM                                               0
#define QRadioTuner_FM                                               1
#define QRadioTuner_SW                                               2
#define QRadioTuner_LW                                               3
#define QRadioTuner_FM2                                              4

/*
enum QRadioTuner::Error
*/
#define QRadioTuner_NoError                                          0
#define QRadioTuner_ResourceError                                    1
#define QRadioTuner_OpenError                                        2
#define QRadioTuner_OutOfRangeError                                  3

/*
enum QRadioTuner::StereoMode
*/
#define QRadioTuner_ForceStereo                                      0
#define QRadioTuner_ForceMono                                        1
#define QRadioTuner_Auto                                             2

/*
enum QRadioTuner::SearchMode
*/
#define QRadioTuner_SearchFast                                       0
#define QRadioTuner_SearchGetStationId                               1
