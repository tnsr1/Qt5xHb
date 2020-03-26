/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QAbstractItemDelegateSlots.h"

QAbstractItemDelegateSlots::QAbstractItemDelegateSlots(QObject *parent) : QObject(parent)
{
}

QAbstractItemDelegateSlots::~QAbstractItemDelegateSlots()
{
}
void QAbstractItemDelegateSlots::closeEditor( QWidget * editor, QAbstractItemDelegate::EndEditHint hint )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "closeEditor(QWidget*,QAbstractItemDelegate::EndEditHint)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QABSTRACTITEMDELEGATE" );
    PHB_ITEM peditor = Signals_return_qobject( (QObject *) editor, "QWIDGET" );
    PHB_ITEM phint = hb_itemPutNI( NULL, (int) hint );
    hb_vmEvalBlockV( cb, 3, psender, peditor, phint );
    hb_itemRelease( psender );
    hb_itemRelease( peditor );
    hb_itemRelease( phint );
  }
}
void QAbstractItemDelegateSlots::commitData( QWidget * editor )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "commitData(QWidget*)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QABSTRACTITEMDELEGATE" );
    PHB_ITEM peditor = Signals_return_qobject( (QObject *) editor, "QWIDGET" );
    hb_vmEvalBlockV( cb, 2, psender, peditor );
    hb_itemRelease( psender );
    hb_itemRelease( peditor );
  }
}
void QAbstractItemDelegateSlots::sizeHintChanged( const QModelIndex & index )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "sizeHintChanged(QModelIndex)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QABSTRACTITEMDELEGATE" );
    PHB_ITEM pindex = Signals_return_object( (void *) &index, "QMODELINDEX" );
    hb_vmEvalBlockV( cb, 2, psender, pindex );
    hb_itemRelease( psender );
    hb_itemRelease( pindex );
  }
}

void QAbstractItemDelegateSlots_connect_signal( const QString & signal, const QString & slot )
{
  QAbstractItemDelegate * obj = (QAbstractItemDelegate *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QAbstractItemDelegateSlots * s = QCoreApplication::instance()->findChild<QAbstractItemDelegateSlots *>();

    if( s == NULL )
    {
      s = new QAbstractItemDelegateSlots();
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
