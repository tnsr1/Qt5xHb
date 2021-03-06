/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSTYLE
#endif

CLASS QStylePainter INHERIT QPainter

   METHOD new
   METHOD begin
   METHOD drawPrimitive
   METHOD drawControl
   METHOD drawComplexControl
   METHOD drawItemText
   METHOD drawItemPixmap
   METHOD style

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QStylePainter
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QStylePainter>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtWidgets/QStylePainter>
#endif

/*
QStylePainter()
*/
void QStylePainter_new1()
{
  QStylePainter * o = new QStylePainter();
  _qt5xhb_returnNewObject( o, false );
}

/*
explicit QStylePainter(QWidget *w)
*/
void QStylePainter_new2()
{
  QStylePainter * o = new QStylePainter( PQWIDGET(1) );
  _qt5xhb_returnNewObject( o, false );
}

/*
QStylePainter(QPaintDevice *pd, QWidget *w)
*/
void QStylePainter_new3()
{
  QStylePainter * o = new QStylePainter( PQPAINTDEVICE(1), PQWIDGET(2) );
  _qt5xhb_returnNewObject( o, false );
}

//[1]QStylePainter()
//[2]explicit QStylePainter(QWidget *w)
//[3]QStylePainter(QPaintDevice *pd, QWidget *w)

HB_FUNC_STATIC( QSTYLEPAINTER_NEW )
{
  if( ISNUMPAR(0) )
  {
    QStylePainter_new1();
  }
  else if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    QStylePainter_new2();
  }
  else if( ISNUMPAR(2) && ISQPAINTDEVICE(1) && ISQWIDGET(2) )
  {
    QStylePainter_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool begin(QWidget *w)
*/
void QStylePainter_begin1()
{
  QStylePainter * obj = (QStylePainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->begin( PQWIDGET(1) ) );
  }
}

/*
bool begin(QPaintDevice *pd, QWidget *w)
*/
void QStylePainter_begin2()
{
  QStylePainter * obj = (QStylePainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->begin( PQPAINTDEVICE(1), PQWIDGET(2) ) );
  }
}

//[1]bool begin(QWidget *w)
//[2]bool begin(QPaintDevice *pd, QWidget *w)

HB_FUNC_STATIC( QSTYLEPAINTER_BEGIN )
{
  if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    QStylePainter_begin1();
  }
  else if( ISNUMPAR(2) && ISQPAINTDEVICE(1) && ISQWIDGET(2) )
  {
    QStylePainter_begin2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void drawPrimitive(QStyle::PrimitiveElement pe, const QStyleOption &opt)
*/
HB_FUNC_STATIC( QSTYLEPAINTER_DRAWPRIMITIVE )
{
  QStylePainter * obj = (QStylePainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISQSTYLEOPTION(2) )
    {
#endif
      obj->drawPrimitive( (QStyle::PrimitiveElement) hb_parni(1), *PQSTYLEOPTION(2) );
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
void drawControl(QStyle::ControlElement ce, const QStyleOption &opt)
*/
HB_FUNC_STATIC( QSTYLEPAINTER_DRAWCONTROL )
{
  QStylePainter * obj = (QStylePainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISQSTYLEOPTION(2) )
    {
#endif
      obj->drawControl( (QStyle::ControlElement) hb_parni(1), *PQSTYLEOPTION(2) );
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
void drawComplexControl(QStyle::ComplexControl cc, const QStyleOptionComplex &opt)
*/
HB_FUNC_STATIC( QSTYLEPAINTER_DRAWCOMPLEXCONTROL )
{
  QStylePainter * obj = (QStylePainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISQSTYLEOPTIONCOMPLEX(2) )
    {
#endif
      obj->drawComplexControl( (QStyle::ComplexControl) hb_parni(1), *PQSTYLEOPTIONCOMPLEX(2) );
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
void drawItemText(const QRect &r, int flags, const QPalette &pal, bool enabled, const QString &text, QPalette::ColorRole textRole = QPalette::NoRole)
*/
HB_FUNC_STATIC( QSTYLEPAINTER_DRAWITEMTEXT )
{
  QStylePainter * obj = (QStylePainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(5,6) && ISQRECT(1) && ISNUM(2) && ISQPALETTE(3) && ISLOG(4) && ISCHAR(5) && ISOPTNUM(6) )
    {
#endif
      obj->drawItemText( *PQRECT(1), PINT(2), *PQPALETTE(3), PBOOL(4), PQSTRING(5), ISNIL(6)? (QPalette::ColorRole) QPalette::NoRole : (QPalette::ColorRole) hb_parni(6) );
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
void drawItemPixmap(const QRect &r, int flags, const QPixmap &pixmap)
*/
HB_FUNC_STATIC( QSTYLEPAINTER_DRAWITEMPIXMAP )
{
  QStylePainter * obj = (QStylePainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && ISQRECT(1) && ISNUM(2) && ISQPIXMAP(3) )
    {
#endif
      obj->drawItemPixmap( *PQRECT(1), PINT(2), *PQPIXMAP(3) );
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
QStyle *style() const
*/
HB_FUNC_STATIC( QSTYLEPAINTER_STYLE )
{
  QStylePainter * obj = (QStylePainter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QStyle * ptr = obj->style();
      _qt5xhb_createReturnQObjectClass( ptr, "QSTYLE" );
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
