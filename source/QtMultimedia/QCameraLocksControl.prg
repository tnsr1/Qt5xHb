/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QCameraLocksControl INHERIT QMediaControl

   DATA class_id INIT Class_Id_QCameraLocksControl
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD lockStatus
   METHOD searchAndLock
   METHOD supportedLocks
   METHOD unlock
   METHOD onLockStatusChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QCameraLocksControl
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QCameraLocksControl>
#endif
#endif

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"

#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif

#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QCameraLocksControl>
#endif
#endif

HB_FUNC_STATIC( QCAMERALOCKSCONTROL_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QCameraLocksControl * obj = (QCameraLocksControl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
#endif
}

/*
virtual QCamera::LockStatus lockStatus(QCamera::LockType lock) const = 0
*/
HB_FUNC_STATIC( QCAMERALOCKSCONTROL_LOCKSTATUS )
{
  QCameraLocksControl * obj = (QCameraLocksControl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    int i = obj->lockStatus (  (QCamera::LockType) par1 );
    hb_retni( i );
  }
}


/*
virtual void searchAndLock(QCamera::LockTypes locks) = 0
*/
HB_FUNC_STATIC( QCAMERALOCKSCONTROL_SEARCHANDLOCK )
{
  QCameraLocksControl * obj = (QCameraLocksControl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->searchAndLock (  (QCamera::LockTypes) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QCamera::LockTypes supportedLocks() const = 0
*/
HB_FUNC_STATIC( QCAMERALOCKSCONTROL_SUPPORTEDLOCKS )
{
  QCameraLocksControl * obj = (QCameraLocksControl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->supportedLocks (  );
    hb_retni( i );
  }
}


/*
virtual void unlock(QCamera::LockTypes locks) = 0
*/
HB_FUNC_STATIC( QCAMERALOCKSCONTROL_UNLOCK )
{
  QCameraLocksControl * obj = (QCameraLocksControl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->unlock (  (QCamera::LockTypes) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
