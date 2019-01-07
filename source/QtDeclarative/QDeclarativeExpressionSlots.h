/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QDECLARATIVEEXPRESSIONSLOTS_H
#define QDECLARATIVEEXPRESSIONSLOTS_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QDeclarativeExpression>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class QDeclarativeExpressionSlots: public QObject
{
  Q_OBJECT
  public:
  QDeclarativeExpressionSlots(QObject *parent = 0);
  ~QDeclarativeExpressionSlots();
  public slots:
  void valueChanged();
};

#endif /* QDECLARATIVEEXPRESSIONSLOTS_H */
