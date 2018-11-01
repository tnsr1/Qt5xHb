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

CLASS QMediaAudioProbeControl INHERIT QMediaControl

   METHOD delete

   METHOD onAudioBufferProbed
   METHOD onFlush

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QMediaAudioProbeControl
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QMediaAudioProbeControl>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QMediaAudioProbeControl>
#endif

/*
explicit QMediaAudioProbeControl(QObject *parent = Q_NULLPTR) [protected]
*/

/*
virtual ~QMediaAudioProbeControl()
*/
HB_FUNC_STATIC( QMEDIAAUDIOPROBECONTROL_DELETE )
{
  QMediaAudioProbeControl * obj = (QMediaAudioProbeControl *) _qt5xhb_itemGetPtrStackSelfItem();

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

void QMediaAudioProbeControlSlots_connect_signal ( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QMEDIAAUDIOPROBECONTROL_ONAUDIOBUFFERPROBED )
{
  QMediaAudioProbeControlSlots_connect_signal( "audioBufferProbed(QAudioBuffer)", "audioBufferProbed(QAudioBuffer)" );
}

HB_FUNC_STATIC( QMEDIAAUDIOPROBECONTROL_ONFLUSH )
{
  QMediaAudioProbeControlSlots_connect_signal( "flush()", "flush()" );
}

#pragma ENDDUMP
