$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QFONT
REQUEST QGRAPHICSLAYOUT
REQUEST QPALETTE
REQUEST QRECTF
REQUEST QSIZEF
REQUEST QSTYLE
REQUEST QPAINTERPATH
#endif

CLASS QGraphicsWidget INHERIT QGraphicsObject,QGraphicsLayoutItem

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD addAction
   METHOD adjustSize
   METHOD autoFillBackground
   METHOD focusPolicy
   METHOD focusWidget
   METHOD font
   METHOD getWindowFrameMargins
   METHOD grabShortcut
   METHOD insertAction
   METHOD isActiveWindow
   METHOD layout
   METHOD layoutDirection
   METHOD paintWindowFrame
   METHOD palette
   METHOD rect
   METHOD releaseShortcut
   METHOD removeAction
   METHOD resize
   METHOD setAttribute
   METHOD setAutoFillBackground
   METHOD setContentsMargins
   METHOD setFocusPolicy
   METHOD setFont
   METHOD setGeometry
   METHOD setLayout
   METHOD setLayoutDirection
   METHOD setPalette
   METHOD setShortcutAutoRepeat
   METHOD setShortcutEnabled
   METHOD setStyle
   METHOD setWindowFlags
   METHOD setWindowFrameMargins
   METHOD setWindowTitle
   METHOD size
   METHOD style
   METHOD testAttribute
   METHOD unsetLayoutDirection
   METHOD unsetWindowFrameMargins
   METHOD windowFlags
   METHOD windowFrameGeometry
   METHOD windowFrameRect
   METHOD windowTitle
   METHOD windowType
   METHOD boundingRect
   METHOD getContentsMargins
   METHOD paint
   METHOD shape
   METHOD type
   METHOD close
   METHOD setTabOrder

   METHOD onGeometryChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QGraphicsWidget ( QGraphicsItem * parent = 0, Qt::WindowFlags wFlags = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_NEW )
{
  QGraphicsItem * par1 = ISNIL(1)? 0 : (QGraphicsItem *) _qt5xhb_itemGetPtr(1);
  int par2 = ISNIL(2)? (int) 0 : hb_parni(2);
  QGraphicsWidget * o = new QGraphicsWidget ( par1, (Qt::WindowFlags) par2 );
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
void addAction ( QAction * action )
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_ADDACTION )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->addAction ( PQACTION(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
void adjustSize ()
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_ADJUSTSIZE )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->adjustSize ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool autoFillBackground () const
*/
$method=|bool|autoFillBackground|


/*
Qt::FocusPolicy focusPolicy () const
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_FOCUSPOLICY )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->focusPolicy () );
  }
}


/*
QGraphicsWidget * focusWidget () const
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_FOCUSWIDGET )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGraphicsWidget * ptr = obj->focusWidget ();
    _qt5xhb_createReturnClass ( ptr, "QGRAPHICSWIDGET" );
  }
}


/*
QFont font () const
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_FONT )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QFont * ptr = new QFont( obj->font () );
    _qt5xhb_createReturnClass ( ptr, "QFONT", true );
  }
}


/*
void getWindowFrameMargins ( qreal * left, qreal * top, qreal * right, qreal * bottom ) const
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_GETWINDOWFRAMEMARGINS )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1;
    qreal par2;
    qreal par3;
    qreal par4;
    obj->getWindowFrameMargins ( &par1, &par2, &par3, &par4 );
    hb_stornd( par1, 1 );
    hb_stornd( par2, 2 );
    hb_stornd( par3, 3 );
    hb_stornd( par4, 4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int grabShortcut ( const QKeySequence & sequence, Qt::ShortcutContext context = Qt::WindowShortcut )
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_GRABSHORTCUT )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par2 = ISNIL(2)? (int) Qt::WindowShortcut : hb_parni(2);
    RINT( obj->grabShortcut ( *PQKEYSEQUENCE(1), (Qt::ShortcutContext) par2 ) );
  }
}


/*
void insertAction ( QAction * before, QAction * action )
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_INSERTACTION )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->insertAction ( PQACTION(1), PQACTION(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
bool isActiveWindow () const
*/
$method=|bool|isActiveWindow|


/*
QGraphicsLayout * layout () const
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_LAYOUT )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGraphicsLayout * ptr = obj->layout ();
    _qt5xhb_createReturnClass ( ptr, "QGRAPHICSLAYOUT" );
  }
}


/*
Qt::LayoutDirection layoutDirection () const
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_LAYOUTDIRECTION )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->layoutDirection () );
  }
}


/*
virtual void paintWindowFrame ( QPainter * painter, const QStyleOptionGraphicsItem * option, QWidget * widget = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_PAINTWINDOWFRAME )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QStyleOptionGraphicsItem * par2 = (const QStyleOptionGraphicsItem *) _qt5xhb_itemGetPtr(2);
    obj->paintWindowFrame ( PQPAINTER(1), par2, OPQWIDGET(3,0) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QPalette palette () const
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_PALETTE )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPalette * ptr = new QPalette( obj->palette () );
    _qt5xhb_createReturnClass ( ptr, "QPALETTE", true );
  }
}


/*
QRectF rect () const
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_RECT )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->rect () );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}


/*
void releaseShortcut ( int id )
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_RELEASESHORTCUT )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->releaseShortcut ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void removeAction ( QAction * action )
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_REMOVEACTION )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->removeAction ( PQACTION(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void resize ( const QSizeF & size )
*/
void QGraphicsWidget_resize1 ()
{
  QGraphicsWidget * obj = (QGraphicsWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->resize ( *PQSIZEF(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void resize ( qreal w, qreal h )
*/
void QGraphicsWidget_resize2 ()
{
  QGraphicsWidget * obj = (QGraphicsWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->resize ( PQREAL(1), PQREAL(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void resize ( const QSizeF & size )
//[2]void resize ( qreal w, qreal h )

HB_FUNC_STATIC( QGRAPHICSWIDGET_RESIZE )
{
  if( ISNUMPAR(1) && ISQSIZEF(1) )
  {
    QGraphicsWidget_resize1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QGraphicsWidget_resize2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setAttribute ( Qt::WidgetAttribute attribute, bool on = true )
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_SETATTRIBUTE )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAttribute ( (Qt::WidgetAttribute) hb_parni(1), OPBOOL(2,true) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setAutoFillBackground ( bool enabled )
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_SETAUTOFILLBACKGROUND )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setAutoFillBackground ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setContentsMargins ( qreal left, qreal top, qreal right, qreal bottom )
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_SETCONTENTSMARGINS )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setContentsMargins ( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFocusPolicy ( Qt::FocusPolicy policy )
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_SETFOCUSPOLICY )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setFocusPolicy ( (Qt::FocusPolicy) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFont ( const QFont & font )
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_SETFONT )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setFont ( *PQFONT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setGeometry ( qreal x, qreal y, qreal w, qreal h )
*/
void QGraphicsWidget_setGeometry1 ()
{
  QGraphicsWidget * obj = (QGraphicsWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setGeometry ( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void setGeometry ( const QRectF & rect )
*/
void QGraphicsWidget_setGeometry2 ()
{
  QGraphicsWidget * obj = (QGraphicsWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setGeometry ( *PQRECTF(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setGeometry ( qreal x, qreal y, qreal w, qreal h )
//[2]virtual void setGeometry ( const QRectF & rect )

HB_FUNC_STATIC( QGRAPHICSWIDGET_SETGEOMETRY )
{
  if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QGraphicsWidget_setGeometry1();
  }
  else if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    QGraphicsWidget_setGeometry2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setLayout ( QGraphicsLayout * layout )
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_SETLAYOUT )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setLayout ( PQGRAPHICSLAYOUT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setLayoutDirection ( Qt::LayoutDirection direction )
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_SETLAYOUTDIRECTION )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setLayoutDirection ( (Qt::LayoutDirection) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPalette ( const QPalette & palette )
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_SETPALETTE )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setPalette ( *PQPALETTE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setShortcutAutoRepeat ( int id, bool enabled = true )
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_SETSHORTCUTAUTOREPEAT )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    if( ISNUM(1) && ISOPTLOG(2) )
    {
      obj->setShortcutAutoRepeat ( PINT(1), OPBOOL(2,true) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setShortcutEnabled ( int id, bool enabled = true )
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_SETSHORTCUTENABLED )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    if( ISNUM(1) && ISOPTLOG(2) )
    {
      obj->setShortcutEnabled ( PINT(1), OPBOOL(2,true) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setStyle ( QStyle * style )
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_SETSTYLE )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setStyle ( PQSTYLE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setWindowFlags ( Qt::WindowFlags wFlags )
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_SETWINDOWFLAGS )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setWindowFlags ( (Qt::WindowFlags) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setWindowFrameMargins ( qreal left, qreal top, qreal right, qreal bottom )
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_SETWINDOWFRAMEMARGINS )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setWindowFrameMargins ( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setWindowTitle ( const QString & title )
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_SETWINDOWTITLE )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setWindowTitle ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QSizeF size () const
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_SIZE )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSizeF * ptr = new QSizeF( obj->size () );
    _qt5xhb_createReturnClass ( ptr, "QSIZEF", true );
  }
}


/*
QStyle * style () const
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_STYLE )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStyle * ptr = obj->style ();
    _qt5xhb_createReturnClass ( ptr, "QSTYLE" );
  }
}


/*
bool testAttribute ( Qt::WidgetAttribute attribute ) const
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_TESTATTRIBUTE )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->testAttribute ( (Qt::WidgetAttribute) hb_parni(1) ) );
  }
}


/*
void unsetLayoutDirection ()
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_UNSETLAYOUTDIRECTION )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->unsetLayoutDirection ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void unsetWindowFrameMargins ()
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_UNSETWINDOWFRAMEMARGINS )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->unsetWindowFrameMargins ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
Qt::WindowFlags windowFlags () const
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_WINDOWFLAGS )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->windowFlags () );
  }
}


/*
QRectF windowFrameGeometry () const
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_WINDOWFRAMEGEOMETRY )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->windowFrameGeometry () );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}


/*
QRectF windowFrameRect () const
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_WINDOWFRAMERECT )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->windowFrameRect () );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}


/*
QString windowTitle () const
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_WINDOWTITLE )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->windowTitle () );
  }
}


/*
Qt::WindowType windowType () const
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_WINDOWTYPE )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->windowType () );
  }
}


/*
virtual QRectF boundingRect () const
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_BOUNDINGRECT )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->boundingRect () );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}


/*
virtual void getContentsMargins ( qreal * left, qreal * top, qreal * right, qreal * bottom ) const
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_GETCONTENTSMARGINS )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1;
    qreal par2;
    qreal par3;
    qreal par4;
    obj->getContentsMargins ( &par1, &par2, &par3, &par4 );
    hb_stornd( par1, 1 );
    hb_stornd( par2, 2 );
    hb_stornd( par3, 3 );
    hb_stornd( par4, 4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void paint ( QPainter * painter, const QStyleOptionGraphicsItem * option, QWidget * widget = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_PAINT )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QStyleOptionGraphicsItem * par2 = (const QStyleOptionGraphicsItem *) _qt5xhb_itemGetPtr(2);
    obj->paint ( PQPAINTER(1), par2, OPQWIDGET(3,0) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
virtual QPainterPath shape () const
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_SHAPE )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPainterPath * ptr = new QPainterPath( obj->shape () );
    _qt5xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
  }
}


/*
virtual int type () const
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_TYPE )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->type () );
  }
}


/*
bool close ()
*/
$method=|bool|close|


/*
static void setTabOrder ( QGraphicsWidget * first, QGraphicsWidget * second )
*/
HB_FUNC_STATIC( QGRAPHICSWIDGET_SETTABORDER )
{
  QGraphicsWidget::setTabOrder ( PQGRAPHICSWIDGET(1), PQGRAPHICSWIDGET(2) );
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
