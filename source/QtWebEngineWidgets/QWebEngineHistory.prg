/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWEBENGINEHISTORYITEM
#endif

CLASS QWebEngineHistory

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD clear
   METHOD items
   METHOD backItems
   METHOD forwardItems
   METHOD canGoBack
   METHOD canGoForward
   METHOD back
   METHOD forward
   METHOD goToItem
   METHOD backItem
   METHOD currentItem
   METHOD forwardItem
   METHOD itemAt
   METHOD currentItemIndex
   METHOD count

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QWebEngineHistory
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QWebEngineHistory>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QWebEngineHistory>
#endif
#endif

/*
void clear()
*/
HB_FUNC_STATIC( QWEBENGINEHISTORY_CLEAR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineHistory * obj = (QWebEngineHistory *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->clear ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QList<QWebEngineHistoryItem> items() const
*/
HB_FUNC_STATIC( QWEBENGINEHISTORY_ITEMS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineHistory * obj = (QWebEngineHistory *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QList<QWebEngineHistoryItem> list = obj->items ();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QWEBENGINEHISTORYITEM" );
      PHB_ITEM pArray = hb_itemArrayNew(0);
      int i;
      for(i=0;i<list.count();i++)
      {
        if( pDynSym )
        {
          hb_vmPushDynSym( pDynSym );
          hb_vmPushNil();
          hb_vmDo( 0 );
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( NULL );
          hb_itemPutPtr( pItem, (QWebEngineHistoryItem *) new QWebEngineHistoryItem ( list[i] ) );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          PHB_ITEM pDestroy = hb_itemNew( NULL );
          hb_itemPutL( pDestroy, true );
          hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
          hb_itemRelease( pDestroy );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
      }
      hb_itemReturnRelease(pArray);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
QList<QWebEngineHistoryItem> backItems(int maxItems) const
*/
HB_FUNC_STATIC( QWEBENGINEHISTORY_BACKITEMS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineHistory * obj = (QWebEngineHistory *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      QList<QWebEngineHistoryItem> list = obj->backItems ( PINT(1) );
      PHB_DYNS pDynSym = hb_dynsymFindName( "QWEBENGINEHISTORYITEM" );
      PHB_ITEM pArray = hb_itemArrayNew(0);
      int i;
      for(i=0;i<list.count();i++)
      {
        if( pDynSym )
        {
          hb_vmPushDynSym( pDynSym );
          hb_vmPushNil();
          hb_vmDo( 0 );
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( NULL );
          hb_itemPutPtr( pItem, (QWebEngineHistoryItem *) new QWebEngineHistoryItem ( list[i] ) );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          PHB_ITEM pDestroy = hb_itemNew( NULL );
          hb_itemPutL( pDestroy, true );
          hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
          hb_itemRelease( pDestroy );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
      }
      hb_itemReturnRelease(pArray);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
QList<QWebEngineHistoryItem> forwardItems(int maxItems) const
*/
HB_FUNC_STATIC( QWEBENGINEHISTORY_FORWARDITEMS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineHistory * obj = (QWebEngineHistory *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      QList<QWebEngineHistoryItem> list = obj->forwardItems ( PINT(1) );
      PHB_DYNS pDynSym = hb_dynsymFindName( "QWEBENGINEHISTORYITEM" );
      PHB_ITEM pArray = hb_itemArrayNew(0);
      int i;
      for(i=0;i<list.count();i++)
      {
        if( pDynSym )
        {
          hb_vmPushDynSym( pDynSym );
          hb_vmPushNil();
          hb_vmDo( 0 );
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( NULL );
          hb_itemPutPtr( pItem, (QWebEngineHistoryItem *) new QWebEngineHistoryItem ( list[i] ) );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          PHB_ITEM pDestroy = hb_itemNew( NULL );
          hb_itemPutL( pDestroy, true );
          hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
          hb_itemRelease( pDestroy );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
      }
      hb_itemReturnRelease(pArray);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
bool canGoBack() const
*/
HB_FUNC_STATIC( QWEBENGINEHISTORY_CANGOBACK )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineHistory * obj = (QWebEngineHistory *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->canGoBack () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
bool canGoForward() const
*/
HB_FUNC_STATIC( QWEBENGINEHISTORY_CANGOFORWARD )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineHistory * obj = (QWebEngineHistory *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->canGoForward () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void back()
*/
HB_FUNC_STATIC( QWEBENGINEHISTORY_BACK )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineHistory * obj = (QWebEngineHistory *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->back ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void forward()
*/
HB_FUNC_STATIC( QWEBENGINEHISTORY_FORWARD )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineHistory * obj = (QWebEngineHistory *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->forward ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void goToItem(const QWebEngineHistoryItem &item)
*/
HB_FUNC_STATIC( QWEBENGINEHISTORY_GOTOITEM )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineHistory * obj = (QWebEngineHistory *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQWEBENGINEHISTORYITEM(1) )
    {
      obj->goToItem ( *PQWEBENGINEHISTORYITEM(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QWebEngineHistoryItem backItem() const
*/
HB_FUNC_STATIC( QWEBENGINEHISTORY_BACKITEM )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineHistory * obj = (QWebEngineHistory *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QWebEngineHistoryItem * ptr = new QWebEngineHistoryItem( obj->backItem () );
      _qt5xhb_createReturnClass ( ptr, "QWEBENGINEHISTORYITEM", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
QWebEngineHistoryItem currentItem() const
*/
HB_FUNC_STATIC( QWEBENGINEHISTORY_CURRENTITEM )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineHistory * obj = (QWebEngineHistory *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QWebEngineHistoryItem * ptr = new QWebEngineHistoryItem( obj->currentItem () );
      _qt5xhb_createReturnClass ( ptr, "QWEBENGINEHISTORYITEM", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
QWebEngineHistoryItem forwardItem() const
*/
HB_FUNC_STATIC( QWEBENGINEHISTORY_FORWARDITEM )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineHistory * obj = (QWebEngineHistory *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QWebEngineHistoryItem * ptr = new QWebEngineHistoryItem( obj->forwardItem () );
      _qt5xhb_createReturnClass ( ptr, "QWEBENGINEHISTORYITEM", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
QWebEngineHistoryItem itemAt(int i) const
*/
HB_FUNC_STATIC( QWEBENGINEHISTORY_ITEMAT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineHistory * obj = (QWebEngineHistory *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      QWebEngineHistoryItem * ptr = new QWebEngineHistoryItem( obj->itemAt ( PINT(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QWEBENGINEHISTORYITEM", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
int currentItemIndex() const
*/
HB_FUNC_STATIC( QWEBENGINEHISTORY_CURRENTITEMINDEX )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineHistory * obj = (QWebEngineHistory *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->currentItemIndex () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
int count() const
*/
HB_FUNC_STATIC( QWEBENGINEHISTORY_COUNT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineHistory * obj = (QWebEngineHistory *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->count () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

HB_FUNC_STATIC( QWEBENGINEHISTORY_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QWEBENGINEHISTORY_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QWEBENGINEHISTORY_NEWFROM );
}

HB_FUNC_STATIC( QWEBENGINEHISTORY_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QWEBENGINEHISTORY_NEWFROM );
}

HB_FUNC_STATIC( QWEBENGINEHISTORY_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QWEBENGINEHISTORY_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
