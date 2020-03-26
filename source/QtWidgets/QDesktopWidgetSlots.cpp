/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QDesktopWidgetSlots.h"

QDesktopWidgetSlots::QDesktopWidgetSlots(QObject *parent) : QObject(parent)
{
}

QDesktopWidgetSlots::~QDesktopWidgetSlots()
{
}
void QDesktopWidgetSlots::resized( int screen )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "resized(int)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QDESKTOPWIDGET" );
    PHB_ITEM pscreen = hb_itemPutNI( NULL, screen );
    hb_vmEvalBlockV( cb, 2, psender, pscreen );
    hb_itemRelease( psender );
    hb_itemRelease( pscreen );
  }
}
void QDesktopWidgetSlots::screenCountChanged( int newCount )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "screenCountChanged(int)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QDESKTOPWIDGET" );
    PHB_ITEM pnewCount = hb_itemPutNI( NULL, newCount );
    hb_vmEvalBlockV( cb, 2, psender, pnewCount );
    hb_itemRelease( psender );
    hb_itemRelease( pnewCount );
  }
}
void QDesktopWidgetSlots::workAreaResized( int screen )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "workAreaResized(int)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QDESKTOPWIDGET" );
    PHB_ITEM pscreen = hb_itemPutNI( NULL, screen );
    hb_vmEvalBlockV( cb, 2, psender, pscreen );
    hb_itemRelease( psender );
    hb_itemRelease( pscreen );
  }
}

void QDesktopWidgetSlots_connect_signal( const QString & signal, const QString & slot )
{
  QDesktopWidget * obj = (QDesktopWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QDesktopWidgetSlots * s = QCoreApplication::instance()->findChild<QDesktopWidgetSlots *>();

    if( s == NULL )
    {
      s = new QDesktopWidgetSlots();
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
