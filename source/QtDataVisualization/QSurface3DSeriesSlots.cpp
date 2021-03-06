/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QSurface3DSeriesSlots.h"

QSurface3DSeriesSlots::QSurface3DSeriesSlots(QObject *parent) : QObject(parent)
{
}

QSurface3DSeriesSlots::~QSurface3DSeriesSlots()
{
}
void QSurface3DSeriesSlots::dataProxyChanged( QSurfaceDataProxy * proxy )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "dataProxyChanged(QSurfaceDataProxy*)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QSURFACE3DSERIES" );
    PHB_ITEM pproxy = Signals_return_qobject( (QObject *) proxy, "QSURFACEDATAPROXY" );
    hb_vmEvalBlockV( cb, 2, psender, pproxy );
    hb_itemRelease( psender );
    hb_itemRelease( pproxy );
  }
}
void QSurface3DSeriesSlots::drawModeChanged( QSurface3DSeries::DrawFlags mode )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "drawModeChanged(QSurface3DSeries::DrawFlags)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QSURFACE3DSERIES" );
    PHB_ITEM pmode = hb_itemPutNI( NULL, (int) mode );
    hb_vmEvalBlockV( cb, 2, psender, pmode );
    hb_itemRelease( psender );
    hb_itemRelease( pmode );
  }
}
void QSurface3DSeriesSlots::flatShadingEnabledChanged( bool enable )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "flatShadingEnabledChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QSURFACE3DSERIES" );
    PHB_ITEM penable = hb_itemPutL( NULL, enable );
    hb_vmEvalBlockV( cb, 2, psender, penable );
    hb_itemRelease( psender );
    hb_itemRelease( penable );
  }
}
void QSurface3DSeriesSlots::flatShadingSupportedChanged( bool enable )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "flatShadingSupportedChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QSURFACE3DSERIES" );
    PHB_ITEM penable = hb_itemPutL( NULL, enable );
    hb_vmEvalBlockV( cb, 2, psender, penable );
    hb_itemRelease( psender );
    hb_itemRelease( penable );
  }
}
void QSurface3DSeriesSlots::selectedPointChanged( const QPoint & position )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "selectedPointChanged(QPoint)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QSURFACE3DSERIES" );
    PHB_ITEM pposition = Signals_return_object( (void *) &position, "QPOINT" );
    hb_vmEvalBlockV( cb, 2, psender, pposition );
    hb_itemRelease( psender );
    hb_itemRelease( pposition );
  }
}
void QSurface3DSeriesSlots::textureChanged( const QImage & image )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "textureChanged(QImage)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QSURFACE3DSERIES" );
    PHB_ITEM pimage = Signals_return_object( (void *) &image, "QIMAGE" );
    hb_vmEvalBlockV( cb, 2, psender, pimage );
    hb_itemRelease( psender );
    hb_itemRelease( pimage );
  }
}
void QSurface3DSeriesSlots::textureFileChanged( const QString & filename )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "textureFileChanged(QString)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QSURFACE3DSERIES" );
    PHB_ITEM pfilename = hb_itemPutC( NULL, QSTRINGTOSTRING(filename) );
    hb_vmEvalBlockV( cb, 2, psender, pfilename );
    hb_itemRelease( psender );
    hb_itemRelease( pfilename );
  }
}

void QSurface3DSeriesSlots_connect_signal( const QString & signal, const QString & slot )
{
  QSurface3DSeries * obj = (QSurface3DSeries *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QSurface3DSeriesSlots * s = QCoreApplication::instance()->findChild<QSurface3DSeriesSlots *>();

    if( s == NULL )
    {
      s = new QSurface3DSeriesSlots();
      s->moveToThread( QCoreApplication::instance()->thread() );
      s->setParent( QCoreApplication::instance() );
    }

    hb_retl( Signals_connection_disconnection( s, signal, slot ) );
  }
  else
  {
    hb_retl( false );
  }
}
