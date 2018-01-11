/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

CLASS QAbstractMessageHandler INHERIT QObject

   METHOD delete
   METHOD message

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAbstractMessageHandler
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QAbstractMessageHandler>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QAbstractMessageHandler>
#endif

HB_FUNC_STATIC( QABSTRACTMESSAGEHANDLER_DELETE )
{
  QAbstractMessageHandler * obj = (QAbstractMessageHandler *) _qt5xhb_itemGetPtrStackSelfItem();

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
void message ( QtMsgType type, const QString & description, const QUrl & identifier = QUrl(), const QSourceLocation & sourceLocation = QSourceLocation() )
*/
HB_FUNC_STATIC( QABSTRACTMESSAGEHANDLER_MESSAGE )
{
  QAbstractMessageHandler * obj = (QAbstractMessageHandler *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(2,4) && ISNUM(1) && ISCHAR(2) && (ISQURL(3)||ISNIL(3)) && (ISQSOURCELOCATION(4)||ISNIL(4)) )
    {
      obj->message ( (QtMsgType) hb_parni(1), PQSTRING(2), ISNIL(3)? QUrl() : *(QUrl *) _qt5xhb_itemGetPtr(3), ISNIL(4)? QSourceLocation() : *(QSourceLocation *) _qt5xhb_itemGetPtr(4) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
