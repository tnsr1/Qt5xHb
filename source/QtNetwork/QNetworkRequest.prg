/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBYTEARRAY
REQUEST QOBJECT
REQUEST QSSLCONFIGURATION
REQUEST QURL
REQUEST QVARIANT
#endif

CLASS QNetworkRequest

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD attribute
   METHOD hasRawHeader
   METHOD header
   METHOD originatingObject
   METHOD priority
   METHOD rawHeader
   METHOD rawHeaderList
   METHOD setAttribute
   METHOD setHeader
   METHOD setOriginatingObject
   METHOD setPriority
   METHOD setRawHeader
   METHOD setSslConfiguration
   METHOD setUrl
   METHOD sslConfiguration
   METHOD url
   METHOD swap
   METHOD maximumRedirectsAllowed
   METHOD setMaximumRedirectsAllowed

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QNetworkRequest
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QNetworkRequest>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QNetworkRequest>
#endif

#include <QSslConfiguration>

/*
explicit QNetworkRequest ( const QUrl & url = QUrl() )
*/
void QNetworkRequest_new1 ()
{
  QNetworkRequest * o = new QNetworkRequest ( ISNIL(1)? QUrl() : *(QUrl *) _qt5xhb_itemGetPtr(1) );
  _qt5xhb_returnNewObject( o, true );
}

/*
QNetworkRequest ( const QNetworkRequest & other )
*/
void QNetworkRequest_new2 ()
{
  QNetworkRequest * o = new QNetworkRequest ( *PQNETWORKREQUEST(1) );
  _qt5xhb_returnNewObject( o, true );
}

//[1]explicit QNetworkRequest ( const QUrl & url = QUrl() )
//[2]QNetworkRequest ( const QNetworkRequest & other )

HB_FUNC_STATIC( QNETWORKREQUEST_NEW )
{
  if( ISBETWEEN(0,1) && (ISQURL(1)||ISNIL(1)) )
  {
    QNetworkRequest_new1();
  }
  else if( ISNUMPAR(1) && ISQNETWORKREQUEST(1) )
  {
    QNetworkRequest_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
~QNetworkRequest()
*/
HB_FUNC_STATIC( QNETWORKREQUEST_DELETE )
{
  QNetworkRequest * obj = (QNetworkRequest *) _qt5xhb_itemGetPtrStackSelfItem();

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
QVariant attribute ( Attribute code, const QVariant & defaultValue = QVariant() ) const
*/
HB_FUNC_STATIC( QNETWORKREQUEST_ATTRIBUTE )
{
  QNetworkRequest * obj = (QNetworkRequest *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(1,2) && ISNUM(1) && (ISQVARIANT(2)||ISNIL(2)) )
    {
      QVariant * ptr = new QVariant( obj->attribute ( (QNetworkRequest::Attribute) hb_parni(1), ISNIL(2)? QVariant() : *(QVariant *) _qt5xhb_itemGetPtr(2) ) );
      _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool hasRawHeader ( const QByteArray & headerName ) const
*/
HB_FUNC_STATIC( QNETWORKREQUEST_HASRAWHEADER )
{
  QNetworkRequest * obj = (QNetworkRequest *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
    {
      RBOOL( obj->hasRawHeader ( *PQBYTEARRAY(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QVariant header ( KnownHeaders header ) const
*/
HB_FUNC_STATIC( QNETWORKREQUEST_HEADER )
{
  QNetworkRequest * obj = (QNetworkRequest *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      QVariant * ptr = new QVariant( obj->header ( (QNetworkRequest::KnownHeaders) hb_parni(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QObject * originatingObject () const
*/
HB_FUNC_STATIC( QNETWORKREQUEST_ORIGINATINGOBJECT )
{
  QNetworkRequest * obj = (QNetworkRequest *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QObject * ptr = obj->originatingObject ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
Priority priority () const
*/
HB_FUNC_STATIC( QNETWORKREQUEST_PRIORITY )
{
  QNetworkRequest * obj = (QNetworkRequest *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->priority () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QByteArray rawHeader ( const QByteArray & headerName ) const
*/
HB_FUNC_STATIC( QNETWORKREQUEST_RAWHEADER )
{
  QNetworkRequest * obj = (QNetworkRequest *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
    {
      QByteArray * ptr = new QByteArray( obj->rawHeader ( *PQBYTEARRAY(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QList<QByteArray> rawHeaderList () const
*/
HB_FUNC_STATIC( QNETWORKREQUEST_RAWHEADERLIST )
{
  QNetworkRequest * obj = (QNetworkRequest *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QList<QByteArray> list = obj->rawHeaderList ();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QBYTEARRAY" );
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
          hb_itemPutPtr( pItem, (QByteArray *) new QByteArray ( list[i] ) );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          PHB_ITEM pDestroy = hb_itemNew( NULL );
          hb_itemPutL( pDestroy, true );
          hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
          hb_itemRelease( pDestroy );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
        else
        {
          hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QBYTEARRAY", HB_ERR_ARGS_BASEPARAMS );
        }
      }
      hb_itemReturnRelease(pArray);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setAttribute ( Attribute code, const QVariant & value )
*/
HB_FUNC_STATIC( QNETWORKREQUEST_SETATTRIBUTE )
{
  QNetworkRequest * obj = (QNetworkRequest *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(2) && ISNUM(1) && ISQVARIANT(2) )
    {
      obj->setAttribute ( (QNetworkRequest::Attribute) hb_parni(1), *PQVARIANT(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setHeader ( KnownHeaders header, const QVariant & value )
*/
HB_FUNC_STATIC( QNETWORKREQUEST_SETHEADER )
{
  QNetworkRequest * obj = (QNetworkRequest *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(2) && ISNUM(1) && ISQVARIANT(2) )
    {
      obj->setHeader ( (QNetworkRequest::KnownHeaders) hb_parni(1), *PQVARIANT(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setOriginatingObject ( QObject * object )
*/
HB_FUNC_STATIC( QNETWORKREQUEST_SETORIGINATINGOBJECT )
{
  QNetworkRequest * obj = (QNetworkRequest *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQOBJECT(1) )
    {
      obj->setOriginatingObject ( PQOBJECT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPriority ( Priority priority )
*/
HB_FUNC_STATIC( QNETWORKREQUEST_SETPRIORITY )
{
  QNetworkRequest * obj = (QNetworkRequest *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setPriority ( (QNetworkRequest::Priority) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setRawHeader ( const QByteArray & headerName, const QByteArray & value )
*/
HB_FUNC_STATIC( QNETWORKREQUEST_SETRAWHEADER )
{
  QNetworkRequest * obj = (QNetworkRequest *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(2) && ISQBYTEARRAY(1) && ISQBYTEARRAY(2) )
    {
      obj->setRawHeader ( *PQBYTEARRAY(1), *PQBYTEARRAY(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSslConfiguration ( const QSslConfiguration & configuration )
*/
HB_FUNC_STATIC( QNETWORKREQUEST_SETSSLCONFIGURATION )
{
  QNetworkRequest * obj = (QNetworkRequest *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQSSLCONFIGURATION(1) )
    {
      obj->setSslConfiguration ( *PQSSLCONFIGURATION(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setUrl ( const QUrl & url )
*/
HB_FUNC_STATIC( QNETWORKREQUEST_SETURL )
{
  QNetworkRequest * obj = (QNetworkRequest *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQURL(1) )
    {
      obj->setUrl ( *PQURL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QSslConfiguration sslConfiguration () const
*/
HB_FUNC_STATIC( QNETWORKREQUEST_SSLCONFIGURATION )
{
  QNetworkRequest * obj = (QNetworkRequest *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QSslConfiguration * ptr = new QSslConfiguration( obj->sslConfiguration () );
      _qt5xhb_createReturnClass ( ptr, "QSSLCONFIGURATION", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QUrl url () const
*/
HB_FUNC_STATIC( QNETWORKREQUEST_URL )
{
  QNetworkRequest * obj = (QNetworkRequest *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QUrl * ptr = new QUrl( obj->url () );
      _qt5xhb_createReturnClass ( ptr, "QURL", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void swap(QNetworkRequest &other) Q_DECL_NOTHROW
*/
HB_FUNC_STATIC( QNETWORKREQUEST_SWAP )
{
  QNetworkRequest * obj = (QNetworkRequest *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQNETWORKREQUEST(1) )
    {
      obj->swap ( *PQNETWORKREQUEST(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int maximumRedirectsAllowed() const
*/
HB_FUNC_STATIC( QNETWORKREQUEST_MAXIMUMREDIRECTSALLOWED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,6,0))
  QNetworkRequest * obj = (QNetworkRequest *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->maximumRedirectsAllowed () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setMaximumRedirectsAllowed(int maximumRedirectsAllowed)
*/
HB_FUNC_STATIC( QNETWORKREQUEST_SETMAXIMUMREDIRECTSALLOWED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,6,0))
  QNetworkRequest * obj = (QNetworkRequest *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setMaximumRedirectsAllowed ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

HB_FUNC_STATIC( QNETWORKREQUEST_NEWFROM )
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

HB_FUNC_STATIC( QNETWORKREQUEST_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QNETWORKREQUEST_NEWFROM );
}

HB_FUNC_STATIC( QNETWORKREQUEST_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QNETWORKREQUEST_NEWFROM );
}

HB_FUNC_STATIC( QNETWORKREQUEST_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QNETWORKREQUEST_SETSELFDESTRUCTION )
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
