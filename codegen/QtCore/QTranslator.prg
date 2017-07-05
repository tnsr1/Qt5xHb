$header

#include "hbclass.ch"

CLASS QTranslator INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD isEmpty
   METHOD load
   METHOD translate

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QTranslator(QObject * parent = 0)
*/
HB_FUNC_STATIC( QTRANSLATOR_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QTranslator * o = new QTranslator ( OPQOBJECT(1,0) );
    _qt5xhb_storePointerAndFlag( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
virtual bool isEmpty() const
*/
$method=|bool|isEmpty|

/*
bool load(const QString & filename, const QString & directory = QString(), const QString & search_delimiters = QString(), const QString & suffix = QString())
*/
void QTranslator_load1 ()
{
  QTranslator * obj = (QTranslator *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->load ( PQSTRING(1), OPQSTRING(2,QString()), OPQSTRING(3,QString()), OPQSTRING(4,QString()) ) );
  }
}

/*
bool load(const QLocale & locale, const QString & filename, const QString & prefix = QString(), const QString & directory = QString(), const QString & suffix = QString())
*/
void QTranslator_load2 ()
{
  QTranslator * obj = (QTranslator *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->load ( *PQLOCALE(1), PQSTRING(2), OPQSTRING(3,QString()), OPQSTRING(4,QString()), OPQSTRING(5,QString()) ) );
  }
}

/*
bool load(const uchar * data, int len, const QString & directory = QString())
*/
void QTranslator_load3 ()
{
  QTranslator * obj = (QTranslator *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    const uchar * par1 = (const uchar *) _qt5xhb_itemGetPtr(1);
    RBOOL( obj->load ( par1, PINT(2), OPQSTRING(3,QString()) ) );
  }
}

//[1]bool load(const QString & filename, const QString & directory = QString(), const QString & search_delimiters = QString(), const QString & suffix = QString())
//[2]bool load(const QLocale & locale, const QString & filename, const QString & prefix = QString(), const QString & directory = QString(), const QString & suffix = QString())
//[3]bool load(const uchar * data, int len, const QString & directory = QString())

HB_FUNC_STATIC( QTRANSLATOR_LOAD )
{
  if( ISBETWEEN(1,4) && ISCHAR(1) && ISOPTCHAR(2) && ISOPTCHAR(3) && ISOPTCHAR(4) )
  {
    QTranslator_load1();
  }
  else if( ISBETWEEN(2,5) && ISQLOCALE(1) && ISCHAR(2) && ISOPTCHAR(3) && ISOPTCHAR(4) && ISOPTCHAR(5) )
  {
    QTranslator_load2();
  }
  else if( ISBETWEEN(2,3) && ISCHAR(1) && ISNUM(2) && ISOPTCHAR(3) )
  {
    QTranslator_load3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual QString translate(const char * context, const char * sourceText, const char * disambiguation = 0, int n = -1) const
*/
HB_FUNC_STATIC( QTRANSLATOR_TRANSLATE )
{
  QTranslator * obj = (QTranslator *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) && ISCHAR(2) && ISOPTCHAR(3) && ISOPTNUM(4) )
    {
      RQSTRING( obj->translate ( PCONSTCHAR(1), PCONSTCHAR(2), OPCONSTCHAR(3,0), OPINT(4,-1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

#pragma ENDDUMP
