%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWebKitWidgets

$header

#include <Qt>

#ifndef __XHARBOUR__
#include <QtWebKitWidgetsVersion>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtWebKitWidgetsVersion>
#endif

HB_FUNC( QTWEBKITWIDGETS_VERSION_STR )
{
  hb_retc( (const char *) QTWEBKITWIDGETS_VERSION_STR );
}

HB_FUNC( QTWEBKITWIDGETS_VERSION )
{
  hb_retni( QTWEBKITWIDGETS_VERSION );
}
