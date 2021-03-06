/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QProgressBarSlots.h"

QProgressBarSlots::QProgressBarSlots(QObject *parent) : QObject(parent)
{
}

QProgressBarSlots::~QProgressBarSlots()
{
}
void QProgressBarSlots::valueChanged( int value )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "valueChanged(int)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QPROGRESSBAR" );
    PHB_ITEM pvalue = hb_itemPutNI( NULL, value );
    hb_vmEvalBlockV( cb, 2, psender, pvalue );
    hb_itemRelease( psender );
    hb_itemRelease( pvalue );
  }
}

void QProgressBarSlots_connect_signal( const QString & signal, const QString & slot )
{
  QProgressBar * obj = (QProgressBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QProgressBarSlots * s = QCoreApplication::instance()->findChild<QProgressBarSlots *>();

    if( s == NULL )
    {
      s = new QProgressBarSlots();
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
