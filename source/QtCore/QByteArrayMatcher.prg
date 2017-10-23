/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBYTEARRAY
#endif

CLASS QByteArrayMatcher

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD indexIn
   METHOD pattern
   METHOD setPattern

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QByteArrayMatcher
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QByteArrayMatcher>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QByteArrayMatcher>
#endif

/*
QByteArrayMatcher ()
*/
void QByteArrayMatcher_new1 ()
{
  QByteArrayMatcher * o = new QByteArrayMatcher ();
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QByteArrayMatcher ( const QByteArray & pattern )
*/
void QByteArrayMatcher_new2 ()
{
  QByteArrayMatcher * o = new QByteArrayMatcher ( *PQBYTEARRAY(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QByteArrayMatcher ( const char * pattern, int length )
*/
void QByteArrayMatcher_new3 ()
{
  QByteArrayMatcher * o = new QByteArrayMatcher ( PCONSTCHAR(1), PINT(2) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QByteArrayMatcher ( const QByteArrayMatcher & other )
*/
void QByteArrayMatcher_new4 ()
{
  QByteArrayMatcher * o = new QByteArrayMatcher ( *PQBYTEARRAYMATCHER(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]QByteArrayMatcher()
//[2]QByteArrayMatcher(const QByteArray & pattern)
//[3]QByteArrayMatcher(const char * pattern, int length)
//[4]QByteArrayMatcher(const QByteArrayMatcher & other)

HB_FUNC_STATIC( QBYTEARRAYMATCHER_NEW )
{
  if( ISNUMPAR(0) )
  {
    QByteArrayMatcher_new1();
  }
  else if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QByteArrayMatcher_new2();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    QByteArrayMatcher_new3();
  }
  else if( ISNUMPAR(1) && ISQBYTEARRAYMATCHER(1) )
  {
    QByteArrayMatcher_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QBYTEARRAYMATCHER_DELETE )
{
  QByteArrayMatcher * obj = (QByteArrayMatcher *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
int indexIn ( const QByteArray & ba, int from = 0 ) const
*/
void QByteArrayMatcher_indexIn1 ()
{
  QByteArrayMatcher * obj = (QByteArrayMatcher *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->indexIn ( *PQBYTEARRAY(1), OPINT(2,0) ) );
  }
}

/*
int indexIn ( const char * str, int len, int from = 0 ) const
*/
void QByteArrayMatcher_indexIn2 ()
{
  QByteArrayMatcher * obj = (QByteArrayMatcher *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->indexIn ( PCONSTCHAR(1), PINT(2), OPINT(3,0) ) );
  }
}

//[1]int indexIn(const QByteArray & ba, int from = 0) const
//[2]int indexIn(const char * str, int len, int from = 0) const

HB_FUNC_STATIC( QBYTEARRAYMATCHER_INDEXIN )
{
  if( ISBETWEEN(1,2) && ISQBYTEARRAY(1) && ISOPTNUM(2) )
  {
    QByteArrayMatcher_indexIn1();
  }
  else if( ISBETWEEN(2,3) && ISCHAR(1) && ISNUM(2) && ISOPTNUM(3) )
  {
    QByteArrayMatcher_indexIn2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QByteArray pattern () const
*/
HB_FUNC_STATIC( QBYTEARRAYMATCHER_PATTERN )
{
  QByteArrayMatcher * obj = (QByteArrayMatcher *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->pattern () );
    _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}

/*
void setPattern ( const QByteArray & pattern )
*/
HB_FUNC_STATIC( QBYTEARRAYMATCHER_SETPATTERN )
{
  QByteArrayMatcher * obj = (QByteArrayMatcher *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQBYTEARRAY(1) )
    {
      obj->setPattern ( *PQBYTEARRAY(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( QBYTEARRAYMATCHER_NEWFROM )
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

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QBYTEARRAYMATCHER_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QBYTEARRAYMATCHER_NEWFROM );
}

HB_FUNC_STATIC( QBYTEARRAYMATCHER_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QBYTEARRAYMATCHER_NEWFROM );
}

HB_FUNC_STATIC( QBYTEARRAYMATCHER_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QBYTEARRAYMATCHER_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
