/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QScatter3DSeriesSlots.h"

static QScatter3DSeriesSlots * s = NULL;

QScatter3DSeriesSlots::QScatter3DSeriesSlots(QObject *parent) : QObject(parent)
{
}

QScatter3DSeriesSlots::~QScatter3DSeriesSlots()
{
}
void QScatter3DSeriesSlots::dataProxyChanged( QScatterDataProxy * proxy )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "dataProxyChanged(QScatterDataProxy*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pproxy = hb_itemPutPtr( NULL, (QScatterDataProxy *) proxy );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pproxy );
    hb_itemRelease( psender );
    hb_itemRelease( pproxy );
  }
}
void QScatter3DSeriesSlots::itemSizeChanged( float size )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "itemSizeChanged(float)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM psize = hb_itemPutND( NULL, size );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, psize );
    hb_itemRelease( psender );
    hb_itemRelease( psize );
  }
}
void QScatter3DSeriesSlots::selectedItemChanged( int index )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "selectedItemChanged(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pindex = hb_itemPutNI( NULL, index );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pindex );
    hb_itemRelease( psender );
    hb_itemRelease( pindex );
  }
}

HB_FUNC( QSCATTER3DSERIES_ONDATAPROXYCHANGED )
{
  if( s == NULL )
  {
    s = new QScatter3DSeriesSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "dataProxyChanged(QScatterDataProxy*)", "dataProxyChanged(QScatterDataProxy*)" ) );
}

HB_FUNC( QSCATTER3DSERIES_ONITEMSIZECHANGED )
{
  if( s == NULL )
  {
    s = new QScatter3DSeriesSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "itemSizeChanged(float)", "itemSizeChanged(float)" ) );
}

HB_FUNC( QSCATTER3DSERIES_ONSELECTEDITEMCHANGED )
{
  if( s == NULL )
  {
    s = new QScatter3DSeriesSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "selectedItemChanged(int)", "selectedItemChanged(int)" ) );
}
