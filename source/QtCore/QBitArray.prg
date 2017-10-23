/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

CLASS QBitArray

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD at
   METHOD clear
   METHOD clearBit
   METHOD count
   METHOD fill
   METHOD isEmpty
   METHOD isNull
   METHOD resize
   METHOD setBit
   METHOD size
   METHOD testBit
   METHOD toggleBit
   METHOD truncate

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QBitArray
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QBitArray>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QBitArray>
#endif

/*
QBitArray ()
*/
void QBitArray_new1 ()
{
  QBitArray * o = new QBitArray ();
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QBitArray ( int size, bool value = false )
*/
void QBitArray_new2 ()
{
  QBitArray * o = new QBitArray ( PINT(1), OPBOOL(2,false) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QBitArray ( const QBitArray & other )
*/
void QBitArray_new3 ()
{
  QBitArray * o = new QBitArray ( *PQBITARRAY(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]QBitArray ()
//[2]QBitArray ( int size, bool value = false )
//[3]QBitArray ( const QBitArray & other )

HB_FUNC_STATIC( QBITARRAY_NEW )
{
  if( ISNUMPAR(0) )
  {
    QBitArray_new1();
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTLOG(2) )
  {
    QBitArray_new2();
  }
  else if( ISNUMPAR(1) && ISQBITARRAY(1) )
  {
    QBitArray_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QBITARRAY_DELETE )
{
  QBitArray * obj = (QBitArray *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
bool at ( int i ) const
*/
HB_FUNC_STATIC( QBITARRAY_AT )
{
  QBitArray * obj = (QBitArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      RBOOL( obj->at ( PINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void clear ()
*/
HB_FUNC_STATIC( QBITARRAY_CLEAR )
{
  QBitArray * obj = (QBitArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->clear ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void clearBit ( int i )
*/
HB_FUNC_STATIC( QBITARRAY_CLEARBIT )
{
  QBitArray * obj = (QBitArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->clearBit ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int count () const
*/
void QBitArray_count1 ()
{
  QBitArray * obj = (QBitArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->count () );
  }
}

/*
int count ( bool on ) const
*/
void QBitArray_count2 ()
{
  QBitArray * obj = (QBitArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->count ( PBOOL(1) ) );
  }
}

//[1]int count () const
//[2]int count ( bool on ) const

HB_FUNC_STATIC( QBITARRAY_COUNT )
{
  if( ISNUMPAR(0) )
  {
    QBitArray_count1();
  }
  else if( ISNUMPAR(1) && ISLOG(1) )
  {
    QBitArray_count2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool fill ( bool value, int size = -1 )
*/
void QBitArray_fill1 ()
{
  QBitArray * obj = (QBitArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->fill ( PBOOL(1), OPINT(2,-1) ) );
  }
}

/*
void fill ( bool value, int begin, int end )
*/
void QBitArray_fill2 ()
{
  QBitArray * obj = (QBitArray *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->fill ( PBOOL(1), PINT(2), PINT(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

//[1]bool fill ( bool value, int size = -1 )
//[2]void fill ( bool value, int begin, int end )

HB_FUNC_STATIC( QBITARRAY_FILL )
{
  if( ISBETWEEN(1,2) && ISLOG(1) && ISOPTNUM(2) )
  {
    QBitArray_fill1();
  }
  else if( ISNUMPAR(3) && ISLOG(1) && ISNUM(2) && ISNUM(3) )
  {
    QBitArray_fill2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool isEmpty () const
*/
HB_FUNC_STATIC( QBITARRAY_ISEMPTY )
{
  QBitArray * obj = (QBitArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->isEmpty () );
  }
}

/*
bool isNull () const
*/
HB_FUNC_STATIC( QBITARRAY_ISNULL )
{
  QBitArray * obj = (QBitArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->isNull () );
  }
}

/*
void resize ( int size )
*/
HB_FUNC_STATIC( QBITARRAY_RESIZE )
{
  QBitArray * obj = (QBitArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->resize ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setBit ( int i )
*/
void QBitArray_setBit1 ()
{
  QBitArray * obj = (QBitArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setBit ( PINT(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setBit ( int i, bool value )
*/
void QBitArray_setBit2 ()
{
  QBitArray * obj = (QBitArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setBit ( PINT(1), PBOOL(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void setBit ( int i )
//[2]void setBit ( int i, bool value )

HB_FUNC_STATIC( QBITARRAY_SETBIT )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QBitArray_setBit1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISLOG(2) )
  {
    QBitArray_setBit2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
int size () const
*/
HB_FUNC_STATIC( QBITARRAY_SIZE )
{
  QBitArray * obj = (QBitArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->size () );
  }
}

/*
bool testBit ( int i ) const
*/
HB_FUNC_STATIC( QBITARRAY_TESTBIT )
{
  QBitArray * obj = (QBitArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      RBOOL( obj->testBit ( PINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool toggleBit ( int i )
*/
HB_FUNC_STATIC( QBITARRAY_TOGGLEBIT )
{
  QBitArray * obj = (QBitArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      RBOOL( obj->toggleBit ( PINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void truncate ( int pos )
*/
HB_FUNC_STATIC( QBITARRAY_TRUNCATE )
{
  QBitArray * obj = (QBitArray *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->truncate ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( QBITARRAY_NEWFROM )
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

HB_FUNC_STATIC( QBITARRAY_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QBITARRAY_NEWFROM );
}

HB_FUNC_STATIC( QBITARRAY_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QBITARRAY_NEWFROM );
}

HB_FUNC_STATIC( QBITARRAY_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QBITARRAY_SETSELFDESTRUCTION )
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
