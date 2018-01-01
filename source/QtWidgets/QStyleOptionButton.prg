/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

CLASS QStyleOptionButton INHERIT QStyleOption

   METHOD new

   METHOD features
   METHOD text
   METHOD icon
   METHOD iconSize

   METHOD setFeatures
   METHOD setText
   METHOD setIcon
   METHOD setIconSize

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QStyleOptionButton
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QStyleOptionButton>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QStyleOptionButton>
#endif

/*
QStyleOptionButton()
*/
void QStyleOptionButton_new1 ()
{
  QStyleOptionButton * o = new QStyleOptionButton ();
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QStyleOptionButton(const QStyleOptionButton &other)
*/
void QStyleOptionButton_new2 ()
{
  QStyleOptionButton * o = new QStyleOptionButton ( *PQSTYLEOPTIONBUTTON(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QStyleOptionButton(int version) (protected)
*/

//[1]QStyleOptionButton()
//[2]QStyleOptionButton(const QStyleOptionButton &other) : QStyleOption(Version, Type)
//[3]QStyleOptionButton(int version) (protected)

HB_FUNC_STATIC( QSTYLEOPTIONBUTTON_NEW )
{
  if( ISNUMPAR(0) )
  {
    QStyleOptionButton_new1();
  }
  else if( ISNUMPAR(1) && ISQSTYLEOPTIONBUTTON(1) )
  {
    QStyleOptionButton_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
ButtonFeatures features
*/
HB_FUNC_STATIC( QSTYLEOPTIONBUTTON_FEATURES )
{
  QStyleOptionButton * obj = (QStyleOptionButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->features );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONBUTTON_SETFEATURES )
{
  QStyleOptionButton * obj = (QStyleOptionButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->features = (QStyleOptionButton::ButtonFeatures) hb_parni(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString text
*/
HB_FUNC_STATIC( QSTYLEOPTIONBUTTON_TEXT )
{
  QStyleOptionButton * obj = (QStyleOptionButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->text );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONBUTTON_SETTEXT )
{
  QStyleOptionButton * obj = (QStyleOptionButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->text = PQSTRING(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QIcon icon
*/
HB_FUNC_STATIC( QSTYLEOPTIONBUTTON_ICON )
{
  QStyleOptionButton * obj = (QStyleOptionButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QIcon * ptr = new QIcon( obj->icon );
      _qt5xhb_createReturnClass ( ptr, "QICON", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONBUTTON_SETICON )
{
  QStyleOptionButton * obj = (QStyleOptionButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQICON(1) )
    {
      obj->icon = *PQICON(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QSize iconSize
*/
HB_FUNC_STATIC( QSTYLEOPTIONBUTTON_ICONSIZE )
{
  QStyleOptionButton * obj = (QStyleOptionButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QSize * ptr = new QSize( obj->iconSize );
      _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONBUTTON_SETICONSIZE )
{
  QStyleOptionButton * obj = (QStyleOptionButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQSIZE(1) )
    {
      obj->iconSize = *PQSIZE(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
