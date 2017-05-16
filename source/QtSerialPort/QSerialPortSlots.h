/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQSERIALPORT_H
#define SLOTSQSERIALPORT_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QSerialPort>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"

bool Signals_connect_signal ( QObject * object, QString signal, PHB_ITEM codeblock );
bool Signals_disconnect_signal ( QObject * object, QString signal );
bool Signals_is_signal_connected( QObject * object, QString signal );
PHB_ITEM Signals_return_codeblock ( QObject * object, QString signal );
void Signals_release_codeblocks ();
void Signals_disconnect_all_signals (QObject * obj);
bool Signals_connection_disconnection ( QObject * s, QString signal, QString slot );

class SlotsQSerialPort: public QObject
{
  Q_OBJECT
  public:
  SlotsQSerialPort(QObject *parent = 0);
  ~SlotsQSerialPort();
  public slots:
  void baudRateChanged(qint32 baudRate, QSerialPort::Directions dir);
  void dataBitsChanged(QSerialPort::DataBits dataBits);
  void parityChanged(QSerialPort::Parity parity);
  void stopBitsChanged(QSerialPort::StopBits stopBits);
  void flowControlChanged(QSerialPort::FlowControl flow);
  void dataErrorPolicyChanged(QSerialPort::DataErrorPolicy policy);
  void dataTerminalReadyChanged(bool set);
  void requestToSendChanged(bool set);
  void error(QSerialPort::SerialPortError serialPortError);
  void settingsRestoredOnCloseChanged(bool restore);
};

#endif // SLOTSQSERIALPORT_H
