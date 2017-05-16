/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQGUIAPPLICATION_H
#define SLOTSQGUIAPPLICATION_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QGuiApplication>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"

bool Signals_connect_signal ( QObject * object, QString signal, PHB_ITEM codeblock );
bool Signals_disconnect_signal ( QObject * object, QString signal );
bool Signals_is_signal_connected( QObject * object, QString signal );
PHB_ITEM Signals_return_codeblock ( QObject * object, QString signal );
void Signals_release_codeblocks ();
void Signals_disconnect_all_signals (QObject * obj);
bool Signals_connection_disconnection ( QObject * s, QString signal, QString slot );

class SlotsQGuiApplication: public QObject
{
  Q_OBJECT
  public:
  SlotsQGuiApplication(QObject *parent = 0);
  ~SlotsQGuiApplication();
  public slots:
  void focusObjectChanged(QObject * focusObject);
  void focusWindowChanged(QWindow * focusWindow);
  void fontDatabaseChanged();
  void lastWindowClosed();
  void screenAdded(QScreen * screen);
};

#endif // SLOTSQGUIAPPLICATION_H
