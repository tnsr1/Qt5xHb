/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

CLASS QAbstract3DInputHandler INHERIT QObject

   METHOD new
   METHOD delete

   METHOD inputPosition
   METHOD inputView
   METHOD scene
   METHOD setInputPosition
   METHOD setInputView
   METHOD setScene

   METHOD onInputViewChanged
   METHOD onPositionChanged
   METHOD onSceneChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAbstract3DInputHandler
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QAbstract3DInputHandler>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QAbstract3DInputHandler>
#endif

using namespace QtDataVisualization;

/*
explicit QAbstract3DInputHandler(QObject *parent = Q_NULLPTR) (protected)
*/

/*
virtual ~QAbstract3DInputHandler()
*/
HB_FUNC_STATIC( QABSTRACT3DINPUTHANDLER_DELETE )
{
  QAbstract3DInputHandler * obj = (QAbstract3DInputHandler *) _qt5xhb_itemGetPtrStackSelfItem();

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
InputView inputView() const
*/
HB_FUNC_STATIC( QABSTRACT3DINPUTHANDLER_INPUTVIEW )
{
  QAbstract3DInputHandler * obj = (QAbstract3DInputHandler *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->inputView () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setInputView(InputView inputView)
*/
HB_FUNC_STATIC( QABSTRACT3DINPUTHANDLER_SETINPUTVIEW )
{
  QAbstract3DInputHandler * obj = (QAbstract3DInputHandler *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setInputView ( (QAbstract3DInputHandler::InputView) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QPoint inputPosition() const
*/
HB_FUNC_STATIC( QABSTRACT3DINPUTHANDLER_INPUTPOSITION )
{
  QAbstract3DInputHandler * obj = (QAbstract3DInputHandler *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QPoint * ptr = new QPoint( obj->inputPosition () );
      _qt5xhb_createReturnClass ( ptr, "QPOINT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setInputPosition(const QPoint &position)
*/
HB_FUNC_STATIC( QABSTRACT3DINPUTHANDLER_SETINPUTPOSITION )
{
  QAbstract3DInputHandler * obj = (QAbstract3DInputHandler *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQPOINT(1) )
    {
      obj->setInputPosition ( *PQPOINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
Q3DScene *scene() const
*/
HB_FUNC_STATIC( QABSTRACT3DINPUTHANDLER_SCENE )
{
  QAbstract3DInputHandler * obj = (QAbstract3DInputHandler *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      Q3DScene * ptr = obj->scene ();
      _qt5xhb_createReturnQObjectClass ( ptr, "Q3DSCENE" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setScene(Q3DScene *scene)
*/
HB_FUNC_STATIC( QABSTRACT3DINPUTHANDLER_SETSCENE )
{
  QAbstract3DInputHandler * obj = (QAbstract3DInputHandler *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQ3DSCENE(1) )
    {
      obj->setScene ( PQ3DSCENE(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void mouseDoubleClickEvent(QMouseEvent *event)
*/

/*
virtual void touchEvent(QTouchEvent *event)
*/

/*
virtual void mousePressEvent(QMouseEvent *event, const QPoint &mousePos)
*/

/*
virtual void mouseReleaseEvent(QMouseEvent *event, const QPoint &mousePos)
*/

/*
virtual void mouseMoveEvent(QMouseEvent *event, const QPoint &mousePos)
*/

/*
virtual void wheelEvent(QWheelEvent *event)
*/

/*
void setPrevDistance(int distance) (protected)
*/

/*
int prevDistance() const (protected)
*/

/*
void setPreviousInputPos(const QPoint &position) (protected)
*/

/*
QPoint previousInputPos() const (protected)
*/

#pragma ENDDUMP