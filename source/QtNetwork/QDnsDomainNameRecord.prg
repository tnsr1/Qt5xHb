/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QDnsDomainNameRecord

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD name
   METHOD swap
   METHOD timeToLive
   METHOD value

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QDnsDomainNameRecord
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtNetwork/QDnsDomainNameRecord>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtNetwork/QDnsDomainNameRecord>
#endif

/*
QDnsDomainNameRecord()
*/
void QDnsDomainNameRecord_new1()
{
  QDnsDomainNameRecord * o = new QDnsDomainNameRecord();
  _qt5xhb_returnNewObject( o, true );
}

/*
QDnsDomainNameRecord(const QDnsDomainNameRecord & other)
*/
void QDnsDomainNameRecord_new2()
{
  QDnsDomainNameRecord * o = new QDnsDomainNameRecord( *PQDNSDOMAINNAMERECORD(1) );
  _qt5xhb_returnNewObject( o, true );
}

//[1]QDnsDomainNameRecord()
//[2]QDnsDomainNameRecord(const QDnsDomainNameRecord & other)

HB_FUNC_STATIC( QDNSDOMAINNAMERECORD_NEW )
{
  if( ISNUMPAR(0) )
  {
    QDnsDomainNameRecord_new1();
  }
  else if( ISNUMPAR(1) && ISQDNSDOMAINNAMERECORD(1) )
  {
    QDnsDomainNameRecord_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
~QDnsDomainNameRecord()
*/
HB_FUNC_STATIC( QDNSDOMAINNAMERECORD_DELETE )
{
  QDnsDomainNameRecord * obj = (QDnsDomainNameRecord *) _qt5xhb_itemGetPtrStackSelfItem();

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
QString name() const
*/
HB_FUNC_STATIC( QDNSDOMAINNAMERECORD_NAME )
{
  QDnsDomainNameRecord * obj = (QDnsDomainNameRecord *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->name() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void swap(QDnsDomainNameRecord &other) Q_DECL_NOTHROW
*/
HB_FUNC_STATIC( QDNSDOMAINNAMERECORD_SWAP )
{
  QDnsDomainNameRecord * obj = (QDnsDomainNameRecord *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQDNSDOMAINNAMERECORD(1) )
    {
#endif
      obj->swap( *PQDNSDOMAINNAMERECORD(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
quint32 timeToLive() const
*/
HB_FUNC_STATIC( QDNSDOMAINNAMERECORD_TIMETOLIVE )
{
  QDnsDomainNameRecord * obj = (QDnsDomainNameRecord *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQUINT32( obj->timeToLive() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QString value() const
*/
HB_FUNC_STATIC( QDNSDOMAINNAMERECORD_VALUE )
{
  QDnsDomainNameRecord * obj = (QDnsDomainNameRecord *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->value() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

HB_FUNC_STATIC( QDNSDOMAINNAMERECORD_NEWFROM )
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

HB_FUNC_STATIC( QDNSDOMAINNAMERECORD_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QDNSDOMAINNAMERECORD_NEWFROM );
}

HB_FUNC_STATIC( QDNSDOMAINNAMERECORD_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QDNSDOMAINNAMERECORD_NEWFROM );
}

HB_FUNC_STATIC( QDNSDOMAINNAMERECORD_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QDNSDOMAINNAMERECORD_SETSELFDESTRUCTION )
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
