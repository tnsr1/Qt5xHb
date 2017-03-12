/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSQLRELATION
REQUEST QSQLTABLEMODEL
REQUEST QVARIANT
#endif

CLASS QSqlRelationalTableModel INHERIT QSqlTableModel

   DATA class_id INIT Class_Id_QSqlRelationalTableModel
   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD relation
   METHOD relationModel
   METHOD setRelation
   METHOD clear
   METHOD data
   METHOD removeColumns
   METHOD select
   METHOD setData
   METHOD setTable
   METHOD revertRow
   METHOD setJoinMode
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSqlRelationalTableModel
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QSqlRelationalTableModel>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QSqlRelationalTableModel>
#endif

/*
explicit QSqlRelationalTableModel ( QObject * parent = 0, QSqlDatabase db = QSqlDatabase() )
*/
HB_FUNC_STATIC( QSQLRELATIONALTABLEMODEL_NEW )
{
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qt5xhb_itemGetPtr(1);
  QSqlDatabase par2 = ISNIL(2)? QSqlDatabase() : *(QSqlDatabase *) _qt5xhb_itemGetPtr(2);
  QSqlRelationalTableModel * o = new QSqlRelationalTableModel ( par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QSqlRelationalTableModel *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


HB_FUNC_STATIC( QSQLRELATIONALTABLEMODEL_DELETE )
{
  QSqlRelationalTableModel * obj = (QSqlRelationalTableModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QSqlRelation relation ( int column ) const
*/
HB_FUNC_STATIC( QSQLRELATIONALTABLEMODEL_RELATION )
{
  QSqlRelationalTableModel * obj = (QSqlRelationalTableModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSqlRelation * ptr = new QSqlRelation( obj->relation ( (int) hb_parni(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QSQLRELATION", true );
  }
}


/*
virtual QSqlTableModel * relationModel ( int column ) const
*/
HB_FUNC_STATIC( QSQLRELATIONALTABLEMODEL_RELATIONMODEL )
{
  QSqlRelationalTableModel * obj = (QSqlRelationalTableModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSqlTableModel * ptr = obj->relationModel ( (int) hb_parni(1) );
    _qt5xhb_createReturnClass ( ptr, "QSQLTABLEMODEL" );
  }
}


/*
virtual void setRelation ( int column, const QSqlRelation & relation )
*/
HB_FUNC_STATIC( QSQLRELATIONALTABLEMODEL_SETRELATION )
{
  QSqlRelationalTableModel * obj = (QSqlRelationalTableModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSqlRelation * par2 = (QSqlRelation *) _qt5xhb_itemGetPtr(2);
    obj->setRelation ( (int) hb_parni(1), *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void clear ()
*/
HB_FUNC_STATIC( QSQLRELATIONALTABLEMODEL_CLEAR )
{
  QSqlRelationalTableModel * obj = (QSqlRelationalTableModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clear (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QVariant data ( const QModelIndex & index, int role = Qt::DisplayRole ) const
*/
HB_FUNC_STATIC( QSQLRELATIONALTABLEMODEL_DATA )
{
  QSqlRelationalTableModel * obj = (QSqlRelationalTableModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) _qt5xhb_itemGetPtr(1);
    QVariant * ptr = new QVariant( obj->data ( *par1, (int) ISNIL(2)? Qt::DisplayRole : hb_parni(2) ) );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
bool removeColumns ( int column, int count, const QModelIndex & parent = QModelIndex() )
*/
HB_FUNC_STATIC( QSQLRELATIONALTABLEMODEL_REMOVECOLUMNS )
{
  QSqlRelationalTableModel * obj = (QSqlRelationalTableModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex par3 = ISNIL(3)? QModelIndex() : *(QModelIndex *) _qt5xhb_itemGetPtr(3);
    hb_retl( obj->removeColumns ( (int) hb_parni(1), (int) hb_parni(2), par3 ) );
  }
}


/*
bool select ()
*/
HB_FUNC_STATIC( QSQLRELATIONALTABLEMODEL_SELECT )
{
  QSqlRelationalTableModel * obj = (QSqlRelationalTableModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->select (  ) );
  }
}


/*
bool setData ( const QModelIndex & index, const QVariant & value, int role = Qt::EditRole )
*/
HB_FUNC_STATIC( QSQLRELATIONALTABLEMODEL_SETDATA )
{
  QSqlRelationalTableModel * obj = (QSqlRelationalTableModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) _qt5xhb_itemGetPtr(1);
    QVariant * par2 = (QVariant *) _qt5xhb_itemGetPtr(2);
    hb_retl( obj->setData ( *par1, *par2, (int) ISNIL(3)? Qt::EditRole : hb_parni(3) ) );
  }
}


/*
void setTable ( const QString & table )
*/
HB_FUNC_STATIC( QSQLRELATIONALTABLEMODEL_SETTABLE )
{
  QSqlRelationalTableModel * obj = (QSqlRelationalTableModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setTable ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void revertRow ( int row )
*/
HB_FUNC_STATIC( QSQLRELATIONALTABLEMODEL_REVERTROW )
{
  QSqlRelationalTableModel * obj = (QSqlRelationalTableModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->revertRow ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setJoinMode( QSqlRelationalTableModel::JoinMode joinMode )
*/
HB_FUNC_STATIC( QSQLRELATIONALTABLEMODEL_SETJOINMODE )
{
  QSqlRelationalTableModel * obj = (QSqlRelationalTableModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setJoinMode (  (QSqlRelationalTableModel::JoinMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



#pragma ENDDUMP
