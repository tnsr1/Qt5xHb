/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQTCPSERVER_H
#define SLOTSQTCPSERVER_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QTcpServer>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"

bool Signals_connect_signal ( QObject * object, QString signal, PHB_ITEM codeblock );
bool Signals_disconnect_signal ( QObject * object, QString signal );
bool Signals_is_signal_connected( QObject * object, QString signal );
PHB_ITEM Signals_return_codeblock ( QObject * object, QString signal );
void Signals_release_codeblocks ();
void Signals_disconnect_all_signals (QObject * obj);
bool Signals_connection_disconnection ( QObject * s, QString signal, QString slot );

class SlotsQTcpServer: public QObject
{
  Q_OBJECT
  public:
  SlotsQTcpServer(QObject *parent = 0);
  ~SlotsQTcpServer();
  public slots:
  void newConnection ();
};

#endif // SLOTSQTCPSERVER_H
