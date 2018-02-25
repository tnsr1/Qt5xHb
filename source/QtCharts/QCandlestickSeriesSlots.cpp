/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QCandlestickSeriesSlots.h"

static QCandlestickSeriesSlots * s = NULL;

QCandlestickSeriesSlots::QCandlestickSeriesSlots(QObject *parent) : QObject(parent)
{
}

QCandlestickSeriesSlots::~QCandlestickSeriesSlots()
{
}
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
void QCandlestickSeriesSlots::bodyOutlineVisibilityChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "bodyOutlineVisibilityChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
void QCandlestickSeriesSlots::bodyWidthChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "bodyWidthChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
void QCandlestickSeriesSlots::brushChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "brushChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
void QCandlestickSeriesSlots::candlestickSetsAdded( const QList<QCandlestickSet*> & sets )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "candlestickSetsAdded(QList<QCandlestickSet*>)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_DYNS pDynSym = hb_dynsymFindName( "QCANDLESTICKSET" );
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
        hb_itemPutPtr( pTempItem, (QCandlestickSet *) sets [i] );
        hb_objSendMsg( pTempObject, "NEWFROMPOINTER", 1, pTempItem );
        hb_arrayAddForward( psets, pTempObject );
        hb_itemRelease( pTempObject );
        hb_itemRelease( pTempItem );
      }
      else
      {
        hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QCANDLESTICKSET", HB_ERR_ARGS_BASEPARAMS );
      }
    }
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, psets );
    hb_itemRelease( psender );
    hb_itemRelease( psets );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
void QCandlestickSeriesSlots::candlestickSetsRemoved( const QList<QCandlestickSet*> & sets )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "candlestickSetsRemoved(QList<QCandlestickSet*>)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_DYNS pDynSym = hb_dynsymFindName( "QCANDLESTICKSET" );
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
        hb_itemPutPtr( pTempItem, (QCandlestickSet *) sets [i] );
        hb_objSendMsg( pTempObject, "NEWFROMPOINTER", 1, pTempItem );
        hb_arrayAddForward( psets, pTempObject );
        hb_itemRelease( pTempObject );
        hb_itemRelease( pTempItem );
      }
      else
      {
        hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QCANDLESTICKSET", HB_ERR_ARGS_BASEPARAMS );
      }
    }
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, psets );
    hb_itemRelease( psender );
    hb_itemRelease( psets );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
void QCandlestickSeriesSlots::capsVisibilityChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "capsVisibilityChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
void QCandlestickSeriesSlots::capsWidthChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "capsWidthChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
void QCandlestickSeriesSlots::clicked( QCandlestickSet * set )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "clicked(QCandlestickSet*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pset = hb_itemPutPtr( NULL, (QCandlestickSet *) set );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pset );
    hb_itemRelease( psender );
    hb_itemRelease( pset );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
void QCandlestickSeriesSlots::countChanged()
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
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
void QCandlestickSeriesSlots::decreasingColorChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "decreasingColorChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
void QCandlestickSeriesSlots::doubleClicked( QCandlestickSet * set )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "doubleClicked(QCandlestickSet*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pset = hb_itemPutPtr( NULL, (QCandlestickSet *) set );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pset );
    hb_itemRelease( psender );
    hb_itemRelease( pset );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
void QCandlestickSeriesSlots::hovered( bool status, QCandlestickSet * set )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "hovered(bool,QCandlestickSet*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pstatus = hb_itemPutL( NULL, status );
    PHB_ITEM pset = hb_itemPutPtr( NULL, (QCandlestickSet *) set );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pstatus, pset );
    hb_itemRelease( psender );
    hb_itemRelease( pstatus );
    hb_itemRelease( pset );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
void QCandlestickSeriesSlots::increasingColorChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "increasingColorChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
void QCandlestickSeriesSlots::maximumColumnWidthChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "maximumColumnWidthChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
void QCandlestickSeriesSlots::minimumColumnWidthChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "minimumColumnWidthChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
void QCandlestickSeriesSlots::penChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "penChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
void QCandlestickSeriesSlots::pressed( QCandlestickSet * set )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "pressed(QCandlestickSet*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pset = hb_itemPutPtr( NULL, (QCandlestickSet *) set );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pset );
    hb_itemRelease( psender );
    hb_itemRelease( pset );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
void QCandlestickSeriesSlots::released( QCandlestickSet * set )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "released(QCandlestickSet*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pset = hb_itemPutPtr( NULL, (QCandlestickSet *) set );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pset );
    hb_itemRelease( psender );
    hb_itemRelease( pset );
  }
}
#endif

HB_FUNC( QCANDLESTICKSERIES_ONBODYOUTLINEVISIBILITYCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  if( s == NULL )
  {
    s = new QCandlestickSeriesSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "bodyOutlineVisibilityChanged()", "bodyOutlineVisibilityChanged()" ) );
#else
  hb_retl( false );
#endif
}

HB_FUNC( QCANDLESTICKSERIES_ONBODYWIDTHCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  if( s == NULL )
  {
    s = new QCandlestickSeriesSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "bodyWidthChanged()", "bodyWidthChanged()" ) );
#else
  hb_retl( false );
#endif
}

HB_FUNC( QCANDLESTICKSERIES_ONBRUSHCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  if( s == NULL )
  {
    s = new QCandlestickSeriesSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "brushChanged()", "brushChanged()" ) );
#else
  hb_retl( false );
#endif
}

HB_FUNC( QCANDLESTICKSERIES_ONCANDLESTICKSETSADDED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  if( s == NULL )
  {
    s = new QCandlestickSeriesSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "candlestickSetsAdded(QList<QCandlestickSet*>)", "candlestickSetsAdded(QList<QCandlestickSet*>)" ) );
#else
  hb_retl( false );
#endif
}

HB_FUNC( QCANDLESTICKSERIES_ONCANDLESTICKSETSREMOVED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  if( s == NULL )
  {
    s = new QCandlestickSeriesSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "candlestickSetsRemoved(QList<QCandlestickSet*>)", "candlestickSetsRemoved(QList<QCandlestickSet*>)" ) );
#else
  hb_retl( false );
#endif
}

HB_FUNC( QCANDLESTICKSERIES_ONCAPSVISIBILITYCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  if( s == NULL )
  {
    s = new QCandlestickSeriesSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "capsVisibilityChanged()", "capsVisibilityChanged()" ) );
#else
  hb_retl( false );
#endif
}

HB_FUNC( QCANDLESTICKSERIES_ONCAPSWIDTHCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  if( s == NULL )
  {
    s = new QCandlestickSeriesSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "capsWidthChanged()", "capsWidthChanged()" ) );
#else
  hb_retl( false );
#endif
}

HB_FUNC( QCANDLESTICKSERIES_ONCLICKED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  if( s == NULL )
  {
    s = new QCandlestickSeriesSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "clicked(QCandlestickSet*)", "clicked(QCandlestickSet*)" ) );
#else
  hb_retl( false );
#endif
}

HB_FUNC( QCANDLESTICKSERIES_ONCOUNTCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  if( s == NULL )
  {
    s = new QCandlestickSeriesSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "countChanged()", "countChanged()" ) );
#else
  hb_retl( false );
#endif
}

HB_FUNC( QCANDLESTICKSERIES_ONDECREASINGCOLORCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  if( s == NULL )
  {
    s = new QCandlestickSeriesSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "decreasingColorChanged()", "decreasingColorChanged()" ) );
#else
  hb_retl( false );
#endif
}

HB_FUNC( QCANDLESTICKSERIES_ONDOUBLECLICKED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  if( s == NULL )
  {
    s = new QCandlestickSeriesSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "doubleClicked(QCandlestickSet*)", "doubleClicked(QCandlestickSet*)" ) );
#else
  hb_retl( false );
#endif
}

HB_FUNC( QCANDLESTICKSERIES_ONHOVERED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  if( s == NULL )
  {
    s = new QCandlestickSeriesSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "hovered(bool,QCandlestickSet*)", "hovered(bool,QCandlestickSet*)" ) );
#else
  hb_retl( false );
#endif
}

HB_FUNC( QCANDLESTICKSERIES_ONINCREASINGCOLORCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  if( s == NULL )
  {
    s = new QCandlestickSeriesSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "increasingColorChanged()", "increasingColorChanged()" ) );
#else
  hb_retl( false );
#endif
}

HB_FUNC( QCANDLESTICKSERIES_ONMAXIMUMCOLUMNWIDTHCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  if( s == NULL )
  {
    s = new QCandlestickSeriesSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "maximumColumnWidthChanged()", "maximumColumnWidthChanged()" ) );
#else
  hb_retl( false );
#endif
}

HB_FUNC( QCANDLESTICKSERIES_ONMINIMUMCOLUMNWIDTHCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  if( s == NULL )
  {
    s = new QCandlestickSeriesSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "minimumColumnWidthChanged()", "minimumColumnWidthChanged()" ) );
#else
  hb_retl( false );
#endif
}

HB_FUNC( QCANDLESTICKSERIES_ONPENCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  if( s == NULL )
  {
    s = new QCandlestickSeriesSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "penChanged()", "penChanged()" ) );
#else
  hb_retl( false );
#endif
}

HB_FUNC( QCANDLESTICKSERIES_ONPRESSED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  if( s == NULL )
  {
    s = new QCandlestickSeriesSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "pressed(QCandlestickSet*)", "pressed(QCandlestickSet*)" ) );
#else
  hb_retl( false );
#endif
}

HB_FUNC( QCANDLESTICKSERIES_ONRELEASED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  if( s == NULL )
  {
    s = new QCandlestickSeriesSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "released(QCandlestickSet*)", "released(QCandlestickSet*)" ) );
#else
  hb_retl( false );
#endif
}
