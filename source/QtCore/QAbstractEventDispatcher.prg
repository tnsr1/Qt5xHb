/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

CLASS QAbstractEventDispatcher INHERIT QObject

   METHOD delete
   METHOD filterNativeEvent
   METHOD flush
   METHOD hasPendingEvents
   METHOD installNativeEventFilter
   METHOD interrupt
   METHOD processEvents
   METHOD registerEventNotifier
   METHOD registerSocketNotifier
   METHOD registerTimer
   METHOD remainingTime
   METHOD removeNativeEventFilter
   METHOD unregisterEventNotifier
   METHOD unregisterSocketNotifier
   METHOD unregisterTimer
   METHOD unregisterTimers
   METHOD wakeUp
   METHOD instance
   METHOD startingUp
   METHOD closingDown

   METHOD onAboutToBlock
   METHOD onAwake

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAbstractEventDispatcher
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QAbstractEventDispatcher>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QAbstractEventDispatcher>
#endif

HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_DELETE )
{
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) _qt5xhb_itemGetPtrStackSelfItem();

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
bool filterNativeEvent(const QByteArray & eventType, void * message, long * result)
*/
HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_FILTERNATIVEEVENT )
{
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(3) && ISQBYTEARRAY(1) && ISPOINTER(2) && ISNUM(3) )
    {
      long par3;
      RBOOL( obj->filterNativeEvent ( *PQBYTEARRAY(1), (void *) hb_parptr(2), &par3 ) );
      hb_stornl( par3, 3 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual void flush () = 0
*/
HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_FLUSH )
{
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->flush ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual bool hasPendingEvents () = 0
*/
HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_HASPENDINGEVENTS )
{
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->hasPendingEvents () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void installNativeEventFilter(QAbstractNativeEventFilter * filterObj)
*/
HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_INSTALLNATIVEEVENTFILTER )
{
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQABSTRACTNATIVEEVENTFILTER(1) )
    {
      obj->installNativeEventFilter ( PQABSTRACTNATIVEEVENTFILTER(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void interrupt () = 0
*/
HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_INTERRUPT )
{
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->interrupt ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual bool processEvents ( QEventLoop::ProcessEventsFlags flags ) = 0
*/
HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_PROCESSEVENTS )
{
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      RBOOL( obj->processEvents ( (QEventLoop::ProcessEventsFlags) hb_parni(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual bool registerEventNotifier(QWinEventNotifier * notifier) = 0
*/
HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_REGISTEREVENTNOTIFIER )
{
#ifdef Q_OS_WIN
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQWINEVENTNOTIFIER(1) )
    {
      RBOOL( obj->registerEventNotifier ( PQWINEVENTNOTIFIER(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
virtual void registerSocketNotifier ( QSocketNotifier * notifier ) = 0
*/
HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_REGISTERSOCKETNOTIFIER )
{
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQSOCKETNOTIFIER(1) )
    {
      obj->registerSocketNotifier ( PQSOCKETNOTIFIER(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int registerTimer(int interval, Qt::TimerType timerType, QObject * object)
*/
void QAbstractEventDispatcher_registerTimer1 ()
{
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      RINT( obj->registerTimer ( PINT(1), (Qt::TimerType) hb_parni(2), PQOBJECT(3) ) );
  }
}

/*
virtual void registerTimer(int timerId, int interval, Qt::TimerType timerType, QObject * object) = 0
*/
void QAbstractEventDispatcher_registerTimer2 ()
{
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      obj->registerTimer ( PINT(1), PINT(2), (Qt::TimerType) hb_parni(3), PQOBJECT(4) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]int registerTimer(int interval, Qt::TimerType timerType, QObject * object)
//[2]virtual void registerTimer(int timerId, int interval, Qt::TimerType timerType, QObject * object) = 0

HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_REGISTERTIMER )
{
  if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISQOBJECT(3) )
  {
    QAbstractEventDispatcher_registerTimer1();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISQOBJECT(4) )
  {
    QAbstractEventDispatcher_registerTimer2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual int remainingTime(int timerId) = 0
*/
HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_REMAININGTIME )
{
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      RINT( obj->remainingTime ( PINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void removeNativeEventFilter(QAbstractNativeEventFilter * filter)
*/
HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_REMOVENATIVEEVENTFILTER )
{
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQABSTRACTNATIVEEVENTFILTER(1) )
    {
      obj->removeNativeEventFilter ( PQABSTRACTNATIVEEVENTFILTER(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void unregisterEventNotifier(QWinEventNotifier * notifier) = 0
*/
HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_UNREGISTEREVENTNOTIFIER )
{
#ifdef Q_OS_WIN
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQWINEVENTNOTIFIER(1) )
    {
      obj->unregisterEventNotifier ( PQWINEVENTNOTIFIER(1) );
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
virtual void unregisterSocketNotifier ( QSocketNotifier * notifier ) = 0
*/
HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_UNREGISTERSOCKETNOTIFIER )
{
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQSOCKETNOTIFIER(1) )
    {
      obj->unregisterSocketNotifier ( PQSOCKETNOTIFIER(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual bool unregisterTimer ( int timerId ) = 0
*/
HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_UNREGISTERTIMER )
{
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      RBOOL( obj->unregisterTimer ( PINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual bool unregisterTimers ( QObject * object ) = 0
*/
HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_UNREGISTERTIMERS )
{
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQOBJECT(1) )
    {
      RBOOL( obj->unregisterTimers ( PQOBJECT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual void wakeUp () = 0
*/
HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_WAKEUP )
{
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->wakeUp ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static QAbstractEventDispatcher * instance ( QThread * thread = 0 )
*/
HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_INSTANCE )
{
    if( ISBETWEEN(0,1) && (ISQTHREAD(1)||ISNIL(1)) )
  {
      QAbstractEventDispatcher * ptr = QAbstractEventDispatcher::instance ( OPQTHREAD(1,0) );
      _qt5xhb_createReturnQObjectClass ( ptr, "QABSTRACTEVENTDISPATCHER" );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual void startingUp()
*/
HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_STARTINGUP )
{
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->startingUp ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void closingDown()
*/
HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_CLOSINGDOWN )
{
  QAbstractEventDispatcher * obj = (QAbstractEventDispatcher *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->closingDown ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

void QAbstractEventDispatcherSlots_connect_signal ( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_ONABOUTTOBLOCK )
{
  QAbstractEventDispatcherSlots_connect_signal( "aboutToBlock()", "aboutToBlock()" );
}

HB_FUNC_STATIC( QABSTRACTEVENTDISPATCHER_ONAWAKE )
{
  QAbstractEventDispatcherSlots_connect_signal( "awake()", "awake()" );
}

#pragma ENDDUMP
