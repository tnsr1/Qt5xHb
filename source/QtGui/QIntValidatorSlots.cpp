/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QIntValidatorSlots.h"

QIntValidatorSlots::QIntValidatorSlots(QObject *parent) : QObject(parent)
{
}

QIntValidatorSlots::~QIntValidatorSlots()
{
}
void QIntValidatorSlots::changed()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "changed()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QINTVALIDATOR" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void QIntValidatorSlots_connect_signal ( const QString & signal, const QString & slot )
{
  QIntValidator * obj = (QIntValidator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QIntValidatorSlots * s = QCoreApplication::instance()->findChild<QIntValidatorSlots *>();

    if( s == NULL )
    {
      s = new QIntValidatorSlots();
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
