/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QGamepadManager INHERIT QObject

   METHOD instance
   METHOD isGamepadConnected
   METHOD isConfigurationNeeded
   METHOD configureButton
   METHOD configureAxis
   METHOD setCancelConfigureButton
   METHOD resetConfiguration
   METHOD setSettingsFile

   METHOD onAxisConfigured
   METHOD onButtonConfigured
   METHOD onConfigurationCanceled
   METHOD onConnectedGamepadsChanged
   METHOD onGamepadAxisEvent
   METHOD onGamepadButtonPressEvent
   METHOD onGamepadButtonReleaseEvent
   METHOD onGamepadConnected
   METHOD onGamepadDisconnected

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGamepadManager
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
#include <QGamepadManager>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
#include <QGamepadManager>
#endif
#endif

/*
QGamepadManager() [private]
*/

/*
~QGamepadManager() [private]
*/

/*
const QList<int> connectedGamepads() const
*/

/*
static QGamepadManager* instance()
*/
HB_FUNC_STATIC( QGAMEPADMANAGER_INSTANCE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
    if( ISNUMPAR(0) )
  {
      QGamepadManager * ptr = QGamepadManager::instance ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QGAMEPADMANAGER" );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
bool isGamepadConnected(int deviceId) const
*/
HB_FUNC_STATIC( QGAMEPADMANAGER_ISGAMEPADCONNECTED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadManager * obj = (QGamepadManager *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      RBOOL( obj->isGamepadConnected ( PINT(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
bool isConfigurationNeeded(int deviceId) const (slot)
*/
HB_FUNC_STATIC( QGAMEPADMANAGER_ISCONFIGURATIONNEEDED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadManager * obj = (QGamepadManager *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      RBOOL( obj->isConfigurationNeeded ( PINT(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
bool configureButton(int deviceId, GamepadButton button) (slot)
*/
HB_FUNC_STATIC( QGAMEPADMANAGER_CONFIGUREBUTTON )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadManager * obj = (QGamepadManager *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
    {
#endif
      RBOOL( obj->configureButton ( PINT(1), (QGamepadManager::GamepadButton) hb_parni(2) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
bool configureAxis(int deviceId, GamepadAxis axis) (slot)
*/
HB_FUNC_STATIC( QGAMEPADMANAGER_CONFIGUREAXIS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadManager * obj = (QGamepadManager *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
    {
#endif
      RBOOL( obj->configureAxis ( PINT(1), (QGamepadManager::GamepadAxis) hb_parni(2) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
bool setCancelConfigureButton(int deviceId, GamepadButton button) (slot)
*/
HB_FUNC_STATIC( QGAMEPADMANAGER_SETCANCELCONFIGUREBUTTON )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadManager * obj = (QGamepadManager *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
    {
#endif
      RBOOL( obj->setCancelConfigureButton ( PINT(1), (QGamepadManager::GamepadButton) hb_parni(2) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void resetConfiguration(int deviceId) (slot)
*/
HB_FUNC_STATIC( QGAMEPADMANAGER_RESETCONFIGURATION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadManager * obj = (QGamepadManager *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->resetConfiguration ( PINT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void setSettingsFile(const QString &file) (slot)
*/
HB_FUNC_STATIC( QGAMEPADMANAGER_SETSETTINGSFILE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadManager * obj = (QGamepadManager *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->setSettingsFile ( PQSTRING(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

void QGamepadManagerSlots_connect_signal ( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QGAMEPADMANAGER_ONAXISCONFIGURED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadManagerSlots_connect_signal( "axisConfigured(int,QGamepadManager::GamepadAxis)", "axisConfigured(int,QGamepadManager::GamepadAxis)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QGAMEPADMANAGER_ONBUTTONCONFIGURED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadManagerSlots_connect_signal( "buttonConfigured(int,QGamepadManager::GamepadButton)", "buttonConfigured(int,QGamepadManager::GamepadButton)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QGAMEPADMANAGER_ONCONFIGURATIONCANCELED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadManagerSlots_connect_signal( "configurationCanceled(int)", "configurationCanceled(int)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QGAMEPADMANAGER_ONCONNECTEDGAMEPADSCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadManagerSlots_connect_signal( "connectedGamepadsChanged()", "connectedGamepadsChanged()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QGAMEPADMANAGER_ONGAMEPADAXISEVENT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadManagerSlots_connect_signal( "gamepadAxisEvent(int,QGamepadManager::GamepadAxis,double)", "gamepadAxisEvent(int,QGamepadManager::GamepadAxis,double)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QGAMEPADMANAGER_ONGAMEPADBUTTONPRESSEVENT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadManagerSlots_connect_signal( "gamepadButtonPressEvent(int,QGamepadManager::GamepadButton,double)", "gamepadButtonPressEvent(int,QGamepadManager::GamepadButton,double)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QGAMEPADMANAGER_ONGAMEPADBUTTONRELEASEEVENT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadManagerSlots_connect_signal( "gamepadButtonReleaseEvent(int,QGamepadManager::GamepadButton)", "gamepadButtonReleaseEvent(int,QGamepadManager::GamepadButton)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QGAMEPADMANAGER_ONGAMEPADCONNECTED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadManagerSlots_connect_signal( "gamepadConnected(int)", "gamepadConnected(int)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QGAMEPADMANAGER_ONGAMEPADDISCONNECTED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QGamepadManagerSlots_connect_signal( "gamepadDisconnected(int)", "gamepadDisconnected(int)" );
#else
  hb_retl( false );
#endif
}

#pragma ENDDUMP
