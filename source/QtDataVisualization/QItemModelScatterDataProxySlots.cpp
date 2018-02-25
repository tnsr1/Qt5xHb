/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QItemModelScatterDataProxySlots.h"

static QItemModelScatterDataProxySlots * s = NULL;

QItemModelScatterDataProxySlots::QItemModelScatterDataProxySlots(QObject *parent) : QObject(parent)
{
}

QItemModelScatterDataProxySlots::~QItemModelScatterDataProxySlots()
{
}
void QItemModelScatterDataProxySlots::itemModelChanged( const QAbstractItemModel * itemModel )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "itemModelChanged(QAbstractItemModel)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pitemModel = hb_itemPutPtr( NULL, (QAbstractItemModel *) itemModel );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pitemModel );
    hb_itemRelease( psender );
    hb_itemRelease( pitemModel );
  }
}
void QItemModelScatterDataProxySlots::rotationRoleChanged( const QString & role )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "rotationRoleChanged(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM prole = hb_itemPutC( NULL, QSTRINGTOSTRING(role) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, prole );
    hb_itemRelease( psender );
    hb_itemRelease( prole );
  }
}
void QItemModelScatterDataProxySlots::rotationRolePatternChanged( const QRegExp & pattern )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "rotationRolePatternChanged(QRegExp)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM ppattern = hb_itemPutPtr( NULL, (QRegExp *) &pattern );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, ppattern );
    hb_itemRelease( psender );
    hb_itemRelease( ppattern );
  }
}
void QItemModelScatterDataProxySlots::rotationRoleReplaceChanged( const QString & replace )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "rotationRoleReplaceChanged(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM preplace = hb_itemPutC( NULL, QSTRINGTOSTRING(replace) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, preplace );
    hb_itemRelease( psender );
    hb_itemRelease( preplace );
  }
}
void QItemModelScatterDataProxySlots::xPosRoleChanged( const QString & role )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "xPosRoleChanged(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM prole = hb_itemPutC( NULL, QSTRINGTOSTRING(role) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, prole );
    hb_itemRelease( psender );
    hb_itemRelease( prole );
  }
}
void QItemModelScatterDataProxySlots::xPosRolePatternChanged( const QRegExp & pattern )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "xPosRolePatternChanged(QRegExp)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM ppattern = hb_itemPutPtr( NULL, (QRegExp *) &pattern );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, ppattern );
    hb_itemRelease( psender );
    hb_itemRelease( ppattern );
  }
}
void QItemModelScatterDataProxySlots::xPosRoleReplaceChanged( const QString & replace )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "xPosRoleReplaceChanged(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM preplace = hb_itemPutC( NULL, QSTRINGTOSTRING(replace) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, preplace );
    hb_itemRelease( psender );
    hb_itemRelease( preplace );
  }
}
void QItemModelScatterDataProxySlots::yPosRoleChanged( const QString & role )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "yPosRoleChanged(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM prole = hb_itemPutC( NULL, QSTRINGTOSTRING(role) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, prole );
    hb_itemRelease( psender );
    hb_itemRelease( prole );
  }
}
void QItemModelScatterDataProxySlots::yPosRolePatternChanged( const QRegExp & pattern )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "yPosRolePatternChanged(QRegExp)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM ppattern = hb_itemPutPtr( NULL, (QRegExp *) &pattern );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, ppattern );
    hb_itemRelease( psender );
    hb_itemRelease( ppattern );
  }
}
void QItemModelScatterDataProxySlots::yPosRoleReplaceChanged( const QString & replace )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "yPosRoleReplaceChanged(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM preplace = hb_itemPutC( NULL, QSTRINGTOSTRING(replace) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, preplace );
    hb_itemRelease( psender );
    hb_itemRelease( preplace );
  }
}
void QItemModelScatterDataProxySlots::zPosRoleChanged( const QString & role )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "zPosRoleChanged(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM prole = hb_itemPutC( NULL, QSTRINGTOSTRING(role) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, prole );
    hb_itemRelease( psender );
    hb_itemRelease( prole );
  }
}
void QItemModelScatterDataProxySlots::zPosRolePatternChanged( const QRegExp & pattern )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "zPosRolePatternChanged(QRegExp)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM ppattern = hb_itemPutPtr( NULL, (QRegExp *) &pattern );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, ppattern );
    hb_itemRelease( psender );
    hb_itemRelease( ppattern );
  }
}
void QItemModelScatterDataProxySlots::zPosRoleReplaceChanged( const QString & replace )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "zPosRoleReplaceChanged(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM preplace = hb_itemPutC( NULL, QSTRINGTOSTRING(replace) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, preplace );
    hb_itemRelease( psender );
    hb_itemRelease( preplace );
  }
}

HB_FUNC( QITEMMODELSCATTERDATAPROXY_ONITEMMODELCHANGED )
{
  if( s == NULL )
  {
    s = new QItemModelScatterDataProxySlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "itemModelChanged(QAbstractItemModel*)", "itemModelChanged(QAbstractItemModel*)" ) );
}

HB_FUNC( QITEMMODELSCATTERDATAPROXY_ONROTATIONROLECHANGED )
{
  if( s == NULL )
  {
    s = new QItemModelScatterDataProxySlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "rotationRoleChanged(QString)", "rotationRoleChanged(QString)" ) );
}

HB_FUNC( QITEMMODELSCATTERDATAPROXY_ONROTATIONROLEPATTERNCHANGED )
{
  if( s == NULL )
  {
    s = new QItemModelScatterDataProxySlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "rotationRolePatternChanged(QRegExp)", "rotationRolePatternChanged(QRegExp)" ) );
}

HB_FUNC( QITEMMODELSCATTERDATAPROXY_ONROTATIONROLEREPLACECHANGED )
{
  if( s == NULL )
  {
    s = new QItemModelScatterDataProxySlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "rotationRoleReplaceChanged(QString)", "rotationRoleReplaceChanged(QString)" ) );
}

HB_FUNC( QITEMMODELSCATTERDATAPROXY_ONXPOSROLECHANGED )
{
  if( s == NULL )
  {
    s = new QItemModelScatterDataProxySlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "xPosRoleChanged(QString)", "xPosRoleChanged(QString)" ) );
}

HB_FUNC( QITEMMODELSCATTERDATAPROXY_ONXPOSROLEPATTERNCHANGED )
{
  if( s == NULL )
  {
    s = new QItemModelScatterDataProxySlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "xPosRolePatternChanged(QRegExp)", "xPosRolePatternChanged(QRegExp)" ) );
}

HB_FUNC( QITEMMODELSCATTERDATAPROXY_ONXPOSROLEREPLACECHANGED )
{
  if( s == NULL )
  {
    s = new QItemModelScatterDataProxySlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "xPosRoleReplaceChanged(QString)", "xPosRoleReplaceChanged(QString)" ) );
}

HB_FUNC( QITEMMODELSCATTERDATAPROXY_ONYPOSROLECHANGED )
{
  if( s == NULL )
  {
    s = new QItemModelScatterDataProxySlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "yPosRoleChanged(QString)", "yPosRoleChanged(QString)" ) );
}

HB_FUNC( QITEMMODELSCATTERDATAPROXY_ONYPOSROLEPATTERNCHANGED )
{
  if( s == NULL )
  {
    s = new QItemModelScatterDataProxySlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "yPosRolePatternChanged(QRegExp)", "yPosRolePatternChanged(QRegExp)" ) );
}

HB_FUNC( QITEMMODELSCATTERDATAPROXY_ONYPOSROLEREPLACECHANGED )
{
  if( s == NULL )
  {
    s = new QItemModelScatterDataProxySlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "yPosRoleReplaceChanged(QString)", "yPosRoleReplaceChanged(QString)" ) );
}

HB_FUNC( QITEMMODELSCATTERDATAPROXY_ONZPOSROLECHANGED )
{
  if( s == NULL )
  {
    s = new QItemModelScatterDataProxySlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "zPosRoleChanged(QString)", "zPosRoleChanged(QString)" ) );
}

HB_FUNC( QITEMMODELSCATTERDATAPROXY_ONZPOSROLEPATTERNCHANGED )
{
  if( s == NULL )
  {
    s = new QItemModelScatterDataProxySlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "zPosRolePatternChanged(QRegExp)", "zPosRolePatternChanged(QRegExp)" ) );
}

HB_FUNC( QITEMMODELSCATTERDATAPROXY_ONZPOSROLEREPLACECHANGED )
{
  if( s == NULL )
  {
    s = new QItemModelScatterDataProxySlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "zPosRoleReplaceChanged(QString)", "zPosRoleReplaceChanged(QString)" ) );
}
