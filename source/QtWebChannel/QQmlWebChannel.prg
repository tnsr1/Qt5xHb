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

CLASS QQmlWebChannel INHERIT QWebChannel

   METHOD new
   METHOD delete
   METHOD connectTo
   METHOD disconnectFrom

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QQmlWebChannel
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QQmlWebChannel>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QQmlWebChannel>
#endif
#endif

/*
explicit QQmlWebChannel(QObject *parent = 0)
*/
HB_FUNC_STATIC( QQMLWEBCHANNEL_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QQmlWebChannel * o = new QQmlWebChannel ( OPQOBJECT(1,0) );
    _qt5xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

HB_FUNC_STATIC( QQMLWEBCHANNEL_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QQmlWebChannel * obj = (QQmlWebChannel *) _qt5xhb_itemGetPtrStackSelfItem();

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
Q_INVOKABLE void registerObjects(const QVariantMap &objects)
*/

/*
QQmlListProperty<QObject> registeredObjects()
*/

/*
QQmlListProperty<QObject> transports()
*/

/*
static QQmlWebChannelAttached *qmlAttachedProperties(QObject *obj)
*/

/*
Q_INVOKABLE void connectTo(QObject *transport)
*/
HB_FUNC_STATIC( QQMLWEBCHANNEL_CONNECTTO )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QQmlWebChannel * obj = (QQmlWebChannel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQOBJECT(1) )
    {
      obj->connectTo ( PQOBJECT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
Q_INVOKABLE void disconnectFrom(QObject *transport)
*/
HB_FUNC_STATIC( QQMLWEBCHANNEL_DISCONNECTFROM )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QQmlWebChannel * obj = (QQmlWebChannel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQOBJECT(1) )
    {
      obj->disconnectFrom ( PQOBJECT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

#pragma ENDDUMP
