/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "Q3DObjectSlots.h"

static Q3DObjectSlots * s = NULL;

Q3DObjectSlots::Q3DObjectSlots(QObject *parent) : QObject(parent)
{
}

Q3DObjectSlots::~Q3DObjectSlots()
{
}
void Q3DObjectSlots::positionChanged( const QVector3D & position )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "positionChanged(QVector3D)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pposition = hb_itemPutPtr( NULL, (QVector3D *) &position );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pposition );
    hb_itemRelease( psender );
    hb_itemRelease( pposition );
  }
}

HB_FUNC( Q3DOBJECT_ONPOSITIONCHANGED )
{
  if( s == NULL )
  {
    s = new Q3DObjectSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "positionChanged(QVector3D)", "positionChanged(QVector3D)" ) );
}
