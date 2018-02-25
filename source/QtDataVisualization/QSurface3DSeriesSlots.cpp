/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QSurface3DSeriesSlots.h"

static QSurface3DSeriesSlots * s = NULL;

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
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pproxy = hb_itemPutPtr( NULL, (QSurfaceDataProxy *) proxy );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pproxy );
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
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pmode = hb_itemPutNI( NULL, (int) mode );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pmode );
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
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM penable = hb_itemPutL( NULL, enable );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, penable );
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
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM penable = hb_itemPutL( NULL, enable );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, penable );
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
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pposition = hb_itemPutPtr( NULL, (QPoint *) &position );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pposition );
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
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pimage = hb_itemPutPtr( NULL, (QImage *) &image );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pimage );
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
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pfilename = hb_itemPutC( NULL, QSTRINGTOSTRING(filename) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pfilename );
    hb_itemRelease( psender );
    hb_itemRelease( pfilename );
  }
}

HB_FUNC( QSURFACE3DSERIES_ONDATAPROXYCHANGED )
{
  if( s == NULL )
  {
    s = new QSurface3DSeriesSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "dataProxyChanged(QSurfaceDataProxy*)", "dataProxyChanged(QSurfaceDataProxy*)" ) );
}

HB_FUNC( QSURFACE3DSERIES_ONDRAWMODECHANGED )
{
  if( s == NULL )
  {
    s = new QSurface3DSeriesSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "drawModeChanged(QSurface3DSeries::DrawFlags)", "drawModeChanged(QSurface3DSeries::DrawFlags)" ) );
}

HB_FUNC( QSURFACE3DSERIES_ONFLATSHADINGENABLEDCHANGED )
{
  if( s == NULL )
  {
    s = new QSurface3DSeriesSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "flatShadingEnabledChanged(bool)", "flatShadingEnabledChanged(bool)" ) );
}

HB_FUNC( QSURFACE3DSERIES_ONFLATSHADINGSUPPORTEDCHANGED )
{
  if( s == NULL )
  {
    s = new QSurface3DSeriesSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "flatShadingSupportedChanged(bool)", "flatShadingSupportedChanged(bool)" ) );
}

HB_FUNC( QSURFACE3DSERIES_ONSELECTEDPOINTCHANGED )
{
  if( s == NULL )
  {
    s = new QSurface3DSeriesSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "selectedPointChanged(QPoint)", "selectedPointChanged(QPoint)" ) );
}

HB_FUNC( QSURFACE3DSERIES_ONTEXTURECHANGED )
{
  if( s == NULL )
  {
    s = new QSurface3DSeriesSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "textureChanged(QImage)", "textureChanged(QImage)" ) );
}

HB_FUNC( QSURFACE3DSERIES_ONTEXTUREFILECHANGED )
{
  if( s == NULL )
  {
    s = new QSurface3DSeriesSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "textureFileChanged(QString)", "textureFileChanged(QString)" ) );
}
