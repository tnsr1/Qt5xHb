/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMODELINDEX
#endif

CLASS QHelpIndexModel INHERIT QStringListModel

   //DATA class_id INIT Class_Id_QHelpIndexModel
   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

   METHOD createIndex
   METHOD filter
   METHOD isCreatingIndex

   METHOD onIndexCreated
   METHOD onIndexCreationStarted

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QHelpIndexModel
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QHelpIndexModel>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QHelpIndexModel>
#endif


/*
void createIndex ( const QString & customFilterName )
*/
HB_FUNC_STATIC( QHELPINDEXMODEL_CREATEINDEX )
{
  QHelpIndexModel * obj = (QHelpIndexModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->createIndex ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QModelIndex filter ( const QString & filter, const QString & wildcard = QString() )
*/
HB_FUNC_STATIC( QHELPINDEXMODEL_FILTER )
{
  QHelpIndexModel * obj = (QHelpIndexModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = ISNIL(2)? QString() : QLatin1String( hb_parc(2) );
    QModelIndex * ptr = new QModelIndex( obj->filter ( par1, par2 ) );
    _qt5xhb_createReturnClass ( ptr, "QMODELINDEX", true );
  }
}


/*
bool isCreatingIndex () const
*/
HB_FUNC_STATIC( QHELPINDEXMODEL_ISCREATINGINDEX )
{
  QHelpIndexModel * obj = (QHelpIndexModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isCreatingIndex (  ) );
  }
}





#pragma ENDDUMP
