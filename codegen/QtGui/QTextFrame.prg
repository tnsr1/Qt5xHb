%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QTextObject

   METHOD new
   METHOD delete
   METHOD setFrameFormat
   METHOD frameFormat
   METHOD firstCursorPosition
   METHOD lastCursorPosition
   METHOD firstPosition
   METHOD lastPosition
%%   METHOD layoutData
%%   METHOD setLayoutData
   METHOD childFrames
   METHOD parentFrame

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QTextCursor>

$prototype=QTextFrame(QTextDocument *doc)
$constructor=|new|QTextDocument *

$deleteMethod

$prototype=void setFrameFormat(const QTextFrameFormat &format)
$method=|void|setFrameFormat|const QTextFrameFormat &

$prototype=QTextFrameFormat frameFormat() const
$method=|QTextFrameFormat|frameFormat|

$prototype=QTextCursor firstCursorPosition() const
$method=|QTextCursor|firstCursorPosition|

$prototype=QTextCursor lastCursorPosition() const
$method=|QTextCursor|lastCursorPosition|

$prototype=int firstPosition() const
$method=|int|firstPosition|

$prototype=int lastPosition() const
$method=|int|lastPosition|

$prototype=QTextFrameLayoutData *layoutData() const
%% TODO: implementar ?
%% $method=|QTextFrameLayoutData *|layoutData|

$prototype=void setLayoutData(QTextFrameLayoutData *data)
%% TODO: implementar ?
%% $method=|void|setLayoutData|QTextFrameLayoutData *

$prototype=QList<QTextFrame *> childFrames() const
$method=|QList<QTextFrame *>|childFrames|

$prototype=QTextFrame *parentFrame() const
$method=|QTextFrame *|parentFrame|

#pragma ENDDUMP
