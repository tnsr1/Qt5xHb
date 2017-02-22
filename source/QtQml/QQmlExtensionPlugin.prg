/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QQmlExtensionPlugin INHERIT QObject

   DATA class_id INIT Class_Id_QQmlExtensionPlugin
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD initializeEngine
   METHOD registerTypes
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QQmlExtensionPlugin
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QQmlExtensionPlugin>
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
#include <QQmlExtensionPlugin>
#endif
#endif


HB_FUNC_STATIC( QQMLEXTENSIONPLUGIN_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QQmlExtensionPlugin * obj = (QQmlExtensionPlugin *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual void initializeEngine(QQmlEngine * engine, const char * uri)
*/
HB_FUNC_STATIC( QQMLEXTENSIONPLUGIN_INITIALIZEENGINE )
{
  QQmlExtensionPlugin * obj = (QQmlExtensionPlugin *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QQmlEngine * par1 = (QQmlEngine *) _qtxhb_itemGetPtr(1);
    const char * par2 = hb_parc(2);
    obj->initializeEngine ( par1,  (const char *) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void registerTypes(const char * uri) = 0
*/
HB_FUNC_STATIC( QQMLEXTENSIONPLUGIN_REGISTERTYPES )
{
  QQmlExtensionPlugin * obj = (QQmlExtensionPlugin *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const char * par1 = hb_parc(1);
    obj->registerTypes (  (const char *) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



#pragma ENDDUMP
