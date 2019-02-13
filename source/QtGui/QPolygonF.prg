/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOLYGON
REQUEST QRECTF
#endif

CLASS QPolygonF

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD swap
   METHOD translate
   METHOD translated
   METHOD toPolygon
   METHOD isClosed
   METHOD boundingRect
   METHOD containsPoint
   METHOD united
   METHOD intersected
   METHOD subtracted

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QPolygonF
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtGui/QPolygonF>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtGui/QPolygonF>
#endif

/*
QPolygonF()
*/
void QPolygonF_new1 ()
{
  QPolygonF * o = new QPolygonF ();
  _qt5xhb_returnNewObject( o, true );
}

/*
QPolygonF(int size)
*/
void QPolygonF_new2 ()
{
  QPolygonF * o = new QPolygonF ( PINT(1) );
  _qt5xhb_returnNewObject( o, true );
}

/*
QPolygonF(const QPolygonF &a)
*/
void QPolygonF_new3 ()
{
  QPolygonF * o = new QPolygonF ( *PQPOLYGONF(1) );
  _qt5xhb_returnNewObject( o, true );
}

/*
QPolygonF(const QVector<QPointF> &v)
*/
void QPolygonF_new4 ()
{
      QVector<QPointF> par1;
PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aList1);
for (i1=0;i1<nLen1;i1++)
{
  par1 << *(QPointF *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
}
  QPolygonF * o = new QPolygonF ( par1 );
  _qt5xhb_returnNewObject( o, true );
}

/*
QPolygonF(const QRectF &r)
*/
void QPolygonF_new5 ()
{
  QPolygonF * o = new QPolygonF ( *PQRECTF(1) );
  _qt5xhb_returnNewObject( o, true );
}

/*
QPolygonF(const QPolygon &a)
*/
void QPolygonF_new6 ()
{
  QPolygonF * o = new QPolygonF ( *PQPOLYGON(1) );
  _qt5xhb_returnNewObject( o, true );
}

//[1]QPolygonF()
//[2]QPolygonF(int size)
//[3]QPolygonF(const QPolygonF &a)
//[4]QPolygonF(const QVector<QPointF> &v)
//[5]QPolygonF(const QRectF &r)
//[6]QPolygonF(const QPolygon &a)

HB_FUNC_STATIC( QPOLYGONF_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPolygonF_new1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QPolygonF_new2();
  }
  else if( ISNUMPAR(1) && ISQPOLYGONF(1) )
  {
    QPolygonF_new3();
  }
  else if( ISNUMPAR(1) && ISARRAY(1) )
  {
    QPolygonF_new4();
  }
  else if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    QPolygonF_new5();
  }
  else if( ISNUMPAR(1) && ISQPOLYGON(1) )
  {
    QPolygonF_new6();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QPOLYGONF_DELETE )
{
  QPolygonF * obj = (QPolygonF *) _qt5xhb_itemGetPtrStackSelfItem();

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
void swap(QPolygonF &other)
*/
HB_FUNC_STATIC( QPOLYGONF_SWAP )
{
  QPolygonF * obj = (QPolygonF *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPOLYGONF(1) )
    {
#endif
      obj->swap ( *PQPOLYGONF(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void translate(qreal dx, qreal dy)
*/
void QPolygonF_translate1 ()
{
  QPolygonF * obj = (QPolygonF *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      obj->translate ( PQREAL(1), PQREAL(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void translate(const QPointF &offset)
*/
void QPolygonF_translate2 ()
{
  QPolygonF * obj = (QPolygonF *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      obj->translate ( *PQPOINTF(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void translate(qreal dx, qreal dy)
//[2]void translate(const QPointF &offset)

HB_FUNC_STATIC( QPOLYGONF_TRANSLATE )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QPolygonF_translate1();
  }
  else if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QPolygonF_translate2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QPolygonF translated(qreal dx, qreal dy) const
*/
void QPolygonF_translated1 ()
{
  QPolygonF * obj = (QPolygonF *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      QPolygonF * ptr = new QPolygonF( obj->translated ( PQREAL(1), PQREAL(2) ) );
      _qt5xhb_createReturnClass ( ptr, "QPOLYGONF", true );
  }
}

/*
QPolygonF translated(const QPointF &offset) const
*/
void QPolygonF_translated2 ()
{
  QPolygonF * obj = (QPolygonF *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      QPolygonF * ptr = new QPolygonF( obj->translated ( *PQPOINTF(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QPOLYGONF", true );
  }
}

//[1]QPolygonF translated(qreal dx, qreal dy) const
//[2]QPolygonF translated(const QPointF &offset) const

HB_FUNC_STATIC( QPOLYGONF_TRANSLATED )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QPolygonF_translated1();
  }
  else if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QPolygonF_translated2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QPolygon toPolygon() const
*/
HB_FUNC_STATIC( QPOLYGONF_TOPOLYGON )
{
  QPolygonF * obj = (QPolygonF *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QPolygon * ptr = new QPolygon( obj->toPolygon () );
      _qt5xhb_createReturnClass ( ptr, "QPOLYGON", true );
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
bool isClosed() const
*/
HB_FUNC_STATIC( QPOLYGONF_ISCLOSED )
{
  QPolygonF * obj = (QPolygonF *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isClosed () );
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
QRectF boundingRect() const
*/
HB_FUNC_STATIC( QPOLYGONF_BOUNDINGRECT )
{
  QPolygonF * obj = (QPolygonF *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QRectF * ptr = new QRectF( obj->boundingRect () );
      _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
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
bool containsPoint(const QPointF &pt, Qt::FillRule fillRule) const
*/
HB_FUNC_STATIC( QPOLYGONF_CONTAINSPOINT )
{
  QPolygonF * obj = (QPolygonF *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISQPOINTF(1) && ISNUM(2) )
    {
#endif
      RBOOL( obj->containsPoint ( *PQPOINTF(1), (Qt::FillRule) hb_parni(2) ) );
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
QPolygonF united(const QPolygonF &r) const
*/
HB_FUNC_STATIC( QPOLYGONF_UNITED )
{
  QPolygonF * obj = (QPolygonF *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPOLYGONF(1) )
    {
#endif
      QPolygonF * ptr = new QPolygonF( obj->united ( *PQPOLYGONF(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QPOLYGONF", true );
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
QPolygonF intersected(const QPolygonF &r) const
*/
HB_FUNC_STATIC( QPOLYGONF_INTERSECTED )
{
  QPolygonF * obj = (QPolygonF *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPOLYGONF(1) )
    {
#endif
      QPolygonF * ptr = new QPolygonF( obj->intersected ( *PQPOLYGONF(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QPOLYGONF", true );
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
QPolygonF subtracted(const QPolygonF &r) const
*/
HB_FUNC_STATIC( QPOLYGONF_SUBTRACTED )
{
  QPolygonF * obj = (QPolygonF *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPOLYGONF(1) )
    {
#endif
      QPolygonF * ptr = new QPolygonF( obj->subtracted ( *PQPOLYGONF(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QPOLYGONF", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

HB_FUNC_STATIC( QPOLYGONF_NEWFROM )
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

HB_FUNC_STATIC( QPOLYGONF_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QPOLYGONF_NEWFROM );
}

HB_FUNC_STATIC( QPOLYGONF_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QPOLYGONF_NEWFROM );
}

HB_FUNC_STATIC( QPOLYGONF_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QPOLYGONF_SETSELFDESTRUCTION )
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
