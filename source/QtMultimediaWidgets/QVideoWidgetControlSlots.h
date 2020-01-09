/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QVIDEOWIDGETCONTROLSLOTS_H
#define QVIDEOWIDGETCONTROLSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtMultimediaWidgets/QVideoWidgetControl>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class QVideoWidgetControlSlots: public QObject
{
  Q_OBJECT
  public:
  QVideoWidgetControlSlots(QObject *parent = 0);
  ~QVideoWidgetControlSlots();
  public slots:
  void fullScreenChanged( bool fullScreen );
  void brightnessChanged( int brightness );
  void contrastChanged( int contrast );
  void hueChanged( int hue );
  void saturationChanged( int saturation );
};

#endif /* QVIDEOWIDGETCONTROLSLOTS_H */
