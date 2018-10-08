/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBRUSH
REQUEST QCOLOR
REQUEST QFONT
REQUEST QLEGENDMARKER
REQUEST QPEN
#endif

CLASS QLegend INHERIT QGraphicsWidget

   METHOD delete
   METHOD alignment
   METHOD isBackgroundVisible
   METHOD setBackgroundVisible
   METHOD color
   METHOD setColor
   METHOD borderColor
   METHOD setBorderColor
   METHOD font
   METHOD setFont
   METHOD labelColor
   METHOD setLabelColor
   METHOD reverseMarkers
   METHOD setReverseMarkers
   METHOD showToolTips
   METHOD setShowToolTips
   METHOD markerShape
   METHOD setMarkerShape
   METHOD paint
   METHOD setBrush
   METHOD brush
   METHOD setPen
   METHOD pen
   METHOD setLabelBrush
   METHOD labelBrush
   METHOD setAlignment
   METHOD detachFromChart
   METHOD attachToChart
   METHOD isAttachedToChart
   METHOD markers

   METHOD onBackgroundVisibleChanged
   METHOD onBorderColorChanged
   METHOD onColorChanged
   METHOD onFontChanged
   METHOD onLabelColorChanged
   METHOD onMarkerShapeChanged
   METHOD onReverseMarkersChanged
   METHOD onShowToolTipsChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QLegend
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QLegend>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QLegend>
#endif
#endif

using namespace QtCharts;

/*
explicit QLegend(QChart *chart) (private)
*/

/*
~QLegend()
*/
HB_FUNC_STATIC( QLEGEND_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QLegend * obj = (QLegend *) _qt5xhb_itemGetPtrStackSelfItem();

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
Qt::Alignment alignment() const
*/
HB_FUNC_STATIC( QLEGEND_ALIGNMENT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QLegend * obj = (QLegend *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->alignment () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
bool isBackgroundVisible() const
*/
HB_FUNC_STATIC( QLEGEND_ISBACKGROUNDVISIBLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QLegend * obj = (QLegend *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isBackgroundVisible () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setBackgroundVisible(bool visible = true)
*/
HB_FUNC_STATIC( QLEGEND_SETBACKGROUNDVISIBLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QLegend * obj = (QLegend *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(0,1) && ISOPTLOG(1) )
    {
      obj->setBackgroundVisible ( OPBOOL(1,true) );
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
QColor color()
*/
HB_FUNC_STATIC( QLEGEND_COLOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QLegend * obj = (QLegend *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QColor * ptr = new QColor( obj->color () );
      _qt5xhb_createReturnClass ( ptr, "QCOLOR", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setColor(QColor color)
*/
HB_FUNC_STATIC( QLEGEND_SETCOLOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QLegend * obj = (QLegend *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQCOLOR(1) )
    {
      obj->setColor ( *PQCOLOR(1) );
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
QColor borderColor()
*/
HB_FUNC_STATIC( QLEGEND_BORDERCOLOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QLegend * obj = (QLegend *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QColor * ptr = new QColor( obj->borderColor () );
      _qt5xhb_createReturnClass ( ptr, "QCOLOR", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setBorderColor(QColor color)
*/
HB_FUNC_STATIC( QLEGEND_SETBORDERCOLOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QLegend * obj = (QLegend *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQCOLOR(1) )
    {
      obj->setBorderColor ( *PQCOLOR(1) );
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
QFont font() const
*/
HB_FUNC_STATIC( QLEGEND_FONT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QLegend * obj = (QLegend *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QFont * ptr = new QFont( obj->font () );
      _qt5xhb_createReturnClass ( ptr, "QFONT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setFont(const QFont &font)
*/
HB_FUNC_STATIC( QLEGEND_SETFONT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QLegend * obj = (QLegend *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQFONT(1) )
    {
      obj->setFont ( *PQFONT(1) );
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
QColor labelColor() const
*/
HB_FUNC_STATIC( QLEGEND_LABELCOLOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QLegend * obj = (QLegend *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QColor * ptr = new QColor( obj->labelColor () );
      _qt5xhb_createReturnClass ( ptr, "QCOLOR", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setLabelColor(QColor color)
*/
HB_FUNC_STATIC( QLEGEND_SETLABELCOLOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QLegend * obj = (QLegend *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQCOLOR(1) )
    {
      obj->setLabelColor ( *PQCOLOR(1) );
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
bool reverseMarkers()
*/
HB_FUNC_STATIC( QLEGEND_REVERSEMARKERS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QLegend * obj = (QLegend *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->reverseMarkers () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setReverseMarkers(bool reverseMarkers = true)
*/
HB_FUNC_STATIC( QLEGEND_SETREVERSEMARKERS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QLegend * obj = (QLegend *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(0,1) && ISOPTLOG(1) )
    {
      obj->setReverseMarkers ( OPBOOL(1,true) );
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
bool showToolTips() const
*/
HB_FUNC_STATIC( QLEGEND_SHOWTOOLTIPS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QLegend * obj = (QLegend *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->showToolTips () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setShowToolTips(bool show)
*/
HB_FUNC_STATIC( QLEGEND_SETSHOWTOOLTIPS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QLegend * obj = (QLegend *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setShowToolTips ( PBOOL(1) );
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
MarkerShape markerShape() const
*/
HB_FUNC_STATIC( QLEGEND_MARKERSHAPE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QLegend * obj = (QLegend *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->markerShape () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setMarkerShape(MarkerShape shape)
*/
HB_FUNC_STATIC( QLEGEND_SETMARKERSHAPE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QLegend * obj = (QLegend *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setMarkerShape ( (QLegend::MarkerShape) hb_parni(1) );
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
void paint(QPainter *painter, const QStyleOptionGraphicsItem *option, QWidget *widget = Q_NULLPTR)
*/
HB_FUNC_STATIC( QLEGEND_PAINT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QLegend * obj = (QLegend *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(2,3) && ISQPAINTER(1) && ISQSTYLEOPTIONGRAPHICSITEM(2) && (ISQWIDGET(3)||ISNIL(3)) )
    {
      obj->paint ( PQPAINTER(1), PQSTYLEOPTIONGRAPHICSITEM(2), OPQWIDGET(3,Q_NULLPTR) );
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
void setBrush(const QBrush &brush)
*/
HB_FUNC_STATIC( QLEGEND_SETBRUSH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QLegend * obj = (QLegend *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQBRUSH(1) )
    {
      obj->setBrush ( *PQBRUSH(1) );
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
QBrush brush() const
*/
HB_FUNC_STATIC( QLEGEND_BRUSH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QLegend * obj = (QLegend *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QBrush * ptr = new QBrush( obj->brush () );
      _qt5xhb_createReturnClass ( ptr, "QBRUSH", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setPen(const QPen &pen)
*/
HB_FUNC_STATIC( QLEGEND_SETPEN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QLegend * obj = (QLegend *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQPEN(1) )
    {
      obj->setPen ( *PQPEN(1) );
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
QPen pen() const
*/
HB_FUNC_STATIC( QLEGEND_PEN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QLegend * obj = (QLegend *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QPen * ptr = new QPen( obj->pen () );
      _qt5xhb_createReturnClass ( ptr, "QPEN", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setLabelBrush(const QBrush &brush)
*/
HB_FUNC_STATIC( QLEGEND_SETLABELBRUSH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QLegend * obj = (QLegend *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQBRUSH(1) )
    {
      obj->setLabelBrush ( *PQBRUSH(1) );
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
QBrush labelBrush() const
*/
HB_FUNC_STATIC( QLEGEND_LABELBRUSH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QLegend * obj = (QLegend *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QBrush * ptr = new QBrush( obj->labelBrush () );
      _qt5xhb_createReturnClass ( ptr, "QBRUSH", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setAlignment(Qt::Alignment alignment)
*/
HB_FUNC_STATIC( QLEGEND_SETALIGNMENT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QLegend * obj = (QLegend *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setAlignment ( (Qt::Alignment) hb_parni(1) );
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
void detachFromChart()
*/
HB_FUNC_STATIC( QLEGEND_DETACHFROMCHART )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QLegend * obj = (QLegend *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->detachFromChart ();
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
void attachToChart()
*/
HB_FUNC_STATIC( QLEGEND_ATTACHTOCHART )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QLegend * obj = (QLegend *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->attachToChart ();
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
bool isAttachedToChart()
*/
HB_FUNC_STATIC( QLEGEND_ISATTACHEDTOCHART )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QLegend * obj = (QLegend *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isAttachedToChart () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
QList <QLegendMarker*> markers(QAbstractSeries *series = Q_NULLPTR) const
*/
HB_FUNC_STATIC( QLEGEND_MARKERS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QLegend * obj = (QLegend *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(0,1) && (ISQABSTRACTSERIES(1)||ISNIL(1)) )
    {
      QList<QLegendMarker *> list = obj->markers ( OPQABSTRACTSERIES(1,Q_NULLPTR) );
      PHB_DYNS pDynSym = hb_dynsymFindName( "QLEGENDMARKER" );
      PHB_ITEM pArray = hb_itemArrayNew(0);
      int i;
      for(i=0;i<list.count();i++)
      {
        if( pDynSym )
        {
          hb_vmPushDynSym( pDynSym );
          hb_vmPushNil();
          hb_vmDo( 0 );
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( NULL );
          hb_itemPutPtr( pItem, (QLegendMarker *) list[i] );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
        else
        {
          hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QLEGENDMARKER", HB_ERR_ARGS_BASEPARAMS );
        }
      }
      hb_itemReturnRelease(pArray);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void hideEvent(QHideEvent *event) (protected)
*/

/*
void showEvent(QShowEvent *event) (protected)
*/

void QLegendSlots_connect_signal ( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QLEGEND_ONBACKGROUNDVISIBLECHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QLegendSlots_connect_signal( "backgroundVisibleChanged(bool)", "backgroundVisibleChanged(bool)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QLEGEND_ONBORDERCOLORCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QLegendSlots_connect_signal( "borderColorChanged(QColor)", "borderColorChanged(QColor)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QLEGEND_ONCOLORCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QLegendSlots_connect_signal( "colorChanged(QColor)", "colorChanged(QColor)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QLEGEND_ONFONTCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QLegendSlots_connect_signal( "fontChanged(QFont)", "fontChanged(QFont)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QLEGEND_ONLABELCOLORCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QLegendSlots_connect_signal( "labelColorChanged(QColor)", "labelColorChanged(QColor)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QLEGEND_ONMARKERSHAPECHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QLegendSlots_connect_signal( "markerShapeChanged(QLegend::MarkerShape)", "markerShapeChanged(QLegend::MarkerShape)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QLEGEND_ONREVERSEMARKERSCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QLegendSlots_connect_signal( "reverseMarkersChanged(bool)", "reverseMarkersChanged(bool)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QLEGEND_ONSHOWTOOLTIPSCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QLegendSlots_connect_signal( "showToolTipsChanged(bool)", "showToolTipsChanged(bool)" );
#else
  hb_retl( false );
#endif
}

#pragma ENDDUMP
