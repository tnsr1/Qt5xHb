/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQSCRIPTENGINE_H
#define SLOTSQSCRIPTENGINE_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QScriptEngine>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"

bool Signals_connect_signal ( QObject * object, QString signal, PHB_ITEM codeblock );
bool Signals_disconnect_signal ( QObject * object, QString signal );
bool Signals_is_signal_connected( QObject * object, QString signal );
PHB_ITEM Signals_return_codeblock ( QObject * object, QString signal );
void Signals_release_codeblocks ();
void Signals_disconnect_all_signals (QObject * obj);
bool Signals_connection_disconnection ( QObject * s, QString signal, QString slot );

class SlotsQScriptEngine: public QObject
{
  Q_OBJECT
  public:
  SlotsQScriptEngine(QObject *parent = 0);
  ~SlotsQScriptEngine();
  public slots:
  void signalHandlerException(const QScriptValue & exception);
};

#endif // SLOTSQSCRIPTENGINE_H
