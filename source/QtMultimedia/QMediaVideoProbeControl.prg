/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QMediaVideoProbeControl INHERIT QMediaControl

   METHOD delete

   METHOD onFlush
   METHOD onVideoFrameProbed

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QMediaVideoProbeControl
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QMediaVideoProbeControl>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QMediaVideoProbeControl>
#endif

/*
explicit QMediaVideoProbeControl(QObject *parent = Q_NULLPTR) [protected]
*/

/*
virtual ~QMediaVideoProbeControl()
*/
HB_FUNC_STATIC( QMEDIAVIDEOPROBECONTROL_DELETE )
{
  QMediaVideoProbeControl * obj = (QMediaVideoProbeControl *) _qt5xhb_itemGetPtrStackSelfItem();

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

void QMediaVideoProbeControlSlots_connect_signal ( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QMEDIAVIDEOPROBECONTROL_ONFLUSH )
{
  QMediaVideoProbeControlSlots_connect_signal( "flush()", "flush()" );
}

HB_FUNC_STATIC( QMEDIAVIDEOPROBECONTROL_ONVIDEOFRAMEPROBED )
{
  QMediaVideoProbeControlSlots_connect_signal( "videoFrameProbed(QVideoFrame)", "videoFrameProbed(QVideoFrame)" );
}

#pragma ENDDUMP
