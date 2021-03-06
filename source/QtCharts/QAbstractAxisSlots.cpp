/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QAbstractAxisSlots.h"

QAbstractAxisSlots::QAbstractAxisSlots(QObject *parent) : QObject(parent)
{
}

QAbstractAxisSlots::~QAbstractAxisSlots()
{
}
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QAbstractAxisSlots::colorChanged( QColor color )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "colorChanged(QColor)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QABSTRACTAXIS" );
    PHB_ITEM pcolor = Signals_return_object( (void *) &color, "QCOLOR" );
    hb_vmEvalBlockV( cb, 2, psender, pcolor );
    hb_itemRelease( psender );
    hb_itemRelease( pcolor );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QAbstractAxisSlots::gridLineColorChanged( const QColor & color )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "gridLineColorChanged(QColor)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QABSTRACTAXIS" );
    PHB_ITEM pcolor = Signals_return_object( (void *) &color, "QCOLOR" );
    hb_vmEvalBlockV( cb, 2, psender, pcolor );
    hb_itemRelease( psender );
    hb_itemRelease( pcolor );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QAbstractAxisSlots::gridLinePenChanged( const QPen & pen )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "gridLinePenChanged(QPen)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QABSTRACTAXIS" );
    PHB_ITEM ppen = Signals_return_object( (void *) &pen, "QPEN" );
    hb_vmEvalBlockV( cb, 2, psender, ppen );
    hb_itemRelease( psender );
    hb_itemRelease( ppen );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QAbstractAxisSlots::gridVisibleChanged( bool visible )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "gridVisibleChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QABSTRACTAXIS" );
    PHB_ITEM pvisible = hb_itemPutL( NULL, visible );
    hb_vmEvalBlockV( cb, 2, psender, pvisible );
    hb_itemRelease( psender );
    hb_itemRelease( pvisible );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QAbstractAxisSlots::labelsAngleChanged( int angle )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "labelsAngleChanged(int)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QABSTRACTAXIS" );
    PHB_ITEM pangle = hb_itemPutNI( NULL, angle );
    hb_vmEvalBlockV( cb, 2, psender, pangle );
    hb_itemRelease( psender );
    hb_itemRelease( pangle );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QAbstractAxisSlots::labelsBrushChanged( const QBrush & brush )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "labelsBrushChanged(QBrush)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QABSTRACTAXIS" );
    PHB_ITEM pbrush = Signals_return_object( (void *) &brush, "QBRUSH" );
    hb_vmEvalBlockV( cb, 2, psender, pbrush );
    hb_itemRelease( psender );
    hb_itemRelease( pbrush );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QAbstractAxisSlots::labelsColorChanged( QColor color )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "labelsColorChanged(QColor)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QABSTRACTAXIS" );
    PHB_ITEM pcolor = Signals_return_object( (void *) &color, "QCOLOR" );
    hb_vmEvalBlockV( cb, 2, psender, pcolor );
    hb_itemRelease( psender );
    hb_itemRelease( pcolor );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QAbstractAxisSlots::labelsFontChanged( const QFont & pen )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "labelsFontChanged(QFont)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QABSTRACTAXIS" );
    PHB_ITEM ppen = Signals_return_object( (void *) &pen, "QFONT" );
    hb_vmEvalBlockV( cb, 2, psender, ppen );
    hb_itemRelease( psender );
    hb_itemRelease( ppen );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QAbstractAxisSlots::labelsVisibleChanged( bool visible )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "labelsVisibleChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QABSTRACTAXIS" );
    PHB_ITEM pvisible = hb_itemPutL( NULL, visible );
    hb_vmEvalBlockV( cb, 2, psender, pvisible );
    hb_itemRelease( psender );
    hb_itemRelease( pvisible );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QAbstractAxisSlots::linePenChanged( const QPen & pen )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "linePenChanged(QPen)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QABSTRACTAXIS" );
    PHB_ITEM ppen = Signals_return_object( (void *) &pen, "QPEN" );
    hb_vmEvalBlockV( cb, 2, psender, ppen );
    hb_itemRelease( psender );
    hb_itemRelease( ppen );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QAbstractAxisSlots::lineVisibleChanged( bool visible )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "lineVisibleChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QABSTRACTAXIS" );
    PHB_ITEM pvisible = hb_itemPutL( NULL, visible );
    hb_vmEvalBlockV( cb, 2, psender, pvisible );
    hb_itemRelease( psender );
    hb_itemRelease( pvisible );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QAbstractAxisSlots::minorGridLineColorChanged( const QColor & color )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "minorGridLineColorChanged(QColor)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QABSTRACTAXIS" );
    PHB_ITEM pcolor = Signals_return_object( (void *) &color, "QCOLOR" );
    hb_vmEvalBlockV( cb, 2, psender, pcolor );
    hb_itemRelease( psender );
    hb_itemRelease( pcolor );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QAbstractAxisSlots::minorGridLinePenChanged( const QPen & pen )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "minorGridLinePenChanged(QPen)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QABSTRACTAXIS" );
    PHB_ITEM ppen = Signals_return_object( (void *) &pen, "QPEN" );
    hb_vmEvalBlockV( cb, 2, psender, ppen );
    hb_itemRelease( psender );
    hb_itemRelease( ppen );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QAbstractAxisSlots::minorGridVisibleChanged( bool visible )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "minorGridVisibleChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QABSTRACTAXIS" );
    PHB_ITEM pvisible = hb_itemPutL( NULL, visible );
    hb_vmEvalBlockV( cb, 2, psender, pvisible );
    hb_itemRelease( psender );
    hb_itemRelease( pvisible );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QAbstractAxisSlots::reverseChanged( bool reverse )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "reverseChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QABSTRACTAXIS" );
    PHB_ITEM preverse = hb_itemPutL( NULL, reverse );
    hb_vmEvalBlockV( cb, 2, psender, preverse );
    hb_itemRelease( psender );
    hb_itemRelease( preverse );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QAbstractAxisSlots::shadesBorderColorChanged( QColor color )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "shadesBorderColorChanged(QColor)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QABSTRACTAXIS" );
    PHB_ITEM pcolor = Signals_return_object( (void *) &color, "QCOLOR" );
    hb_vmEvalBlockV( cb, 2, psender, pcolor );
    hb_itemRelease( psender );
    hb_itemRelease( pcolor );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QAbstractAxisSlots::shadesBrushChanged( const QBrush & brush )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "shadesBrushChanged(QBrush)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QABSTRACTAXIS" );
    PHB_ITEM pbrush = Signals_return_object( (void *) &brush, "QBRUSH" );
    hb_vmEvalBlockV( cb, 2, psender, pbrush );
    hb_itemRelease( psender );
    hb_itemRelease( pbrush );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QAbstractAxisSlots::shadesColorChanged( QColor color )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "shadesColorChanged(QColor)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QABSTRACTAXIS" );
    PHB_ITEM pcolor = Signals_return_object( (void *) &color, "QCOLOR" );
    hb_vmEvalBlockV( cb, 2, psender, pcolor );
    hb_itemRelease( psender );
    hb_itemRelease( pcolor );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QAbstractAxisSlots::shadesPenChanged( const QPen & pen )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "shadesPenChanged(QPen)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QABSTRACTAXIS" );
    PHB_ITEM ppen = Signals_return_object( (void *) &pen, "QPEN" );
    hb_vmEvalBlockV( cb, 2, psender, ppen );
    hb_itemRelease( psender );
    hb_itemRelease( ppen );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QAbstractAxisSlots::shadesVisibleChanged( bool visible )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "shadesVisibleChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QABSTRACTAXIS" );
    PHB_ITEM pvisible = hb_itemPutL( NULL, visible );
    hb_vmEvalBlockV( cb, 2, psender, pvisible );
    hb_itemRelease( psender );
    hb_itemRelease( pvisible );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QAbstractAxisSlots::titleBrushChanged( const QBrush & brush )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "titleBrushChanged(QBrush)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QABSTRACTAXIS" );
    PHB_ITEM pbrush = Signals_return_object( (void *) &brush, "QBRUSH" );
    hb_vmEvalBlockV( cb, 2, psender, pbrush );
    hb_itemRelease( psender );
    hb_itemRelease( pbrush );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QAbstractAxisSlots::titleFontChanged( const QFont & font )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "titleFontChanged(QFont)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QABSTRACTAXIS" );
    PHB_ITEM pfont = Signals_return_object( (void *) &font, "QFONT" );
    hb_vmEvalBlockV( cb, 2, psender, pfont );
    hb_itemRelease( psender );
    hb_itemRelease( pfont );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QAbstractAxisSlots::titleTextChanged( const QString & title )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "titleTextChanged(QString)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QABSTRACTAXIS" );
    PHB_ITEM ptitle = hb_itemPutC( NULL, QSTRINGTOSTRING(title) );
    hb_vmEvalBlockV( cb, 2, psender, ptitle );
    hb_itemRelease( psender );
    hb_itemRelease( ptitle );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QAbstractAxisSlots::titleVisibleChanged( bool visible )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "titleVisibleChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QABSTRACTAXIS" );
    PHB_ITEM pvisible = hb_itemPutL( NULL, visible );
    hb_vmEvalBlockV( cb, 2, psender, pvisible );
    hb_itemRelease( psender );
    hb_itemRelease( pvisible );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QAbstractAxisSlots::visibleChanged( bool visible )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "visibleChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QABSTRACTAXIS" );
    PHB_ITEM pvisible = hb_itemPutL( NULL, visible );
    hb_vmEvalBlockV( cb, 2, psender, pvisible );
    hb_itemRelease( psender );
    hb_itemRelease( pvisible );
  }
}
#endif

void QAbstractAxisSlots_connect_signal( const QString & signal, const QString & slot )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QAbstractAxis * obj = (QAbstractAxis *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QAbstractAxisSlots * s = QCoreApplication::instance()->findChild<QAbstractAxisSlots *>();

    if( s == NULL )
    {
      s = new QAbstractAxisSlots();
      s->moveToThread( QCoreApplication::instance()->thread() );
      s->setParent( QCoreApplication::instance() );
    }

    hb_retl( Signals_connection_disconnection( s, signal, slot ) );
  }
  else
  {
    hb_retl( false );
  }
#else
  hb_retl( false );
#endif
}
