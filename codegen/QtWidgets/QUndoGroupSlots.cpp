%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "QUndoGroupSlots.h"

static SlotsQUndoGroup * s = NULL;

SlotsQUndoGroup::SlotsQUndoGroup(QObject *parent) : QObject(parent)
{
}

SlotsQUndoGroup::~SlotsQUndoGroup()
{
}

void SlotsQUndoGroup::activeStackChanged(QUndoStack * stack)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "activeStackChanged(QUndoStack*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pstack = hb_itemPutPtr( NULL, (QUndoStack *) stack );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pstack );
    hb_itemRelease( psender );
    hb_itemRelease( pstack );
  }
}

void SlotsQUndoGroup::canRedoChanged(bool canRedo)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "canRedoChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pcanRedo = hb_itemPutL( NULL, canRedo );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pcanRedo );
    hb_itemRelease( psender );
    hb_itemRelease( pcanRedo );
  }
}

void SlotsQUndoGroup::canUndoChanged(bool canUndo)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "canUndoChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pcanUndo = hb_itemPutL( NULL, canUndo );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pcanUndo );
    hb_itemRelease( psender );
    hb_itemRelease( pcanUndo );
  }
}

void SlotsQUndoGroup::cleanChanged(bool clean)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "cleanChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pclean = hb_itemPutL( NULL, clean );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pclean );
    hb_itemRelease( psender );
    hb_itemRelease( pclean );
  }
}

void SlotsQUndoGroup::indexChanged(int idx)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "indexChanged(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pidx = hb_itemPutNI( NULL, idx );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pidx );
    hb_itemRelease( psender );
    hb_itemRelease( pidx );
  }
}

void SlotsQUndoGroup::redoTextChanged(const QString & redoText)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "redoTextChanged(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM predoText = hb_itemPutC( NULL, QSTRINGTOSTRING(redoText) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, predoText );
    hb_itemRelease( psender );
    hb_itemRelease( predoText );
  }
}

void SlotsQUndoGroup::undoTextChanged(const QString & undoText)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "undoTextChanged(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pundoText = hb_itemPutC( NULL, QSTRINGTOSTRING(undoText) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pundoText );
    hb_itemRelease( psender );
    hb_itemRelease( pundoText );
  }
}

HB_FUNC( QUNDOGROUP_ONACTIVESTACKCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQUndoGroup(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "activeStackChanged(QUndoStack*)", "activeStackChanged(QUndoStack*)" ) );
}

HB_FUNC( QUNDOGROUP_ONCANREDOCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQUndoGroup(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "canRedoChanged(bool)", "canRedoChanged(bool)" ) );
}

HB_FUNC( QUNDOGROUP_ONCANUNDOCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQUndoGroup(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "canUndoChanged(bool)", "canUndoChanged(bool)" ) );
}

HB_FUNC( QUNDOGROUP_ONCLEANCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQUndoGroup(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "cleanChanged(bool)", "cleanChanged(bool)" ) );
}

HB_FUNC( QUNDOGROUP_ONINDEXCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQUndoGroup(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "indexChanged(int)", "indexChanged(int)" ) );
}

HB_FUNC( QUNDOGROUP_ONREDOTEXTCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQUndoGroup(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "redoTextChanged(QString)", "redoTextChanged(QString)" ) );
}

HB_FUNC( QUNDOGROUP_ONUNDOTEXTCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQUndoGroup(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "undoTextChanged(QString)", "undoTextChanged(QString)" ) );
}