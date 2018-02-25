%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QSurfaceDataProxy INHERIT QAbstractDataProxy

   METHOD new
   METHOD delete

   METHOD addRow
   METHOD addRows
   METHOD array
   METHOD columnCount
   METHOD insertRow
   METHOD insertRows
   METHOD itemAt
   METHOD removeRows
   METHOD resetArray
   METHOD rowCount
   METHOD series
   METHOD setItem
   METHOD setRow
   METHOD setRows

   METHOD onArrayReset
   METHOD onColumnCountChanged
   METHOD onItemChanged
   METHOD onRowCountChanged
   METHOD onRowsAdded
   METHOD onRowsChanged
   METHOD onRowsInserted
   METHOD onRowsRemoved
   METHOD onSeriesChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

%% TODO: implementar
%% namespace QtDataVisualization {
%% // typedefs introduced this way because QDoc doesn't understand namespace macros
%% typedef QVector<QSurfaceDataItem> QSurfaceDataRow;
%% typedef QList<QSurfaceDataRow *> QSurfaceDataArray;
%% }

#pragma BEGINDUMP

$includes

#include <QSurface3DSeries>

using namespace QtDataVisualization;

$prototype=explicit QSurfaceDataProxy(QObject *parent = Q_NULLPTR)
$constructor=|new|QObject *=Q_NULLPTR

$prototype=explicit QSurfaceDataProxy(QSurfaceDataProxyPrivate *d, QObject *parent = Q_NULLPTR) (protected)

$prototype=virtual ~QSurfaceDataProxy()
$deleteMethod

%%
%% Q_PROPERTY(int rowCount READ rowCount NOTIFY rowCountChanged)
%%

$prototype=int rowCount() const
$method=|int|rowCount|

%%
%% Q_PROPERTY(int columnCount READ columnCount NOTIFY columnCountChanged)
%%

$prototype=int columnCount() const
$method=|int|columnCount|

%%
%% Q_PROPERTY(QSurface3DSeries *series READ series NOTIFY seriesChanged)
%%

$prototype=QSurface3DSeries *series() const
$method=|QSurface3DSeries *|series|

%%
%%
%%

$prototype=const QSurfaceDataArray *array() const

$prototype=const QSurfaceDataItem *itemAt(int rowIndex, int columnIndex) const
$internalMethod=|const QSurfaceDataItem *|itemAt,itemAt1|int,int

$prototype=const QSurfaceDataItem *itemAt(const QPoint &position) const
$internalMethod=|const QSurfaceDataItem *|itemAt,itemAt2|const QPoint &

//[1]const QSurfaceDataItem *itemAt(int rowIndex, int columnIndex) const
//[2]const QSurfaceDataItem *itemAt(const QPoint &position) const

HB_FUNC_STATIC( QSURFACEDATAPROXY_ITEMAT )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QSurfaceDataProxy_itemAt1();
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QSurfaceDataProxy_itemAt2();
  }
}

$prototype=void resetArray(QSurfaceDataArray *newArray)

$prototype=void setRow(int rowIndex, QSurfaceDataRow *row)

$prototype=void setRows(int rowIndex, const QSurfaceDataArray &rows)

$prototype=void setItem(int rowIndex, int columnIndex, const QSurfaceDataItem &item)
$internalMethod=|void|setItem,setItem1|int,int,const QSurfaceDataItem &

$prototype=void setItem(const QPoint &position, const QSurfaceDataItem &item)
$internalMethod=|void|setItem,setItem2|const QPoint &,const QSurfaceDataItem &

//[1]void setItem(int rowIndex, int columnIndex, const QSurfaceDataItem &item)
//[2]void setItem(const QPoint &position, const QSurfaceDataItem &item)

HB_FUNC_STATIC( QSURFACEDATAPROXY_SETITEM )
{
  if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISQSURFACEDATAITEM(3) )
  {
    QSurfaceDataProxy_setItem1();
  }
  else if( ISNUMPAR(2) && ISQPOINT(1) && ISQSURFACEDATAITEM(2) )
  {
    QSurfaceDataProxy_setItem2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=int addRow(QSurfaceDataRow *row)

$prototype=int addRows(const QSurfaceDataArray &rows)

$prototype=void insertRow(int rowIndex, QSurfaceDataRow *row)

$prototype=void insertRows(int rowIndex, const QSurfaceDataArray &rows)

$prototype=void removeRows(int rowIndex, int removeCount)
$method=|void|removeRows|int,int

#pragma ENDDUMP