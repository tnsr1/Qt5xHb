/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQTREEVIEW_H
#define SLOTSQTREEVIEW_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QTreeView>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQTreeView: public QObject
{
  Q_OBJECT
  public:
  SlotsQTreeView(QObject *parent = 0);
  ~SlotsQTreeView();
  public slots:
  void collapsed ( const QModelIndex & index );
  void expanded ( const QModelIndex & index );
};

#endif // SLOTSQTREEVIEW_H
