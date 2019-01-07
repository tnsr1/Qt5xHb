/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECT
REQUEST QRECTF
REQUEST QSIZE
REQUEST QSIZEF
#endif

CLASS QPageSize

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD swap
   METHOD isEquivalentTo
   METHOD isValid
   METHOD key
   METHOD name
   METHOD id
   METHOD windowsId
   METHOD definitionSize
   METHOD definitionUnits
   METHOD size
   METHOD sizePoints
   METHOD sizePixels
   METHOD rect
   METHOD rectPoints
   METHOD rectPixels

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QPageSize
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
#include <QPageSize>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
#include <QPageSize>
#endif
#endif

#include <QSize>
#include <QRectF>

/*
QPageSize()
*/
void QPageSize_new1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QPageSize * o = new QPageSize ();
  _qt5xhb_returnNewObject( o, true );
#endif
}

/*
explicit QPageSize(PageSizeId pageSizeId)
*/
void QPageSize_new2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QPageSize * o = new QPageSize ( (QPageSize::PageSizeId) hb_parni(1) );
  _qt5xhb_returnNewObject( o, true );
#endif
}

/*
explicit QPageSize(const QSize &pointSize, const QString &name = QString(), SizeMatchPolicy matchPolicy = FuzzyMatch)
*/
void QPageSize_new3 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QPageSize * o = new QPageSize ( *PQSIZE(1), OPQSTRING(2,QString()), ISNIL(3)? (QPageSize::SizeMatchPolicy) QPageSize::FuzzyMatch : (QPageSize::SizeMatchPolicy) hb_parni(3) );
  _qt5xhb_returnNewObject( o, true );
#endif
}

/*
explicit QPageSize(const QSizeF &size, Unit units, const QString &name = QString(), SizeMatchPolicy matchPolicy = FuzzyMatch)
*/
void QPageSize_new4 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QPageSize * o = new QPageSize ( *PQSIZEF(1), (QPageSize::Unit) hb_parni(2), OPQSTRING(3,QString()), ISNIL(4)? (QPageSize::SizeMatchPolicy) QPageSize::FuzzyMatch : (QPageSize::SizeMatchPolicy) hb_parni(4) );
  _qt5xhb_returnNewObject( o, true );
#endif
}

/*
QPageSize(const QPageSize &other)
*/
void QPageSize_new5 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QPageSize * o = new QPageSize ( *PQPAGESIZE(1) );
  _qt5xhb_returnNewObject( o, true );
#endif
}

//[1]QPageSize()
//[2]explicit QPageSize(PageSizeId pageSizeId)
//[3]explicit QPageSize(const QSize &pointSize, const QString &name = QString(), SizeMatchPolicy matchPolicy = FuzzyMatch)
//[4]explicit QPageSize(const QSizeF &size, Unit units, const QString &name = QString(), SizeMatchPolicy matchPolicy = FuzzyMatch)
//[5]QPageSize(const QPageSize &other)

HB_FUNC_STATIC( QPAGESIZE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPageSize_new1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QPageSize_new2();
  }
  else if( ISBETWEEN(1,3) && ISQSIZE(1) && ISOPTCHAR(2) && ISOPTNUM(3) )
  {
    QPageSize_new3();
  }
  else if( ISBETWEEN(2,4) && ISQSIZEF(1) && ISNUM(2) && ISOPTCHAR(3) && ISOPTNUM(4) )
  {
    QPageSize_new4();
  }
  else if( ISNUMPAR(1) && ISQPAGESIZE(1) )
  {
    QPageSize_new5();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QPAGESIZE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QPageSize * obj = (QPageSize *) _qt5xhb_itemGetPtrStackSelfItem();

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
void swap(QPageSize &other)
*/
HB_FUNC_STATIC( QPAGESIZE_SWAP )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QPageSize * obj = (QPageSize *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPAGESIZE(1) )
    {
#endif
      obj->swap ( *PQPAGESIZE(1) );
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
bool isEquivalentTo(const QPageSize &other) const
*/
HB_FUNC_STATIC( QPAGESIZE_ISEQUIVALENTTO )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QPageSize * obj = (QPageSize *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPAGESIZE(1) )
    {
#endif
      RBOOL( obj->isEquivalentTo ( *PQPAGESIZE(1) ) );
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
bool isValid() const
*/
HB_FUNC_STATIC( QPAGESIZE_ISVALID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QPageSize * obj = (QPageSize *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isValid () );
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
QString key() const
*/
void QPageSize_key1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QPageSize * obj = (QPageSize *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      RQSTRING( obj->key () );
  }
#endif
}

/*
static QString key(PageSizeId pageSizeId)
*/
void QPageSize_key2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))

      RQSTRING( QPageSize::key ( (QPageSize::PageSizeId) hb_parni(1) ) );
#endif
}

//[1]QString key() const
//[2]static QString key(PageSizeId pageSizeId)

HB_FUNC_STATIC( QPAGESIZE_KEY )
{
  if( ISNUMPAR(0) )
  {
    QPageSize_key1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QPageSize_key2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QString name() const
*/
void QPageSize_name1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QPageSize * obj = (QPageSize *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      RQSTRING( obj->name () );
  }
#endif
}

/*
static QString name(PageSizeId pageSizeId)
*/
void QPageSize_name2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))

      RQSTRING( QPageSize::name ( (QPageSize::PageSizeId) hb_parni(1) ) );
#endif
}

//[1]QString name() const
//[2]static QString name(PageSizeId pageSizeId)

HB_FUNC_STATIC( QPAGESIZE_NAME )
{
  if( ISNUMPAR(0) )
  {
    QPageSize_name1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QPageSize_name2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
PageSizeId id() const
*/
void QPageSize_id1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QPageSize * obj = (QPageSize *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      RENUM( obj->id () );
  }
#endif
}

/*
static PageSizeId id(const QSize &pointSize, SizeMatchPolicy matchPolicy = FuzzyMatch)
*/
void QPageSize_id2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))

      RENUM( QPageSize::id ( *PQSIZE(1), ISNIL(2)? (QPageSize::SizeMatchPolicy) QPageSize::FuzzyMatch : (QPageSize::SizeMatchPolicy) hb_parni(2) ) );
#endif
}

/*
static PageSizeId id(const QSizeF &size, Unit units, SizeMatchPolicy matchPolicy = FuzzyMatch)
*/
void QPageSize_id3 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))

      RENUM( QPageSize::id ( *PQSIZEF(1), (QPageSize::Unit) hb_parni(2), ISNIL(3)? (QPageSize::SizeMatchPolicy) QPageSize::FuzzyMatch : (QPageSize::SizeMatchPolicy) hb_parni(3) ) );
#endif
}

/*
static PageSizeId id(int windowsId)
*/
void QPageSize_id4 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))

      RENUM( QPageSize::id ( PINT(1) ) );
#endif
}

//[1]PageSizeId id() const
//[2]static PageSizeId id(const QSize &pointSize, SizeMatchPolicy matchPolicy = FuzzyMatch)
//[3]static PageSizeId id(const QSizeF &size, Unit units, SizeMatchPolicy matchPolicy = FuzzyMatch)
//[4]static PageSizeId id(int windowsId)

HB_FUNC_STATIC( QPAGESIZE_ID )
{
  if( ISNUMPAR(0) )
  {
    QPageSize_id1();
  }
  else if( ISBETWEEN(1,2) && ISQSIZE(1) && ISOPTNUM(2) )
  {
    QPageSize_id2();
  }
  else if( ISBETWEEN(2,3) && ISQSIZEF(1) && ISNUM(2) && ISOPTNUM(3) )
  {
    QPageSize_id3();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QPageSize_id4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
int windowsId() const
*/
void QPageSize_windowsId1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QPageSize * obj = (QPageSize *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      RINT( obj->windowsId () );
  }
#endif
}

/*
static int windowsId(PageSizeId pageSizeId)
*/
void QPageSize_windowsId2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))

      RINT( QPageSize::windowsId ( (QPageSize::PageSizeId) hb_parni(1) ) );
#endif
}

//[1]int windowsId() const
//[2]static int windowsId(PageSizeId pageSizeId)

HB_FUNC_STATIC( QPAGESIZE_WINDOWSID )
{
  if( ISNUMPAR(0) )
  {
    QPageSize_windowsId1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QPageSize_windowsId2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QSizeF definitionSize() const
*/
void QPageSize_definitionSize1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QPageSize * obj = (QPageSize *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      QSizeF * ptr = new QSizeF( obj->definitionSize () );
      _qt5xhb_createReturnClass ( ptr, "QSIZEF", true );
  }
#endif
}

/*
static QSizeF definitionSize(PageSizeId pageSizeId)
*/
void QPageSize_definitionSize2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))

      QSizeF * ptr = new QSizeF( QPageSize::definitionSize ( (QPageSize::PageSizeId) hb_parni(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QSIZEF", true );
#endif
}

//[1]QSizeF definitionSize() const
//[2]static QSizeF definitionSize(PageSizeId pageSizeId)

HB_FUNC_STATIC( QPAGESIZE_DEFINITIONSIZE )
{
  if( ISNUMPAR(0) )
  {
    QPageSize_definitionSize1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QPageSize_definitionSize2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
Unit definitionUnits() const
*/
void QPageSize_definitionUnits1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QPageSize * obj = (QPageSize *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      RENUM( obj->definitionUnits () );
  }
#endif
}

/*
static Unit definitionUnits(PageSizeId pageSizeId)
*/
void QPageSize_definitionUnits2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))

      RENUM( QPageSize::definitionUnits ( (QPageSize::PageSizeId) hb_parni(1) ) );
#endif
}

//[1]Unit definitionUnits() const
//[2]static Unit definitionUnits(PageSizeId pageSizeId)

HB_FUNC_STATIC( QPAGESIZE_DEFINITIONUNITS )
{
  if( ISNUMPAR(0) )
  {
    QPageSize_definitionUnits1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QPageSize_definitionUnits2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QSizeF size(Unit units) const
*/
void QPageSize_size1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QPageSize * obj = (QPageSize *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      QSizeF * ptr = new QSizeF( obj->size ( (QPageSize::Unit) hb_parni(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QSIZEF", true );
  }
#endif
}

/*
static QSizeF size(PageSizeId pageSizeId, Unit units)
*/
void QPageSize_size2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))

      QSizeF * ptr = new QSizeF( QPageSize::size ( (QPageSize::PageSizeId) hb_parni(1), (QPageSize::Unit) hb_parni(2) ) );
      _qt5xhb_createReturnClass ( ptr, "QSIZEF", true );
#endif
}

//[1]QSizeF size(Unit units) const
//[2]static QSizeF size(PageSizeId pageSizeId, Unit units)

HB_FUNC_STATIC( QPAGESIZE_SIZE )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QPageSize_size1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QPageSize_size2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QSize sizePoints() const
*/
void QPageSize_sizePoints1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QPageSize * obj = (QPageSize *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      QSize * ptr = new QSize( obj->sizePoints () );
      _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
#endif
}

/*
static QSize sizePoints(PageSizeId pageSizeId)
*/
void QPageSize_sizePoints2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))

      QSize * ptr = new QSize( QPageSize::sizePoints ( (QPageSize::PageSizeId) hb_parni(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
#endif
}

//[1]QSize sizePoints() const
//[2]static QSize sizePoints(PageSizeId pageSizeId)

HB_FUNC_STATIC( QPAGESIZE_SIZEPOINTS )
{
  if( ISNUMPAR(0) )
  {
    QPageSize_sizePoints1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QPageSize_sizePoints2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QSize sizePixels(int resolution) const
*/
void QPageSize_sizePixels1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QPageSize * obj = (QPageSize *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      QSize * ptr = new QSize( obj->sizePixels ( PINT(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
#endif
}

/*
static QSize sizePixels(PageSizeId pageSizeId, int resolution)
*/
void QPageSize_sizePixels2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))

      QSize * ptr = new QSize( QPageSize::sizePixels ( (QPageSize::PageSizeId) hb_parni(1), PINT(2) ) );
      _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
#endif
}

//[1]QSize sizePixels(int resolution) const
//[2]static QSize sizePixels(PageSizeId pageSizeId, int resolution)

HB_FUNC_STATIC( QPAGESIZE_SIZEPIXELS )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QPageSize_sizePixels1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QPageSize_sizePixels2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QRectF rect(Unit units) const
*/
HB_FUNC_STATIC( QPAGESIZE_RECT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QPageSize * obj = (QPageSize *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      QRectF * ptr = new QRectF( obj->rect ( (QPageSize::Unit) hb_parni(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
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
QRect rectPoints() const
*/
HB_FUNC_STATIC( QPAGESIZE_RECTPOINTS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QPageSize * obj = (QPageSize *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QRect * ptr = new QRect( obj->rectPoints () );
      _qt5xhb_createReturnClass ( ptr, "QRECT", true );
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
QRect rectPixels(int resolution) const
*/
HB_FUNC_STATIC( QPAGESIZE_RECTPIXELS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QPageSize * obj = (QPageSize *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      QRect * ptr = new QRect( obj->rectPixels ( PINT(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QRECT", true );
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

HB_FUNC_STATIC( QPAGESIZE_NEWFROM )
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

HB_FUNC_STATIC( QPAGESIZE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QPAGESIZE_NEWFROM );
}

HB_FUNC_STATIC( QPAGESIZE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QPAGESIZE_NEWFROM );
}

HB_FUNC_STATIC( QPAGESIZE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QPAGESIZE_SETSELFDESTRUCTION )
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
