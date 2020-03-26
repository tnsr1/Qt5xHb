/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGESTURE
REQUEST QPOINTF
REQUEST QWIDGET
#endif

CLASS QGestureEvent INHERIT QEvent

   METHOD new
   METHOD delete
   METHOD accept
   METHOD activeGestures
   METHOD canceledGestures
   METHOD gesture
   METHOD gestures
   METHOD ignore
   METHOD isAccepted
   METHOD mapToGraphicsScene
   METHOD setAccepted
   METHOD widget

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QGestureEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QGestureEvent>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtWidgets/QGestureEvent>
#endif

/*
QGestureEvent ( const QList<QGesture *> & gestures )
*/
HB_FUNC_STATIC( QGESTUREEVENT_NEW )
{
  if( ISNUMPAR(1) && ISARRAY(1) )
  {
    QList<QGesture *> par1;
    PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
    int i1;
    int nLen1 = hb_arrayLen(aList1);
    for (i1=0;i1<nLen1;i1++)
    {
      par1 << (QGesture *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
    }
    QGestureEvent * o = new QGestureEvent( par1 );
    _qt5xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QGESTUREEVENT_DELETE )
{
  QGestureEvent * obj = (QGestureEvent *) _qt5xhb_itemGetPtrStackSelfItem();

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
}

/*
void accept ()
*/
void QGestureEvent_accept1()
{
  QGestureEvent * obj = (QGestureEvent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->accept();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void accept ( QGesture * gesture )
*/
void QGestureEvent_accept2()
{
  QGestureEvent * obj = (QGestureEvent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->accept( PQGESTURE(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void accept ( Qt::GestureType gestureType )
*/
void QGestureEvent_accept3()
{
  QGestureEvent * obj = (QGestureEvent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->accept( (Qt::GestureType) hb_parni(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void accept ()
//[2]void accept ( QGesture * gesture )
//[3]void accept ( Qt::GestureType gestureType )

HB_FUNC_STATIC( QGESTUREEVENT_ACCEPT )
{
  if( ISNUMPAR(0) )
  {
    QGestureEvent_accept1();
  }
  else if( ISNUMPAR(1) && ISQGESTURE(1) )
  {
    QGestureEvent_accept2();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QGestureEvent_accept3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QList<QGesture *> activeGestures () const
*/
HB_FUNC_STATIC( QGESTUREEVENT_ACTIVEGESTURES )
{
  QGestureEvent * obj = (QGestureEvent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QList<QGesture *> list = obj->activeGestures();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QGESTURE" );
      PHB_ITEM pArray = hb_itemArrayNew(0);
      if( pDynSym )
      {
        for( int i = 0; i < list.count(); i++ )
        {
          hb_vmPushDynSym( pDynSym );
          hb_vmPushNil();
          hb_vmDo( 0 );
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( NULL );
          hb_itemPutPtr( pItem, (QGesture *) list[i] );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
      }
      else
      {
        hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QGESTURE", HB_ERR_ARGS_BASEPARAMS );
      }
      hb_itemReturnRelease(pArray);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QList<QGesture *> canceledGestures () const
*/
HB_FUNC_STATIC( QGESTUREEVENT_CANCELEDGESTURES )
{
  QGestureEvent * obj = (QGestureEvent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QList<QGesture *> list = obj->canceledGestures();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QGESTURE" );
      PHB_ITEM pArray = hb_itemArrayNew(0);
      if( pDynSym )
      {
        for( int i = 0; i < list.count(); i++ )
        {
          hb_vmPushDynSym( pDynSym );
          hb_vmPushNil();
          hb_vmDo( 0 );
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( NULL );
          hb_itemPutPtr( pItem, (QGesture *) list[i] );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
      }
      else
      {
        hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QGESTURE", HB_ERR_ARGS_BASEPARAMS );
      }
      hb_itemReturnRelease(pArray);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QGesture * gesture ( Qt::GestureType type ) const
*/
HB_FUNC_STATIC( QGESTUREEVENT_GESTURE )
{
  QGestureEvent * obj = (QGestureEvent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      QGesture * ptr = obj->gesture( (Qt::GestureType) hb_parni(1) );
      _qt5xhb_createReturnQObjectClass( ptr, "QGESTURE" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QList<QGesture *> gestures () const
*/
HB_FUNC_STATIC( QGESTUREEVENT_GESTURES )
{
  QGestureEvent * obj = (QGestureEvent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QList<QGesture *> list = obj->gestures();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QGESTURE" );
      PHB_ITEM pArray = hb_itemArrayNew(0);
      if( pDynSym )
      {
        for( int i = 0; i < list.count(); i++ )
        {
          hb_vmPushDynSym( pDynSym );
          hb_vmPushNil();
          hb_vmDo( 0 );
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( NULL );
          hb_itemPutPtr( pItem, (QGesture *) list[i] );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
      }
      else
      {
        hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QGESTURE", HB_ERR_ARGS_BASEPARAMS );
      }
      hb_itemReturnRelease(pArray);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void ignore ()
*/
void QGestureEvent_ignore1()
{
  QGestureEvent * obj = (QGestureEvent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->ignore();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void ignore ( QGesture * gesture )
*/
void QGestureEvent_ignore2()
{
  QGestureEvent * obj = (QGestureEvent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->ignore( PQGESTURE(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void ignore ( Qt::GestureType gestureType )
*/
void QGestureEvent_ignore3()
{
  QGestureEvent * obj = (QGestureEvent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->ignore( (Qt::GestureType) hb_parni(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void ignore ()
//[2]void ignore ( QGesture * gesture )
//[3]void ignore ( Qt::GestureType gestureType )

HB_FUNC_STATIC( QGESTUREEVENT_IGNORE )
{
  if( ISNUMPAR(0) )
  {
    QGestureEvent_ignore1();
  }
  else if( ISNUMPAR(1) && ISQGESTURE(1) )
  {
    QGestureEvent_ignore2();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QGestureEvent_ignore3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool isAccepted () const
*/
void QGestureEvent_isAccepted1()
{
  QGestureEvent * obj = (QGestureEvent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->isAccepted() );
  }
}

/*
bool isAccepted ( QGesture * gesture ) const
*/
void QGestureEvent_isAccepted2()
{
  QGestureEvent * obj = (QGestureEvent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->isAccepted( PQGESTURE(1) ) );
  }
}

/*
bool isAccepted ( Qt::GestureType gestureType ) const
*/
void QGestureEvent_isAccepted3()
{
  QGestureEvent * obj = (QGestureEvent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->isAccepted( (Qt::GestureType) hb_parni(1) ) );
  }
}

//[1]bool isAccepted () const
//[2]bool isAccepted ( QGesture * gesture ) const
//[3]bool isAccepted ( Qt::GestureType gestureType ) const

HB_FUNC_STATIC( QGESTUREEVENT_ISACCEPTED )
{
  if( ISNUMPAR(0) )
  {
    QGestureEvent_isAccepted1();
  }
  else if( ISNUMPAR(1) && ISQGESTURE(1) )
  {
    QGestureEvent_isAccepted2();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QGestureEvent_isAccepted3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QPointF mapToGraphicsScene ( const QPointF & gesturePoint ) const
*/
HB_FUNC_STATIC( QGESTUREEVENT_MAPTOGRAPHICSSCENE )
{
  QGestureEvent * obj = (QGestureEvent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPOINTF(1) )
    {
#endif
      QPointF * ptr = new QPointF( obj->mapToGraphicsScene( *PQPOINTF(1) ) );
      _qt5xhb_createReturnClass( ptr, "QPOINTF", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setAccepted ( bool accepted )
*/
void QGestureEvent_setAccepted1()
{
  QGestureEvent * obj = (QGestureEvent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setAccepted( PBOOL(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setAccepted ( QGesture * gesture, bool value )
*/
void QGestureEvent_setAccepted2()
{
  QGestureEvent * obj = (QGestureEvent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setAccepted( PQGESTURE(1), PBOOL(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setAccepted ( Qt::GestureType gestureType, bool value )
*/
void QGestureEvent_setAccepted3()
{
  QGestureEvent * obj = (QGestureEvent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setAccepted( (Qt::GestureType) hb_parni(1), PBOOL(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void setAccepted ( bool accepted )
//[2]void setAccepted ( QGesture * gesture, bool value )
//[3]void setAccepted ( Qt::GestureType gestureType, bool value )

HB_FUNC_STATIC( QGESTUREEVENT_SETACCEPTED )
{
  if( ISNUMPAR(1) && ISLOG(1) )
  {
    QGestureEvent_setAccepted1();
  }
  else if( ISNUMPAR(2) && ISQGESTURE(1) && ISLOG(2) )
  {
    QGestureEvent_setAccepted2();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISLOG(2) )
  {
    QGestureEvent_setAccepted3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QWidget * widget () const
*/
HB_FUNC_STATIC( QGESTUREEVENT_WIDGET )
{
  QGestureEvent * obj = (QGestureEvent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QWidget * ptr = obj->widget();
      _qt5xhb_createReturnQWidgetClass( ptr, "QWIDGET" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

#pragma ENDDUMP
