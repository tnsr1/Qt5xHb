%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSIZE
REQUEST QWIDGET
#endif

CLASS QDialog INHERIT QWidget

   METHOD new
   METHOD delete
   METHOD isSizeGripEnabled
   METHOD setSizeGripEnabled
   METHOD result
   METHOD setModal
   METHOD setResult
   METHOD minimumSizeHint
   METHOD setVisible
   METHOD sizeHint
   METHOD accept
   METHOD done
   METHOD exec
   METHOD open
   METHOD reject
   METHOD orientation
   METHOD setOrientation
   METHOD extension
   METHOD setExtension
   METHOD showExtension

   METHOD onAccepted
   METHOD onFinished
   METHOD onRejected

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QDialog ( QWidget * parent = 0, Qt::WindowFlags f = 0 )
$constructor=|new|QWidget *=0,Qt::WindowFlags=0

$deleteMethod

$prototype=bool isSizeGripEnabled () const
$method=|bool|isSizeGripEnabled|

$prototype=void setSizeGripEnabled ( bool )
$method=|void|setSizeGripEnabled|bool

$prototype=int result () const
$method=|int|result|

$prototype=void setModal ( bool modal )
$method=|void|setModal|bool

$prototype=void setResult ( int i )
$method=|void|setResult|int

$prototype=QSize minimumSizeHint () const
$method=|QSize|minimumSizeHint|

$prototype=void setVisible ( bool visible )
$method=|void|setVisible|bool

$prototype=QSize sizeHint () const
$method=|QSize|sizeHint|

$prototype=virtual void accept ()
$virtualMethod=|void|accept|

$prototype=virtual void done ( int r )
$virtualMethod=|void|done|int

$prototype=virtual int exec ()
$virtualMethod=|int|exec|

$prototype=virtual void open ()
$virtualMethod=|void|open|

$prototype=virtual void reject ()
$virtualMethod=|void|reject|

$prototype=Qt::Orientation orientation () const
$method=|Qt::Orientation|orientation|

$prototype=void setOrientation (Qt::Orientation orientation)
$method=|void|setOrientation|Qt::Orientation

$prototype=QWidget* extension () const
$method=|QWidget *|extension|

$prototype=void setExtension (QWidget* extension)
$method=|void|setExtension|QWidget *

$prototype=void showExtension(bool)
$method=|void|showExtension|bool

$beginSignals
$signalMethod=|accepted()
$signalMethod=|finished(int)
$signalMethod=|rejected()
$endSignals

#pragma ENDDUMP
