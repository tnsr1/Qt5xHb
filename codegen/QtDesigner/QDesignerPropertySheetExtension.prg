$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
#endif

CLASS QDesignerPropertySheetExtension

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD count
   METHOD hasReset
   METHOD indexOf
   METHOD isAttribute
   METHOD isChanged
   METHOD isVisible
   METHOD property
   METHOD propertyGroup
   METHOD propertyName
   METHOD reset
   METHOD setAttribute
   METHOD setChanged
   METHOD setProperty
   METHOD setPropertyGroup
   METHOD setVisible

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QVariant>

$deleteMethod

$prototype=virtual int count () const = 0
$method=|int|count|

$prototype=virtual bool hasReset ( int index ) const = 0
$method=|bool|hasReset|int

$prototype=virtual int indexOf ( const QString & name ) const = 0
$method=|int|indexOf|const QString &

$prototype=virtual bool isAttribute ( int index ) const = 0
$method=|bool|isAttribute|int

$prototype=virtual bool isChanged ( int index ) const = 0
$method=|bool|isChanged|int

$prototype=virtual bool isVisible ( int index ) const = 0
$method=|bool|isVisible|int

$prototype=virtual QVariant property ( int index ) const = 0
$method=|QVariant|property|int

$prototype=virtual QString propertyGroup ( int index ) const = 0
$method=|QString|propertyGroup|int

$prototype=virtual QString propertyName ( int index ) const = 0
$method=|QString|propertyName|int

$prototype=virtual bool reset ( int index ) = 0
$method=|bool|reset|int

$prototype=virtual void setAttribute ( int index, bool attribute ) = 0
$method=|void|setAttribute|int,bool

$prototype=virtual void setChanged ( int index, bool changed ) = 0
$method=|void|setChanged|int,bool

$prototype=virtual void setProperty ( int index, const QVariant & value ) = 0
$method=|void|setProperty|int,const QVariant &

$prototype=virtual void setPropertyGroup ( int index, const QString & group ) = 0
$method=|void|setPropertyGroup|int,const QString &

$prototype=virtual void setVisible ( int index, bool visible ) = 0
$method=|void|setVisible|int,bool

$extraMethods

#pragma ENDDUMP
