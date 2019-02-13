/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QTEXTDOCUMENTSLOTS_H
#define QTEXTDOCUMENTSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtGui/QTextDocument>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class QTextDocumentSlots: public QObject
{
  Q_OBJECT
  public:
  QTextDocumentSlots(QObject *parent = 0);
  ~QTextDocumentSlots();
  public slots:
  void contentsChange( int from, int charsRemoves, int charsAdded );
  void contentsChanged();
  void undoAvailable( bool b );
  void redoAvailable( bool b );
  void undoCommandAdded();
  void modificationChanged( bool m );
  void cursorPositionChanged( const QTextCursor & cursor );
  void blockCountChanged( int newBlockCount );
  void documentLayoutChanged();
};

#endif /* QTEXTDOCUMENTSLOTS_H */
