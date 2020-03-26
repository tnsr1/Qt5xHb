/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBYTEARRAY
REQUEST QSIZE
#endif

CLASS QHeaderView INHERIT QAbstractItemView

   METHOD new
   METHOD delete
   METHOD cascadingSectionResizes
   METHOD setCascadingSectionResizes
   METHOD count
   METHOD defaultAlignment
   METHOD setDefaultAlignment
   METHOD defaultSectionSize
   METHOD setDefaultSectionSize
   METHOD hiddenSectionCount
   METHOD hideSection
   METHOD highlightSections
   METHOD setHighlightSections
   METHOD isSectionHidden
   METHOD isSortIndicatorShown
   METHOD setSortIndicatorShown
   METHOD length
   METHOD logicalIndex
   METHOD logicalIndexAt
   METHOD minimumSectionSize
   METHOD setMinimumSectionSize
   METHOD moveSection
   METHOD offset
   METHOD orientation
   METHOD resizeSection
   METHOD resizeSections
   METHOD restoreState
   METHOD saveState
   METHOD sectionPosition
   METHOD sectionSize
   METHOD sectionSizeHint
   METHOD sectionViewportPosition
   METHOD sectionsHidden
   METHOD sectionsMoved
   METHOD setSectionHidden
   METHOD setSortIndicator
   METHOD stretchLastSection
   METHOD setStretchLastSection
   METHOD showSection
   METHOD sortIndicatorOrder
   METHOD sortIndicatorSection
   METHOD stretchSectionCount
   METHOD swapSections
   METHOD visualIndex
   METHOD visualIndexAt
   METHOD reset
   METHOD setModel
   METHOD sizeHint
   METHOD headerDataChanged
   METHOD setOffset
   METHOD setOffsetToLastSection
   METHOD setOffsetToSectionPosition
   METHOD setVisible
   METHOD setSectionsMovable
   METHOD sectionsMovable
   METHOD setSectionsClickable
   METHOD sectionsClickable
   METHOD sectionResizeMode
   METHOD setSectionResizeMode
   METHOD setResizeContentsPrecision
   METHOD resizeContentsPrecision
   METHOD maximumSectionSize
   METHOD setMaximumSectionSize
   METHOD doItemsLayout

   METHOD onGeometriesChanged
   METHOD onSectionAutoResize
   METHOD onSectionClicked
   METHOD onSectionCountChanged
   METHOD onSectionDoubleClicked
   METHOD onSectionEntered
   METHOD onSectionHandleDoubleClicked
   METHOD onSectionMoved
   METHOD onSectionPressed
   METHOD onSectionResized
   METHOD onSortIndicatorChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QHeaderView
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QHeaderView>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtWidgets/QHeaderView>
#endif

/*
explicit QHeaderView ( Qt::Orientation orientation, QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QHEADERVIEW_NEW )
{
  if( ISBETWEEN(1,2) && ISNUM(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    QHeaderView * o = new QHeaderView( (Qt::Orientation) hb_parni(1), OPQWIDGET(2,0) );
    _qt5xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QHEADERVIEW_DELETE )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    Events_disconnect_all_events(obj, true);
    Signals_disconnect_all_signals(obj, true);
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
bool cascadingSectionResizes () const
*/
HB_FUNC_STATIC( QHEADERVIEW_CASCADINGSECTIONRESIZES )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->cascadingSectionResizes() );
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
void setCascadingSectionResizes ( bool enable )
*/
HB_FUNC_STATIC( QHEADERVIEW_SETCASCADINGSECTIONRESIZES )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setCascadingSectionResizes( PBOOL(1) );
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
int count () const
*/
HB_FUNC_STATIC( QHEADERVIEW_COUNT )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->count() );
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
Qt::Alignment defaultAlignment () const
*/
HB_FUNC_STATIC( QHEADERVIEW_DEFAULTALIGNMENT )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->defaultAlignment() );
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
void setDefaultAlignment ( Qt::Alignment alignment )
*/
HB_FUNC_STATIC( QHEADERVIEW_SETDEFAULTALIGNMENT )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setDefaultAlignment( (Qt::Alignment) hb_parni(1) );
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
int defaultSectionSize () const
*/
HB_FUNC_STATIC( QHEADERVIEW_DEFAULTSECTIONSIZE )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->defaultSectionSize() );
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
void setDefaultSectionSize ( int size )
*/
HB_FUNC_STATIC( QHEADERVIEW_SETDEFAULTSECTIONSIZE )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setDefaultSectionSize( PINT(1) );
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
int hiddenSectionCount () const
*/
HB_FUNC_STATIC( QHEADERVIEW_HIDDENSECTIONCOUNT )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->hiddenSectionCount() );
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
void hideSection ( int logicalIndex )
*/
HB_FUNC_STATIC( QHEADERVIEW_HIDESECTION )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->hideSection( PINT(1) );
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
bool highlightSections () const
*/
HB_FUNC_STATIC( QHEADERVIEW_HIGHLIGHTSECTIONS )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->highlightSections() );
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
void setHighlightSections ( bool highlight )
*/
HB_FUNC_STATIC( QHEADERVIEW_SETHIGHLIGHTSECTIONS )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setHighlightSections( PBOOL(1) );
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
bool isSectionHidden ( int logicalIndex ) const
*/
HB_FUNC_STATIC( QHEADERVIEW_ISSECTIONHIDDEN )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      RBOOL( obj->isSectionHidden( PINT(1) ) );
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
bool isSortIndicatorShown () const
*/
HB_FUNC_STATIC( QHEADERVIEW_ISSORTINDICATORSHOWN )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isSortIndicatorShown() );
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
void setSortIndicatorShown ( bool show )
*/
HB_FUNC_STATIC( QHEADERVIEW_SETSORTINDICATORSHOWN )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setSortIndicatorShown( PBOOL(1) );
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
int length () const
*/
HB_FUNC_STATIC( QHEADERVIEW_LENGTH )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->length() );
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
int logicalIndex ( int visualIndex ) const
*/
HB_FUNC_STATIC( QHEADERVIEW_LOGICALINDEX )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      RINT( obj->logicalIndex( PINT(1) ) );
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
int logicalIndexAt ( int position ) const
*/
void QHeaderView_logicalIndexAt1()
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->logicalIndexAt( PINT(1) ) );
  }
}

/*
int logicalIndexAt ( int x, int y ) const
*/
void QHeaderView_logicalIndexAt2()
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->logicalIndexAt( PINT(1), PINT(2) ) );
  }
}

/*
int logicalIndexAt ( const QPoint & pos ) const
*/
void QHeaderView_logicalIndexAt3()
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->logicalIndexAt( *PQPOINT(1) ) );
  }
}

//[1]int logicalIndexAt ( int position ) const
//[2]int logicalIndexAt ( int x, int y ) const
//[3]int logicalIndexAt ( const QPoint & pos ) const

HB_FUNC_STATIC( QHEADERVIEW_LOGICALINDEXAT )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QHeaderView_logicalIndexAt1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QHeaderView_logicalIndexAt2();
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QHeaderView_logicalIndexAt3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
int minimumSectionSize () const
*/
HB_FUNC_STATIC( QHEADERVIEW_MINIMUMSECTIONSIZE )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->minimumSectionSize() );
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
void setMinimumSectionSize ( int size )
*/
HB_FUNC_STATIC( QHEADERVIEW_SETMINIMUMSECTIONSIZE )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setMinimumSectionSize( PINT(1) );
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
void moveSection ( int from, int to )
*/
HB_FUNC_STATIC( QHEADERVIEW_MOVESECTION )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
    {
#endif
      obj->moveSection( PINT(1), PINT(2) );
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
int offset () const
*/
HB_FUNC_STATIC( QHEADERVIEW_OFFSET )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->offset() );
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
Qt::Orientation orientation () const
*/
HB_FUNC_STATIC( QHEADERVIEW_ORIENTATION )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->orientation() );
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
void resizeSection ( int logicalIndex, int size )
*/
HB_FUNC_STATIC( QHEADERVIEW_RESIZESECTION )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
    {
#endif
      obj->resizeSection( PINT(1), PINT(2) );
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
void resizeSections ( QHeaderView::ResizeMode mode )
*/
HB_FUNC_STATIC( QHEADERVIEW_RESIZESECTIONS )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->resizeSections( (QHeaderView::ResizeMode) hb_parni(1) );
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
bool restoreState ( const QByteArray & state )
*/
HB_FUNC_STATIC( QHEADERVIEW_RESTORESTATE )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
    {
#endif
      RBOOL( obj->restoreState( *PQBYTEARRAY(1) ) );
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
QByteArray saveState () const
*/
HB_FUNC_STATIC( QHEADERVIEW_SAVESTATE )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QByteArray * ptr = new QByteArray( obj->saveState() );
      _qt5xhb_createReturnClass( ptr, "QBYTEARRAY", true );
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
int sectionPosition ( int logicalIndex ) const
*/
HB_FUNC_STATIC( QHEADERVIEW_SECTIONPOSITION )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      RINT( obj->sectionPosition( PINT(1) ) );
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
int sectionSize ( int logicalIndex ) const
*/
HB_FUNC_STATIC( QHEADERVIEW_SECTIONSIZE )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      RINT( obj->sectionSize( PINT(1) ) );
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
int sectionSizeHint ( int logicalIndex ) const
*/
HB_FUNC_STATIC( QHEADERVIEW_SECTIONSIZEHINT )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      RINT( obj->sectionSizeHint( PINT(1) ) );
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
int sectionViewportPosition ( int logicalIndex ) const
*/
HB_FUNC_STATIC( QHEADERVIEW_SECTIONVIEWPORTPOSITION )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      RINT( obj->sectionViewportPosition( PINT(1) ) );
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
bool sectionsHidden () const
*/
HB_FUNC_STATIC( QHEADERVIEW_SECTIONSHIDDEN )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->sectionsHidden() );
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
bool sectionsMoved () const
*/
HB_FUNC_STATIC( QHEADERVIEW_SECTIONSMOVED )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->sectionsMoved() );
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
void setSectionHidden ( int logicalIndex, bool hide )
*/
HB_FUNC_STATIC( QHEADERVIEW_SETSECTIONHIDDEN )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISLOG(2) )
    {
#endif
      obj->setSectionHidden( PINT(1), PBOOL(2) );
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
void setSortIndicator ( int logicalIndex, Qt::SortOrder order )
*/
HB_FUNC_STATIC( QHEADERVIEW_SETSORTINDICATOR )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
    {
#endif
      obj->setSortIndicator( PINT(1), (Qt::SortOrder) hb_parni(2) );
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
bool stretchLastSection () const
*/
HB_FUNC_STATIC( QHEADERVIEW_STRETCHLASTSECTION )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->stretchLastSection() );
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
void setStretchLastSection ( bool stretch )
*/
HB_FUNC_STATIC( QHEADERVIEW_SETSTRETCHLASTSECTION )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setStretchLastSection( PBOOL(1) );
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
void showSection ( int logicalIndex )
*/
HB_FUNC_STATIC( QHEADERVIEW_SHOWSECTION )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->showSection( PINT(1) );
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
Qt::SortOrder sortIndicatorOrder () const
*/
HB_FUNC_STATIC( QHEADERVIEW_SORTINDICATORORDER )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->sortIndicatorOrder() );
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
int sortIndicatorSection () const
*/
HB_FUNC_STATIC( QHEADERVIEW_SORTINDICATORSECTION )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->sortIndicatorSection() );
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
int stretchSectionCount () const
*/
HB_FUNC_STATIC( QHEADERVIEW_STRETCHSECTIONCOUNT )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->stretchSectionCount() );
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
void swapSections ( int first, int second )
*/
HB_FUNC_STATIC( QHEADERVIEW_SWAPSECTIONS )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
    {
#endif
      obj->swapSections( PINT(1), PINT(2) );
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
int visualIndex ( int logicalIndex ) const
*/
HB_FUNC_STATIC( QHEADERVIEW_VISUALINDEX )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      RINT( obj->visualIndex( PINT(1) ) );
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
int visualIndexAt ( int position ) const
*/
HB_FUNC_STATIC( QHEADERVIEW_VISUALINDEXAT )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      RINT( obj->visualIndexAt( PINT(1) ) );
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
void reset ()
*/
HB_FUNC_STATIC( QHEADERVIEW_RESET )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->reset();
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
void setModel ( QAbstractItemModel * model )
*/
HB_FUNC_STATIC( QHEADERVIEW_SETMODEL )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQABSTRACTITEMMODEL(1) )
    {
#endif
      obj->setModel( PQABSTRACTITEMMODEL(1) );
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
QSize sizeHint () const
*/
HB_FUNC_STATIC( QHEADERVIEW_SIZEHINT )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QSize * ptr = new QSize( obj->sizeHint() );
      _qt5xhb_createReturnClass( ptr, "QSIZE", true );
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
void headerDataChanged ( Qt::Orientation orientation, int logicalFirst, int logicalLast )
*/
HB_FUNC_STATIC( QHEADERVIEW_HEADERDATACHANGED )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
    {
#endif
      obj->headerDataChanged( (Qt::Orientation) hb_parni(1), PINT(2), PINT(3) );
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
void setOffset ( int offset )
*/
HB_FUNC_STATIC( QHEADERVIEW_SETOFFSET )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setOffset( PINT(1) );
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
void setOffsetToLastSection ()
*/
HB_FUNC_STATIC( QHEADERVIEW_SETOFFSETTOLASTSECTION )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->setOffsetToLastSection();
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
void setOffsetToSectionPosition ( int visualIndex )
*/
HB_FUNC_STATIC( QHEADERVIEW_SETOFFSETTOSECTIONPOSITION )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setOffsetToSectionPosition( PINT(1) );
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
void setVisible(bool v)
*/
HB_FUNC_STATIC( QHEADERVIEW_SETVISIBLE )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setVisible( PBOOL(1) );
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
void setSectionsMovable (bool movable)
*/
HB_FUNC_STATIC( QHEADERVIEW_SETSECTIONSMOVABLE )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setSectionsMovable( PBOOL(1) );
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
bool sectionsMovable() const
*/
HB_FUNC_STATIC( QHEADERVIEW_SECTIONSMOVABLE )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->sectionsMovable() );
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
void setSectionsClickable(bool clickable)
*/
HB_FUNC_STATIC( QHEADERVIEW_SETSECTIONSCLICKABLE )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setSectionsClickable( PBOOL(1) );
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
bool sectionsClickable() const
*/
HB_FUNC_STATIC( QHEADERVIEW_SECTIONSCLICKABLE )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->sectionsClickable() );
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
ResizeMode sectionResizeMode(int logicalIndex) const
*/
HB_FUNC_STATIC( QHEADERVIEW_SECTIONRESIZEMODE )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      RENUM( obj->sectionResizeMode( PINT(1) ) );
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
void setSectionResizeMode(ResizeMode mode)
*/
void QHeaderView_setSectionResizeMode1()
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setSectionResizeMode( (QHeaderView::ResizeMode) hb_parni(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSectionResizeMode(int logicalIndex, ResizeMode mode)
*/
void QHeaderView_setSectionResizeMode2()
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setSectionResizeMode( PINT(1), (QHeaderView::ResizeMode) hb_parni(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void setSectionResizeMode(ResizeMode mode)
//[2]void setSectionResizeMode(int logicalIndex, ResizeMode mode)

HB_FUNC_STATIC( QHEADERVIEW_SETSECTIONRESIZEMODE )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QHeaderView_setSectionResizeMode1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QHeaderView_setSectionResizeMode2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setResizeContentsPrecision(int precision)
*/
HB_FUNC_STATIC( QHEADERVIEW_SETRESIZECONTENTSPRECISION )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setResizeContentsPrecision( PINT(1) );
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
int resizeContentsPrecision() const
*/
HB_FUNC_STATIC( QHEADERVIEW_RESIZECONTENTSPRECISION )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->resizeContentsPrecision() );
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
int maximumSectionSize() const
*/
HB_FUNC_STATIC( QHEADERVIEW_MAXIMUMSECTIONSIZE )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->maximumSectionSize() );
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
void setMaximumSectionSize(int size)
*/
HB_FUNC_STATIC( QHEADERVIEW_SETMAXIMUMSECTIONSIZE )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setMaximumSectionSize( PINT(1) );
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
void doItemsLayout()
*/
HB_FUNC_STATIC( QHEADERVIEW_DOITEMSLAYOUT )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->doItemsLayout();
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

void QHeaderViewSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QHEADERVIEW_ONGEOMETRIESCHANGED )
{
  QHeaderViewSlots_connect_signal( "geometriesChanged()", "geometriesChanged()" );
}

HB_FUNC_STATIC( QHEADERVIEW_ONSECTIONAUTORESIZE )
{
  QHeaderViewSlots_connect_signal( "sectionAutoResize(int,QHeaderView::ResizeMode)", "sectionAutoResize(int,QHeaderView::ResizeMode)" );
}

HB_FUNC_STATIC( QHEADERVIEW_ONSECTIONCLICKED )
{
  QHeaderViewSlots_connect_signal( "sectionClicked(int)", "sectionClicked(int)" );
}

HB_FUNC_STATIC( QHEADERVIEW_ONSECTIONCOUNTCHANGED )
{
  QHeaderViewSlots_connect_signal( "sectionCountChanged(int,int)", "sectionCountChanged(int,int)" );
}

HB_FUNC_STATIC( QHEADERVIEW_ONSECTIONDOUBLECLICKED )
{
  QHeaderViewSlots_connect_signal( "sectionDoubleClicked(int)", "sectionDoubleClicked(int)" );
}

HB_FUNC_STATIC( QHEADERVIEW_ONSECTIONENTERED )
{
  QHeaderViewSlots_connect_signal( "sectionEntered(int)", "sectionEntered(int)" );
}

HB_FUNC_STATIC( QHEADERVIEW_ONSECTIONHANDLEDOUBLECLICKED )
{
  QHeaderViewSlots_connect_signal( "sectionHandleDoubleClicked(int)", "sectionHandleDoubleClicked(int)" );
}

HB_FUNC_STATIC( QHEADERVIEW_ONSECTIONMOVED )
{
  QHeaderViewSlots_connect_signal( "sectionMoved(int,int,int)", "sectionMoved(int,int,int)" );
}

HB_FUNC_STATIC( QHEADERVIEW_ONSECTIONPRESSED )
{
  QHeaderViewSlots_connect_signal( "sectionPressed(int)", "sectionPressed(int)" );
}

HB_FUNC_STATIC( QHEADERVIEW_ONSECTIONRESIZED )
{
  QHeaderViewSlots_connect_signal( "sectionResized(int,int,int)", "sectionResized(int,int,int)" );
}

HB_FUNC_STATIC( QHEADERVIEW_ONSORTINDICATORCHANGED )
{
  QHeaderViewSlots_connect_signal( "sortIndicatorChanged(int,Qt::SortOrder)", "sortIndicatorChanged(int,Qt::SortOrder)" );
}

#pragma ENDDUMP
