/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QHelpIndexModelSlots.h"

QHelpIndexModelSlots::QHelpIndexModelSlots(QObject *parent) : QObject(parent)
{
}

QHelpIndexModelSlots::~QHelpIndexModelSlots()
{
}
void QHelpIndexModelSlots::indexCreated()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "indexCreated()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QHELPINDEXMODEL" );
    hb_vmEvalBlockV( cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void QHelpIndexModelSlots::indexCreationStarted()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "indexCreationStarted()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QHELPINDEXMODEL" );
    hb_vmEvalBlockV( cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void QHelpIndexModelSlots_connect_signal ( const QString & signal, const QString & slot )
{
  QHelpIndexModel * obj = (QHelpIndexModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QHelpIndexModelSlots * s = QCoreApplication::instance()->findChild<QHelpIndexModelSlots *>();

    if( s == NULL )
    {
      s = new QHelpIndexModelSlots();
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
