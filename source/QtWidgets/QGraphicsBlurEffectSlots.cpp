/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QGraphicsBlurEffectSlots.h"

QGraphicsBlurEffectSlots::QGraphicsBlurEffectSlots(QObject *parent) : QObject(parent)
{
}

QGraphicsBlurEffectSlots::~QGraphicsBlurEffectSlots()
{
}
void QGraphicsBlurEffectSlots::blurHintsChanged( QGraphicsBlurEffect::BlurHints hints )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "blurHintsChanged(QGraphicsBlurEffect::BlurHints)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QGRAPHICSBLUREFFECT" );
    PHB_ITEM phints = hb_itemPutNI( NULL, (int) hints );
    hb_vmEvalBlockV( cb, 2, psender, phints );
    hb_itemRelease( psender );
    hb_itemRelease( phints );
  }
}
void QGraphicsBlurEffectSlots::blurRadiusChanged( qreal radius )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "blurRadiusChanged(qreal)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QGRAPHICSBLUREFFECT" );
    PHB_ITEM pradius = hb_itemPutND( NULL, radius );
    hb_vmEvalBlockV( cb, 2, psender, pradius );
    hb_itemRelease( psender );
    hb_itemRelease( pradius );
  }
}

void QGraphicsBlurEffectSlots_connect_signal( const QString & signal, const QString & slot )
{
  QGraphicsBlurEffect * obj = (QGraphicsBlurEffect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QGraphicsBlurEffectSlots * s = QCoreApplication::instance()->findChild<QGraphicsBlurEffectSlots *>();

    if( s == NULL )
    {
      s = new QGraphicsBlurEffectSlots();
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
