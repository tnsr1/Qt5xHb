/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QABSTRACTITEMMODEL
REQUEST QXYSERIES
#endif

CLASS QVXYModelMapper INHERIT QXYModelMapper

   METHOD new
   METHOD series
   METHOD setSeries
   METHOD model
   METHOD setModel
   METHOD xColumn
   METHOD setXColumn
   METHOD yColumn
   METHOD setYColumn
   METHOD firstRow
   METHOD setFirstRow
   METHOD rowCount
   METHOD setRowCount

   METHOD onFirstRowChanged
   METHOD onModelReplaced
   METHOD onRowCountChanged
   METHOD onSeriesReplaced
   METHOD onXColumnChanged
   METHOD onYColumnChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QVXYModelMapper
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QVXYModelMapper>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QVXYModelMapper>
#endif
#endif

#include <QXYSeries>
#include <QAbstractItemModel>

using namespace QtCharts;

/*
explicit QVXYModelMapper(QObject *parent = Q_NULLPTR)
*/
HB_FUNC_STATIC( QVXYMODELMAPPER_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QVXYModelMapper * o = new QVXYModelMapper ( OPQOBJECT(1,Q_NULLPTR) );
    _qt5xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
QXYSeries *series() const
*/
HB_FUNC_STATIC( QVXYMODELMAPPER_SERIES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QVXYModelMapper * obj = (QVXYModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QXYSeries * ptr = obj->series ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QXYSERIES" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setSeries(QXYSeries *series)
*/
HB_FUNC_STATIC( QVXYMODELMAPPER_SETSERIES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QVXYModelMapper * obj = (QVXYModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQXYSERIES(1) )
    {
      obj->setSeries ( PQXYSERIES(1) );
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
QAbstractItemModel *model() const
*/
HB_FUNC_STATIC( QVXYMODELMAPPER_MODEL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QVXYModelMapper * obj = (QVXYModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QAbstractItemModel * ptr = obj->model ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QABSTRACTITEMMODEL" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setModel(QAbstractItemModel *model)
*/
HB_FUNC_STATIC( QVXYMODELMAPPER_SETMODEL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QVXYModelMapper * obj = (QVXYModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQABSTRACTITEMMODEL(1) )
    {
      obj->setModel ( PQABSTRACTITEMMODEL(1) );
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
int xColumn() const
*/
HB_FUNC_STATIC( QVXYMODELMAPPER_XCOLUMN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QVXYModelMapper * obj = (QVXYModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->xColumn () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setXColumn(int xColumn)
*/
HB_FUNC_STATIC( QVXYMODELMAPPER_SETXCOLUMN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QVXYModelMapper * obj = (QVXYModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setXColumn ( PINT(1) );
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
int yColumn() const
*/
HB_FUNC_STATIC( QVXYMODELMAPPER_YCOLUMN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QVXYModelMapper * obj = (QVXYModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->yColumn () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setYColumn(int yColumn)
*/
HB_FUNC_STATIC( QVXYMODELMAPPER_SETYCOLUMN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QVXYModelMapper * obj = (QVXYModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setYColumn ( PINT(1) );
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
int firstRow() const
*/
HB_FUNC_STATIC( QVXYMODELMAPPER_FIRSTROW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QVXYModelMapper * obj = (QVXYModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->firstRow () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setFirstRow(int firstRow)
*/
HB_FUNC_STATIC( QVXYMODELMAPPER_SETFIRSTROW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QVXYModelMapper * obj = (QVXYModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setFirstRow ( PINT(1) );
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
int rowCount() const
*/
HB_FUNC_STATIC( QVXYMODELMAPPER_ROWCOUNT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QVXYModelMapper * obj = (QVXYModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->rowCount () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setRowCount(int rowCount)
*/
HB_FUNC_STATIC( QVXYMODELMAPPER_SETROWCOUNT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QVXYModelMapper * obj = (QVXYModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setRowCount ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

void QVXYModelMapperSlots_connect_signal ( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QVXYMODELMAPPER_ONFIRSTROWCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QVXYModelMapperSlots_connect_signal( "firstRowChanged()", "firstRowChanged()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QVXYMODELMAPPER_ONMODELREPLACED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QVXYModelMapperSlots_connect_signal( "modelReplaced()", "modelReplaced()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QVXYMODELMAPPER_ONROWCOUNTCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QVXYModelMapperSlots_connect_signal( "rowCountChanged()", "rowCountChanged()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QVXYMODELMAPPER_ONSERIESREPLACED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QVXYModelMapperSlots_connect_signal( "seriesReplaced()", "seriesReplaced()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QVXYMODELMAPPER_ONXCOLUMNCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QVXYModelMapperSlots_connect_signal( "xColumnChanged()", "xColumnChanged()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QVXYMODELMAPPER_ONYCOLUMNCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QVXYModelMapperSlots_connect_signal( "yColumnChanged()", "yColumnChanged()" );
#else
  hb_retl( false );
#endif
}

#pragma ENDDUMP
