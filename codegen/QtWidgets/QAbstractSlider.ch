%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWidgets

$header

/*
enum QAbstractSlider::SliderAction
*/
#define QAbstractSlider_SliderNoAction                               0
#define QAbstractSlider_SliderSingleStepAdd                          1
#define QAbstractSlider_SliderSingleStepSub                          2
#define QAbstractSlider_SliderPageStepAdd                            3
#define QAbstractSlider_SliderPageStepSub                            4
#define QAbstractSlider_SliderToMinimum                              5
#define QAbstractSlider_SliderToMaximum                              6
#define QAbstractSlider_SliderMove                                   7

/*
enum QAbstractSlider::SliderChange (protected)
*/
#define QAbstractSlider_SliderRangeChange                            0
#define QAbstractSlider_SliderOrientationChange                      1
#define QAbstractSlider_SliderStepsChange                            2
#define QAbstractSlider_SliderValueChange                            3
