/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

CLASS QStyleOptionFocusRect INHERIT QStyleOption

   METHOD new

   METHOD backgroundColor

   METHOD setBackgroundColor

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QStyleOptionFocusRect
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QStyleOptionFocusRect>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QStyleOptionFocusRect>
#endif

/*
QStyleOptionFocusRect()
*/
void QStyleOptionFocusRect_new1 ()
{
  QStyleOptionFocusRect * o = new QStyleOptionFocusRect ();
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QStyleOptionFocusRect(const QStyleOptionFocusRect &other)
*/
void QStyleOptionFocusRect_new2 ()
{
  QStyleOptionFocusRect * o = new QStyleOptionFocusRect ( *PQSTYLEOPTIONFOCUSRECT(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QStyleOptionFocusRect(int version) (protected)
*/

//[1]QStyleOptionFocusRect()
//[2]QStyleOptionFocusRect(const QStyleOptionFocusRect &other)
//[3]QStyleOptionFocusRect(int version) (protected)

HB_FUNC_STATIC( QSTYLEOPTIONFOCUSRECT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QStyleOptionFocusRect_new1();
  }
  else if( ISNUMPAR(1) && ISQSTYLEOPTIONFOCUSRECT(1) )
  {
    QStyleOptionFocusRect_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QColor backgroundColor
*/
HB_FUNC_STATIC( QSTYLEOPTIONFOCUSRECT_BACKGROUNDCOLOR )
{
  QStyleOptionFocusRect * obj = (QStyleOptionFocusRect *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QColor * ptr = new QColor( obj->backgroundColor );
      _qt5xhb_createReturnClass ( ptr, "QCOLOR", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONFOCUSRECT_SETBACKGROUNDCOLOR )
{
  QStyleOptionFocusRect * obj = (QStyleOptionFocusRect *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQCOLOR(1) )
    {
      obj->backgroundColor = *PQCOLOR(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
