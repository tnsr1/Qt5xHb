%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QGamepad INHERIT QObject

   METHOD new
   METHOD delete

   METHOD axisLeftX
   METHOD axisLeftY
   METHOD axisRightX
   METHOD axisRightY
   METHOD buttonA
   METHOD buttonB
   METHOD buttonCenter
   METHOD buttonDown
   METHOD buttonGuide
   METHOD buttonL1
   METHOD buttonL2
   METHOD buttonL3
   METHOD buttonLeft
   METHOD buttonR1
   METHOD buttonR2
   METHOD buttonR3
   METHOD buttonRight
   METHOD buttonSelect
   METHOD buttonStart
   METHOD buttonUp
   METHOD buttonX
   METHOD buttonY
   METHOD deviceId
   METHOD isConnected
   METHOD name
   METHOD setDeviceId

   METHOD onAxisLeftXChanged
   METHOD onAxisLeftYChanged
   METHOD onAxisRightXChanged
   METHOD onAxisRightYChanged
   METHOD onButtonAChanged
   METHOD onButtonBChanged
   METHOD onButtonCenterChanged
   METHOD onButtonDownChanged
   METHOD onButtonGuideChanged
   METHOD onButtonL1Changed
   METHOD onButtonL2Changed
   METHOD onButtonL3Changed
   METHOD onButtonLeftChanged
   METHOD onButtonR1Changed
   METHOD onButtonR2Changed
   METHOD onButtonR3Changed
   METHOD onButtonRightChanged
   METHOD onButtonSelectChanged
   METHOD onButtonStartChanged
   METHOD onButtonUpChanged
   METHOD onButtonXChanged
   METHOD onButtonYChanged
   METHOD onConnectedChanged
   METHOD onDeviceIdChanged
   METHOD onNameChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,9,0

$prototype=explicit QGamepad(int deviceId = 0, QObject *parent = nullptr)
$constructor=5,9,0|new|int=0,QObject *=nullptr

$prototype=~QGamepad()
$deleteMethod=5,9,0

%%
%% Q_PROPERTY(int deviceId READ deviceId WRITE setDeviceId NOTIFY deviceIdChanged)
%%

$prototype=int deviceId() const
$method=5,9,0|int|deviceId|

$prototype=void setDeviceId(int number) (slot)
$slotMethod=5,9,0|void|setDeviceId|int

%%
%% Q_PROPERTY(bool connected READ isConnected NOTIFY connectedChanged)
%%

$prototype=bool isConnected() const
$method=5,9,0|bool|isConnected|

%%
%% Q_PROPERTY(QString name READ name NOTIFY nameChanged)
%%

$prototype=QString name() const
$method=5,9,0|QString|name|

%%
%% Q_PROPERTY(double axisLeftX READ axisLeftX NOTIFY axisLeftXChanged)
%%

$prototype=double axisLeftX() const
$method=5,9,0|double|axisLeftX|

%%
%% Q_PROPERTY(double axisLeftY READ axisLeftY NOTIFY axisLeftYChanged)
%%

$prototype=double axisLeftY() const
$method=5,9,0|double|axisLeftY|

%%
%% Q_PROPERTY(double axisRightX READ axisRightX NOTIFY axisRightXChanged)
%%

$prototype=double axisRightX() const
$method=5,9,0|double|axisRightX|

%%
%% Q_PROPERTY(double axisRightY READ axisRightY NOTIFY axisRightYChanged)
%%

$prototype=double axisRightY() const
$method=5,9,0|double|axisRightY|

%%
%% Q_PROPERTY(bool buttonA READ buttonA NOTIFY buttonAChanged)
%%

$prototype=bool buttonA() const
$method=5,9,0|bool|buttonA|

%%
%% Q_PROPERTY(bool buttonB READ buttonB NOTIFY buttonBChanged)
%%

$prototype=bool buttonB() const
$method=5,9,0|bool|buttonB|

%%
%% Q_PROPERTY(bool buttonX READ buttonX NOTIFY buttonXChanged)
%%

$prototype=bool buttonX() const
$method=5,9,0|bool|buttonX|

%%
%% Q_PROPERTY(bool buttonY READ buttonY NOTIFY buttonYChanged)
%%

$prototype=bool buttonY() const
$method=5,9,0|bool|buttonY|

%%
%% Q_PROPERTY(bool buttonL1 READ buttonL1 NOTIFY buttonL1Changed)
%%

$prototype=bool buttonL1() const
$method=5,9,0|bool|buttonL1|

%%
%% Q_PROPERTY(bool buttonR1 READ buttonR1 NOTIFY buttonR1Changed)
%%

$prototype=bool buttonR1() const
$method=5,9,0|bool|buttonR1|

%%
%% Q_PROPERTY(double buttonL2 READ buttonL2 NOTIFY buttonL2Changed)
%%

$prototype=double buttonL2() const
$method=5,9,0|double|buttonL2|

%%
%% Q_PROPERTY(double buttonR2 READ buttonR2 NOTIFY buttonR2Changed)
%%

$prototype=double buttonR2() const
$method=5,9,0|double|buttonR2|

%%
%% Q_PROPERTY(bool buttonSelect READ buttonSelect NOTIFY buttonSelectChanged)
%%

$prototype=bool buttonSelect() const
$method=5,9,0|bool|buttonSelect|

%%
%% Q_PROPERTY(bool buttonStart READ buttonStart NOTIFY buttonStartChanged)
%%

$prototype=bool buttonStart() const
$method=5,9,0|bool|buttonStart|

%%
%% Q_PROPERTY(bool buttonL3 READ buttonL3 NOTIFY buttonL3Changed)
%%

$prototype=bool buttonL3() const
$method=5,9,0|bool|buttonL3|

%%
%% Q_PROPERTY(bool buttonR3 READ buttonR3 NOTIFY buttonR3Changed)
%%

$prototype=bool buttonR3() const
$method=5,9,0|bool|buttonR3|

%%
%% Q_PROPERTY(bool buttonUp READ buttonUp NOTIFY buttonUpChanged)
%%

$prototype=bool buttonUp() const
$method=5,9,0|bool|buttonUp|

%%
%% Q_PROPERTY(bool buttonDown READ buttonDown NOTIFY buttonDownChanged)
%%

$prototype=bool buttonDown() const
$method=5,9,0|bool|buttonDown|

%%
%% Q_PROPERTY(bool buttonLeft READ buttonLeft NOTIFY buttonLeftChanged)
%%

$prototype=bool buttonLeft() const
$method=5,9,0|bool|buttonLeft|

%%
%% Q_PROPERTY(bool buttonRight READ buttonRight NOTIFY buttonRightChanged)
%%

$prototype=bool buttonRight() const
$method=5,9,0|bool|buttonRight|

%%
%% Q_PROPERTY(bool buttonCenter READ buttonCenter NOTIFY buttonCenterChanged)
%%

$prototype=bool buttonCenter() const
$method=5,9,0|bool|buttonCenter|

%%
%% Q_PROPERTY(bool buttonGuide READ buttonGuide NOTIFY buttonGuideChanged)
%%

$prototype=bool buttonGuide() const
$method=5,9,0|bool|buttonGuide|

%%
%%
%%

#pragma ENDDUMP
