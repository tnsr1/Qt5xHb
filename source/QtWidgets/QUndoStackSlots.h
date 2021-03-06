/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QUNDOSTACKSLOTS_H
#define QUNDOSTACKSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtWidgets/QUndoStack>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class QUndoStackSlots: public QObject
{
  Q_OBJECT
  public:
  QUndoStackSlots(QObject *parent = 0);
  ~QUndoStackSlots();
  public slots:
  void canRedoChanged( bool canRedo );
  void canUndoChanged( bool canUndo );
  void cleanChanged( bool clean );
  void indexChanged( int idx );
  void redoTextChanged( const QString & redoText );
  void undoTextChanged( const QString & undoText );
};

#endif /* QUNDOSTACKSLOTS_H */
