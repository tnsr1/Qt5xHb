/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QCOLOR
REQUEST QLINEARGRADIENT
REQUEST QQUATERNION
#endif

CLASS QAbstract3DSeries INHERIT QObject

   METHOD delete
   METHOD type
   METHOD itemLabelFormat
   METHOD setItemLabelFormat
   METHOD isVisible
   METHOD setVisible
   METHOD mesh
   METHOD setMesh
   METHOD isMeshSmooth
   METHOD setMeshSmooth
   METHOD meshRotation
   METHOD setMeshRotation
   METHOD userDefinedMesh
   METHOD setUserDefinedMesh
   METHOD colorStyle
   METHOD setColorStyle
   METHOD baseColor
   METHOD setBaseColor
   METHOD baseGradient
   METHOD setBaseGradient
   METHOD singleHighlightColor
   METHOD setSingleHighlightColor
   METHOD singleHighlightGradient
   METHOD setSingleHighlightGradient
   METHOD multiHighlightColor
   METHOD setMultiHighlightColor
   METHOD multiHighlightGradient
   METHOD setMultiHighlightGradient
   METHOD name
   METHOD setName
   METHOD itemLabel
   METHOD isItemLabelVisible
   METHOD setItemLabelVisible
   METHOD setMeshAxisAndAngle

   METHOD onBaseColorChanged
   METHOD onBaseGradientChanged
   METHOD onColorStyleChanged
   METHOD onItemLabelChanged
   METHOD onItemLabelFormatChanged
   METHOD onItemLabelVisibilityChanged
   METHOD onMeshChanged
   METHOD onMeshRotationChanged
   METHOD onMeshSmoothChanged
   METHOD onMultiHighlightColorChanged
   METHOD onMultiHighlightGradientChanged
   METHOD onNameChanged
   METHOD onSingleHighlightColorChanged
   METHOD onSingleHighlightGradientChanged
   METHOD onUserDefinedMeshChanged
   METHOD onVisibilityChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QAbstract3DSeries
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtDataVisualization/QAbstract3DSeries>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtDataVisualization/QAbstract3DSeries>
#endif

using namespace QtDataVisualization;

/*
explicit QAbstract3DSeries(QAbstract3DSeriesPrivate *d, QObject *parent = Q_NULLPTR) [protected]
*/

/*
virtual ~QAbstract3DSeries()
*/
HB_FUNC_STATIC( QABSTRACT3DSERIES_DELETE )
{
  QAbstract3DSeries * obj = (QAbstract3DSeries *) _qt5xhb_itemGetPtrStackSelfItem();

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
SeriesType type() const
*/
HB_FUNC_STATIC( QABSTRACT3DSERIES_TYPE )
{
  QAbstract3DSeries * obj = (QAbstract3DSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->type() );
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
QString itemLabelFormat() const
*/
HB_FUNC_STATIC( QABSTRACT3DSERIES_ITEMLABELFORMAT )
{
  QAbstract3DSeries * obj = (QAbstract3DSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->itemLabelFormat() );
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
void setItemLabelFormat(const QString &format)
*/
HB_FUNC_STATIC( QABSTRACT3DSERIES_SETITEMLABELFORMAT )
{
  QAbstract3DSeries * obj = (QAbstract3DSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->setItemLabelFormat( PQSTRING(1) );
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
bool isVisible() const
*/
HB_FUNC_STATIC( QABSTRACT3DSERIES_ISVISIBLE )
{
  QAbstract3DSeries * obj = (QAbstract3DSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isVisible() );
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
void setVisible(bool visible)
*/
HB_FUNC_STATIC( QABSTRACT3DSERIES_SETVISIBLE )
{
  QAbstract3DSeries * obj = (QAbstract3DSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setVisible( PBOOL(1) );
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
Mesh mesh() const
*/
HB_FUNC_STATIC( QABSTRACT3DSERIES_MESH )
{
  QAbstract3DSeries * obj = (QAbstract3DSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->mesh() );
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
void setMesh(Mesh mesh)
*/
HB_FUNC_STATIC( QABSTRACT3DSERIES_SETMESH )
{
  QAbstract3DSeries * obj = (QAbstract3DSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setMesh( (QAbstract3DSeries::Mesh) hb_parni(1) );
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
bool isMeshSmooth() const
*/
HB_FUNC_STATIC( QABSTRACT3DSERIES_ISMESHSMOOTH )
{
  QAbstract3DSeries * obj = (QAbstract3DSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isMeshSmooth() );
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
void setMeshSmooth(bool enable)
*/
HB_FUNC_STATIC( QABSTRACT3DSERIES_SETMESHSMOOTH )
{
  QAbstract3DSeries * obj = (QAbstract3DSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setMeshSmooth( PBOOL(1) );
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
QQuaternion meshRotation() const
*/
HB_FUNC_STATIC( QABSTRACT3DSERIES_MESHROTATION )
{
  QAbstract3DSeries * obj = (QAbstract3DSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QQuaternion * ptr = new QQuaternion( obj->meshRotation() );
      _qt5xhb_createReturnClass( ptr, "QQUATERNION", true );
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
void setMeshRotation(const QQuaternion &rotation)
*/
HB_FUNC_STATIC( QABSTRACT3DSERIES_SETMESHROTATION )
{
  QAbstract3DSeries * obj = (QAbstract3DSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQQUATERNION(1) )
    {
#endif
      obj->setMeshRotation( *PQQUATERNION(1) );
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
QString userDefinedMesh() const
*/
HB_FUNC_STATIC( QABSTRACT3DSERIES_USERDEFINEDMESH )
{
  QAbstract3DSeries * obj = (QAbstract3DSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->userDefinedMesh() );
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
void setUserDefinedMesh(const QString &fileName)
*/
HB_FUNC_STATIC( QABSTRACT3DSERIES_SETUSERDEFINEDMESH )
{
  QAbstract3DSeries * obj = (QAbstract3DSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->setUserDefinedMesh( PQSTRING(1) );
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
Q3DTheme::ColorStyle colorStyle() const
*/
HB_FUNC_STATIC( QABSTRACT3DSERIES_COLORSTYLE )
{
  QAbstract3DSeries * obj = (QAbstract3DSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->colorStyle() );
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
void setColorStyle(Q3DTheme::ColorStyle style)
*/
HB_FUNC_STATIC( QABSTRACT3DSERIES_SETCOLORSTYLE )
{
  QAbstract3DSeries * obj = (QAbstract3DSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setColorStyle( (Q3DTheme::ColorStyle) hb_parni(1) );
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
QColor baseColor() const
*/
HB_FUNC_STATIC( QABSTRACT3DSERIES_BASECOLOR )
{
  QAbstract3DSeries * obj = (QAbstract3DSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QColor * ptr = new QColor( obj->baseColor() );
      _qt5xhb_createReturnClass( ptr, "QCOLOR", true );
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
void setBaseColor(const QColor &color)
*/
HB_FUNC_STATIC( QABSTRACT3DSERIES_SETBASECOLOR )
{
  QAbstract3DSeries * obj = (QAbstract3DSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && (ISQCOLOR(1)||ISCHAR(1)) )
    {
#endif
      obj->setBaseColor( ISOBJECT(1)? *(QColor *) _qt5xhb_itemGetPtr(1) : QColor(hb_parc(1)) );
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
QLinearGradient baseGradient() const
*/
HB_FUNC_STATIC( QABSTRACT3DSERIES_BASEGRADIENT )
{
  QAbstract3DSeries * obj = (QAbstract3DSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QLinearGradient * ptr = new QLinearGradient( obj->baseGradient() );
      _qt5xhb_createReturnClass( ptr, "QLINEARGRADIENT", true );
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
void setBaseGradient(const QLinearGradient &gradient)
*/
HB_FUNC_STATIC( QABSTRACT3DSERIES_SETBASEGRADIENT )
{
  QAbstract3DSeries * obj = (QAbstract3DSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQLINEARGRADIENT(1) )
    {
#endif
      obj->setBaseGradient( *PQLINEARGRADIENT(1) );
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
QColor singleHighlightColor() const
*/
HB_FUNC_STATIC( QABSTRACT3DSERIES_SINGLEHIGHLIGHTCOLOR )
{
  QAbstract3DSeries * obj = (QAbstract3DSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QColor * ptr = new QColor( obj->singleHighlightColor() );
      _qt5xhb_createReturnClass( ptr, "QCOLOR", true );
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
void setSingleHighlightColor(const QColor &color)
*/
HB_FUNC_STATIC( QABSTRACT3DSERIES_SETSINGLEHIGHLIGHTCOLOR )
{
  QAbstract3DSeries * obj = (QAbstract3DSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && (ISQCOLOR(1)||ISCHAR(1)) )
    {
#endif
      obj->setSingleHighlightColor( ISOBJECT(1)? *(QColor *) _qt5xhb_itemGetPtr(1) : QColor(hb_parc(1)) );
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
QLinearGradient singleHighlightGradient() const
*/
HB_FUNC_STATIC( QABSTRACT3DSERIES_SINGLEHIGHLIGHTGRADIENT )
{
  QAbstract3DSeries * obj = (QAbstract3DSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QLinearGradient * ptr = new QLinearGradient( obj->singleHighlightGradient() );
      _qt5xhb_createReturnClass( ptr, "QLINEARGRADIENT", true );
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
void setSingleHighlightGradient(const QLinearGradient &gradient)
*/
HB_FUNC_STATIC( QABSTRACT3DSERIES_SETSINGLEHIGHLIGHTGRADIENT )
{
  QAbstract3DSeries * obj = (QAbstract3DSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQLINEARGRADIENT(1) )
    {
#endif
      obj->setSingleHighlightGradient( *PQLINEARGRADIENT(1) );
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
QColor multiHighlightColor() const
*/
HB_FUNC_STATIC( QABSTRACT3DSERIES_MULTIHIGHLIGHTCOLOR )
{
  QAbstract3DSeries * obj = (QAbstract3DSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QColor * ptr = new QColor( obj->multiHighlightColor() );
      _qt5xhb_createReturnClass( ptr, "QCOLOR", true );
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
void setMultiHighlightColor(const QColor &color)
*/
HB_FUNC_STATIC( QABSTRACT3DSERIES_SETMULTIHIGHLIGHTCOLOR )
{
  QAbstract3DSeries * obj = (QAbstract3DSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && (ISQCOLOR(1)||ISCHAR(1)) )
    {
#endif
      obj->setMultiHighlightColor( ISOBJECT(1)? *(QColor *) _qt5xhb_itemGetPtr(1) : QColor(hb_parc(1)) );
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
QLinearGradient multiHighlightGradient() const
*/
HB_FUNC_STATIC( QABSTRACT3DSERIES_MULTIHIGHLIGHTGRADIENT )
{
  QAbstract3DSeries * obj = (QAbstract3DSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QLinearGradient * ptr = new QLinearGradient( obj->multiHighlightGradient() );
      _qt5xhb_createReturnClass( ptr, "QLINEARGRADIENT", true );
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
void setMultiHighlightGradient(const QLinearGradient &gradient)
*/
HB_FUNC_STATIC( QABSTRACT3DSERIES_SETMULTIHIGHLIGHTGRADIENT )
{
  QAbstract3DSeries * obj = (QAbstract3DSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQLINEARGRADIENT(1) )
    {
#endif
      obj->setMultiHighlightGradient( *PQLINEARGRADIENT(1) );
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
QString name() const
*/
HB_FUNC_STATIC( QABSTRACT3DSERIES_NAME )
{
  QAbstract3DSeries * obj = (QAbstract3DSeries *) _qt5xhb_itemGetPtrStackSelfItem();

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
void setName(const QString &name)
*/
HB_FUNC_STATIC( QABSTRACT3DSERIES_SETNAME )
{
  QAbstract3DSeries * obj = (QAbstract3DSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->setName( PQSTRING(1) );
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
QString itemLabel() const
*/
HB_FUNC_STATIC( QABSTRACT3DSERIES_ITEMLABEL )
{
  QAbstract3DSeries * obj = (QAbstract3DSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->itemLabel() );
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
bool isItemLabelVisible() const
*/
HB_FUNC_STATIC( QABSTRACT3DSERIES_ISITEMLABELVISIBLE )
{
  QAbstract3DSeries * obj = (QAbstract3DSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isItemLabelVisible() );
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
void setItemLabelVisible(bool visible)
*/
HB_FUNC_STATIC( QABSTRACT3DSERIES_SETITEMLABELVISIBLE )
{
  QAbstract3DSeries * obj = (QAbstract3DSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setItemLabelVisible( PBOOL(1) );
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
Q_INVOKABLE void setMeshAxisAndAngle(const QVector3D &axis, float angle)
*/
HB_FUNC_STATIC( QABSTRACT3DSERIES_SETMESHAXISANDANGLE )
{
  QAbstract3DSeries * obj = (QAbstract3DSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISQVECTOR3D(1) && ISNUM(2) )
    {
#endif
      obj->setMeshAxisAndAngle( *PQVECTOR3D(1), PFLOAT(2) );
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

void QAbstract3DSeriesSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QABSTRACT3DSERIES_ONBASECOLORCHANGED )
{
  QAbstract3DSeriesSlots_connect_signal( "baseColorChanged(QColor)", "baseColorChanged(QColor)" );
}

HB_FUNC_STATIC( QABSTRACT3DSERIES_ONBASEGRADIENTCHANGED )
{
  QAbstract3DSeriesSlots_connect_signal( "baseGradientChanged(QLinearGradient)", "baseGradientChanged(QLinearGradient)" );
}

HB_FUNC_STATIC( QABSTRACT3DSERIES_ONCOLORSTYLECHANGED )
{
  QAbstract3DSeriesSlots_connect_signal( "colorStyleChanged(Q3DTheme::ColorStyle)", "colorStyleChanged(Q3DTheme::ColorStyle)" );
}

HB_FUNC_STATIC( QABSTRACT3DSERIES_ONITEMLABELCHANGED )
{
  QAbstract3DSeriesSlots_connect_signal( "itemLabelChanged(QString)", "itemLabelChanged(QString)" );
}

HB_FUNC_STATIC( QABSTRACT3DSERIES_ONITEMLABELFORMATCHANGED )
{
  QAbstract3DSeriesSlots_connect_signal( "itemLabelFormatChanged(QString)", "itemLabelFormatChanged(QString)" );
}

HB_FUNC_STATIC( QABSTRACT3DSERIES_ONITEMLABELVISIBILITYCHANGED )
{
  QAbstract3DSeriesSlots_connect_signal( "itemLabelVisibilityChanged(bool)", "itemLabelVisibilityChanged(bool)" );
}

HB_FUNC_STATIC( QABSTRACT3DSERIES_ONMESHCHANGED )
{
  QAbstract3DSeriesSlots_connect_signal( "meshChanged(QAbstract3DSeries::Mesh)", "meshChanged(QAbstract3DSeries::Mesh)" );
}

HB_FUNC_STATIC( QABSTRACT3DSERIES_ONMESHROTATIONCHANGED )
{
  QAbstract3DSeriesSlots_connect_signal( "meshRotationChanged(QQuaternion)", "meshRotationChanged(QQuaternion)" );
}

HB_FUNC_STATIC( QABSTRACT3DSERIES_ONMESHSMOOTHCHANGED )
{
  QAbstract3DSeriesSlots_connect_signal( "meshSmoothChanged(bool)", "meshSmoothChanged(bool)" );
}

HB_FUNC_STATIC( QABSTRACT3DSERIES_ONMULTIHIGHLIGHTCOLORCHANGED )
{
  QAbstract3DSeriesSlots_connect_signal( "multiHighlightColorChanged(QColor)", "multiHighlightColorChanged(QColor)" );
}

HB_FUNC_STATIC( QABSTRACT3DSERIES_ONMULTIHIGHLIGHTGRADIENTCHANGED )
{
  QAbstract3DSeriesSlots_connect_signal( "multiHighlightGradientChanged(QLinearGradient)", "multiHighlightGradientChanged(QLinearGradient)" );
}

HB_FUNC_STATIC( QABSTRACT3DSERIES_ONNAMECHANGED )
{
  QAbstract3DSeriesSlots_connect_signal( "nameChanged(QString)", "nameChanged(QString)" );
}

HB_FUNC_STATIC( QABSTRACT3DSERIES_ONSINGLEHIGHLIGHTCOLORCHANGED )
{
  QAbstract3DSeriesSlots_connect_signal( "singleHighlightColorChanged(QColor)", "singleHighlightColorChanged(QColor)" );
}

HB_FUNC_STATIC( QABSTRACT3DSERIES_ONSINGLEHIGHLIGHTGRADIENTCHANGED )
{
  QAbstract3DSeriesSlots_connect_signal( "singleHighlightGradientChanged(QLinearGradient)", "singleHighlightGradientChanged(QLinearGradient)" );
}

HB_FUNC_STATIC( QABSTRACT3DSERIES_ONUSERDEFINEDMESHCHANGED )
{
  QAbstract3DSeriesSlots_connect_signal( "userDefinedMeshChanged(QString)", "userDefinedMeshChanged(QString)" );
}

HB_FUNC_STATIC( QABSTRACT3DSERIES_ONVISIBILITYCHANGED )
{
  QAbstract3DSeriesSlots_connect_signal( "visibilityChanged(bool)", "visibilityChanged(bool)" );
}

#pragma ENDDUMP
