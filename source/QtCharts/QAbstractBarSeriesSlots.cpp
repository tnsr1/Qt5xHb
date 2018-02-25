/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QAbstractBarSeriesSlots.h"

static QAbstractBarSeriesSlots * s = NULL;

QAbstractBarSeriesSlots::QAbstractBarSeriesSlots(QObject *parent) : QObject(parent)
{
}

QAbstractBarSeriesSlots::~QAbstractBarSeriesSlots()
{
}
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QAbstractBarSeriesSlots::barsetsAdded( QList<QBarSet*> sets )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "barsetsAdded(QList<QBarSet*>)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_DYNS pDynSym = hb_dynsymFindName( "QBARSET" );
    PHB_ITEM psets = hb_itemArrayNew(0);
    int i;
    for(i=0;i<sets.count();i++)
    {
      if( pDynSym )
      {
        hb_vmPushDynSym( pDynSym );
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pTempObject = hb_itemNew( NULL );
        hb_itemCopy( pTempObject, hb_stackReturnItem() );
        PHB_ITEM pTempItem = hb_itemNew( NULL );
        hb_itemPutPtr( pTempItem, (QBarSet *) sets [i] );
        hb_objSendMsg( pTempObject, "NEWFROMPOINTER", 1, pTempItem );
        hb_arrayAddForward( psets, pTempObject );
        hb_itemRelease( pTempObject );
        hb_itemRelease( pTempItem );
      }
      else
      {
        hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QBARSET", HB_ERR_ARGS_BASEPARAMS );
      }
    }
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, psets );
    hb_itemRelease( psender );
    hb_itemRelease( psets );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QAbstractBarSeriesSlots::barsetsRemoved( QList<QBarSet*> sets )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "barsetsRemoved(QList<QBarSet*>)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_DYNS pDynSym = hb_dynsymFindName( "QBARSET" );
    PHB_ITEM psets = hb_itemArrayNew(0);
    int i;
    for(i=0;i<sets.count();i++)
    {
      if( pDynSym )
      {
        hb_vmPushDynSym( pDynSym );
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pTempObject = hb_itemNew( NULL );
        hb_itemCopy( pTempObject, hb_stackReturnItem() );
        PHB_ITEM pTempItem = hb_itemNew( NULL );
        hb_itemPutPtr( pTempItem, (QBarSet *) sets [i] );
        hb_objSendMsg( pTempObject, "NEWFROMPOINTER", 1, pTempItem );
        hb_arrayAddForward( psets, pTempObject );
        hb_itemRelease( pTempObject );
        hb_itemRelease( pTempItem );
      }
      else
      {
        hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QBARSET", HB_ERR_ARGS_BASEPARAMS );
      }
    }
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, psets );
    hb_itemRelease( psender );
    hb_itemRelease( psets );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QAbstractBarSeriesSlots::clicked( int index, QBarSet * barset )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "clicked(int,QBarSet*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pindex = hb_itemPutNI( NULL, index );
    PHB_ITEM pbarset = hb_itemPutPtr( NULL, (QBarSet *) barset );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pindex, pbarset );
    hb_itemRelease( psender );
    hb_itemRelease( pindex );
    hb_itemRelease( pbarset );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QAbstractBarSeriesSlots::countChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "countChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QAbstractBarSeriesSlots::doubleClicked( int index, QBarSet * barset )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "doubleClicked(int,QBarSet*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pindex = hb_itemPutNI( NULL, index );
    PHB_ITEM pbarset = hb_itemPutPtr( NULL, (QBarSet *) barset );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pindex, pbarset );
    hb_itemRelease( psender );
    hb_itemRelease( pindex );
    hb_itemRelease( pbarset );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QAbstractBarSeriesSlots::hovered( bool status, int index, QBarSet * barset )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "hovered(bool,int,QBarSet*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pstatus = hb_itemPutL( NULL, status );
    PHB_ITEM pindex = hb_itemPutNI( NULL, index );
    PHB_ITEM pbarset = hb_itemPutPtr( NULL, (QBarSet *) barset );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 4, psender, pstatus, pindex, pbarset );
    hb_itemRelease( psender );
    hb_itemRelease( pstatus );
    hb_itemRelease( pindex );
    hb_itemRelease( pbarset );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QAbstractBarSeriesSlots::labelsAngleChanged( qreal angle )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "labelsAngleChanged(qreal)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pangle = hb_itemPutND( NULL, angle );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pangle );
    hb_itemRelease( psender );
    hb_itemRelease( pangle );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QAbstractBarSeriesSlots::labelsFormatChanged( const QString & format )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "labelsFormatChanged(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pformat = hb_itemPutC( NULL, QSTRINGTOSTRING(format) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pformat );
    hb_itemRelease( psender );
    hb_itemRelease( pformat );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QAbstractBarSeriesSlots::labelsPositionChanged( QAbstractBarSeries::LabelsPosition position )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "labelsPositionChanged(QAbstractBarSeries::LabelsPosition)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pposition = hb_itemPutNI( NULL, (int) position );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pposition );
    hb_itemRelease( psender );
    hb_itemRelease( pposition );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QAbstractBarSeriesSlots::labelsVisibleChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "labelsVisibleChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QAbstractBarSeriesSlots::pressed( int index, QBarSet * barset )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "pressed(int,QBarSet*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pindex = hb_itemPutNI( NULL, index );
    PHB_ITEM pbarset = hb_itemPutPtr( NULL, (QBarSet *) barset );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pindex, pbarset );
    hb_itemRelease( psender );
    hb_itemRelease( pindex );
    hb_itemRelease( pbarset );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QAbstractBarSeriesSlots::released( int index, QBarSet * barset )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "released(int,QBarSet*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pindex = hb_itemPutNI( NULL, index );
    PHB_ITEM pbarset = hb_itemPutPtr( NULL, (QBarSet *) barset );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pindex, pbarset );
    hb_itemRelease( psender );
    hb_itemRelease( pindex );
    hb_itemRelease( pbarset );
  }
}
#endif

HB_FUNC( QABSTRACTBARSERIES_ONBARSETSADDED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  if( s == NULL )
  {
    s = new QAbstractBarSeriesSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "barsetsAdded(QList<QBarSet*>)", "barsetsAdded(QList<QBarSet*>)" ) );
#else
  hb_retl( false );
#endif
}

HB_FUNC( QABSTRACTBARSERIES_ONBARSETSREMOVED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  if( s == NULL )
  {
    s = new QAbstractBarSeriesSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "barsetsRemoved(QList<QBarSet*>)", "barsetsRemoved(QList<QBarSet*>)" ) );
#else
  hb_retl( false );
#endif
}

HB_FUNC( QABSTRACTBARSERIES_ONCLICKED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  if( s == NULL )
  {
    s = new QAbstractBarSeriesSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "clicked(int,QBarSet*)", "clicked(int,QBarSet*)" ) );
#else
  hb_retl( false );
#endif
}

HB_FUNC( QABSTRACTBARSERIES_ONCOUNTCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  if( s == NULL )
  {
    s = new QAbstractBarSeriesSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "countChanged()", "countChanged()" ) );
#else
  hb_retl( false );
#endif
}

HB_FUNC( QABSTRACTBARSERIES_ONDOUBLECLICKED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  if( s == NULL )
  {
    s = new QAbstractBarSeriesSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "doubleClicked(int,QBarSet*)", "doubleClicked(int,QBarSet*)" ) );
#else
  hb_retl( false );
#endif
}

HB_FUNC( QABSTRACTBARSERIES_ONHOVERED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  if( s == NULL )
  {
    s = new QAbstractBarSeriesSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "hovered(bool,int,QBarSet*)", "hovered(bool,int,QBarSet*)" ) );
#else
  hb_retl( false );
#endif
}

HB_FUNC( QABSTRACTBARSERIES_ONLABELSANGLECHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  if( s == NULL )
  {
    s = new QAbstractBarSeriesSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "labelsAngleChanged(qreal)", "labelsAngleChanged(qreal)" ) );
#else
  hb_retl( false );
#endif
}

HB_FUNC( QABSTRACTBARSERIES_ONLABELSFORMATCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  if( s == NULL )
  {
    s = new QAbstractBarSeriesSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "labelsFormatChanged(QString)", "labelsFormatChanged(QString)" ) );
#else
  hb_retl( false );
#endif
}

HB_FUNC( QABSTRACTBARSERIES_ONLABELSPOSITIONCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  if( s == NULL )
  {
    s = new QAbstractBarSeriesSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "labelsPositionChanged(QAbstractBarSeries::LabelsPosition)", "labelsPositionChanged(QAbstractBarSeries::LabelsPosition)" ) );
#else
  hb_retl( false );
#endif
}

HB_FUNC( QABSTRACTBARSERIES_ONLABELSVISIBLECHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  if( s == NULL )
  {
    s = new QAbstractBarSeriesSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "labelsVisibleChanged()", "labelsVisibleChanged()" ) );
#else
  hb_retl( false );
#endif
}

HB_FUNC( QABSTRACTBARSERIES_ONPRESSED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  if( s == NULL )
  {
    s = new QAbstractBarSeriesSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "pressed(int,QBarSet*)", "pressed(int,QBarSet*)" ) );
#else
  hb_retl( false );
#endif
}

HB_FUNC( QABSTRACTBARSERIES_ONRELEASED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  if( s == NULL )
  {
    s = new QAbstractBarSeriesSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "released(int,QBarSet*)", "released(int,QBarSet*)" ) );
#else
  hb_retl( false );
#endif
}
