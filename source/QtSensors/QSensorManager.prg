/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSENSORBACKEND
#endif

CLASS QSensorManager

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD registerBackend
   METHOD unregisterBackend
   METHOD isBackendRegistered
   METHOD createBackend
   METHOD setDefaultBackend

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSensorManager
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QSensorManager>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QSensorManager>
#endif
#endif

#include <QSensorBackend>

HB_FUNC_STATIC( QSENSORMANAGER_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorManager * obj = (QSensorManager *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
static void registerBackend(const QByteArray &type, const QByteArray &identifier, QSensorBackendFactory *factory)
*/
HB_FUNC_STATIC( QSENSORMANAGER_REGISTERBACKEND )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && ISQBYTEARRAY(1) && ISQBYTEARRAY(2) && ISQSENSORBACKENDFACTORY(3) )
  {
#endif
      QSensorManager::registerBackend ( *PQBYTEARRAY(1), *PQBYTEARRAY(2), PQSENSORBACKENDFACTORY(3) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
static void unregisterBackend(const QByteArray &type, const QByteArray &identifier)
*/
HB_FUNC_STATIC( QSENSORMANAGER_UNREGISTERBACKEND )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISQBYTEARRAY(1) && ISQBYTEARRAY(2) )
  {
#endif
      QSensorManager::unregisterBackend ( *PQBYTEARRAY(1), *PQBYTEARRAY(2) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
static bool isBackendRegistered(const QByteArray &type, const QByteArray &identifier)
*/
HB_FUNC_STATIC( QSENSORMANAGER_ISBACKENDREGISTERED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISQBYTEARRAY(1) && ISQBYTEARRAY(2) )
  {
#endif
      RBOOL( QSensorManager::isBackendRegistered ( *PQBYTEARRAY(1), *PQBYTEARRAY(2) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
#endif
}

/*
static QSensorBackend *createBackend(QSensor *sensor)
*/
HB_FUNC_STATIC( QSENSORMANAGER_CREATEBACKEND )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQSENSOR(1) )
  {
#endif
      QSensorBackend * ptr = QSensorManager::createBackend ( PQSENSOR(1) );
      _qt5xhb_createReturnQObjectClass ( ptr, "QSENSORBACKEND" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
#endif
}

/*
static void setDefaultBackend(const QByteArray &type, const QByteArray &identifier)
*/
HB_FUNC_STATIC( QSENSORMANAGER_SETDEFAULTBACKEND )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISQBYTEARRAY(1) && ISQBYTEARRAY(2) )
  {
#endif
      QSensorManager::setDefaultBackend ( *PQBYTEARRAY(1), *PQBYTEARRAY(2) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

HB_FUNC_STATIC( QSENSORMANAGER_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QSENSORMANAGER_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QSENSORMANAGER_NEWFROM );
}

HB_FUNC_STATIC( QSENSORMANAGER_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QSENSORMANAGER_NEWFROM );
}

HB_FUNC_STATIC( QSENSORMANAGER_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QSENSORMANAGER_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
