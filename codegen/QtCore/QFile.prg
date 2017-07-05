$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST UCHAR
REQUEST QBYTEARRAY
#endif

CLASS QFile INHERIT QFileDevice

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD copy
   METHOD error
   METHOD exists
   METHOD fileName
   METHOD flush
   METHOD handle
   METHOD link
   METHOD map
   METHOD open
   METHOD permissions
   METHOD remove
   METHOD rename
   METHOD resize
   METHOD setFileName
   METHOD setPermissions
   METHOD symLinkTarget
   METHOD unmap
   METHOD unsetError
   METHOD atEnd
   METHOD close
   METHOD isSequential
   METHOD pos
   METHOD seek
   METHOD size
   METHOD decodeName
   METHOD encodeName
   METHOD readLink

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QFile()
*/
void QFile_new1 ()
{
  QFile * o = new QFile ();
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QFile(const QString &name)
*/
void QFile_new2 ()
{
  QFile * o = new QFile ( PQSTRING(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
explicit QFile(QObject *parent)
*/
void QFile_new3 ()
{
  QFile * o = new QFile ( PQOBJECT(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QFile(const QString &name, QObject *parent)
*/
void QFile_new4 ()
{
  QFile * o = new QFile ( PQSTRING(1), PQOBJECT(2) );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]QFile()
//[2]QFile(const QString &name)
//[3]explicit QFile(QObject *parent)
//[4]QFile(const QString &name, QObject *parent)

HB_FUNC_STATIC( QFILE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QFile_new1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QFile_new2();
  }
  else if( ISNUMPAR(1) && ISQOBJECT(1) )
  {
    QFile_new3();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISQOBJECT(2) )
  {
    QFile_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
bool copy ( const QString & newName )
*/
void QFile_copy1 ()
{
  QFile * obj = (QFile *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->copy ( PQSTRING(1) ) );
  }
}

/*
static bool copy ( const QString & fileName, const QString & newName )
*/
void QFile_copy2 ()
{
  RBOOL( QFile::copy ( PQSTRING(1), PQSTRING(2) ) );
}

//[1]bool copy ( const QString & newName )
//[2]bool copy ( const QString & fileName, const QString & newName )

HB_FUNC_STATIC( QFILE_COPY )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QFile_copy1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    QFile_copy2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
FileError error () const
*/
HB_FUNC_STATIC( QFILE_ERROR )
{
  QFile * obj = (QFile *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->error () );
  }
}

/*
bool exists () const
*/
void QFile_exists1 ()
{
  QFile * obj = (QFile *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->exists () );
  }
}

/*
static bool exists ( const QString & fileName )
*/
void QFile_exists2 ()
{
  RBOOL( QFile::exists ( PQSTRING(1) ) );
}

//[1]bool exists () const
//[2]bool exists ( const QString & fileName )

HB_FUNC_STATIC( QFILE_EXISTS )
{
  if( ISNUMPAR(0) )
  {
    QFile_exists1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QFile_exists2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QString fileName () const
*/
$method=|QString|fileName|

/*
bool flush ()
*/
$method=|bool|flush|

/*
int handle () const
*/
$method=|int|handle|

/*
bool link ( const QString & linkName )
*/
void QFile_link1 ()
{
  QFile * obj = (QFile *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->link ( PQSTRING(1) ) );
  }
}

/*
static bool link ( const QString & fileName, const QString & linkName )
*/
void QFile_link2 ()
{
  RBOOL( QFile::link ( PQSTRING(1), PQSTRING(2) ) );
}

//[1]bool link ( const QString & linkName )
//[2]bool link ( const QString & fileName, const QString & linkName )

HB_FUNC_STATIC( QFILE_LINK )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QFile_link1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    QFile_link2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
uchar * map ( qint64 offset, qint64 size, MemoryMapFlags flags = NoOptions )
*/
HB_FUNC_STATIC( QFILE_MAP ) // TODO: corrigir retorno do metodo
{
  QFile * obj = (QFile *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) && ISOPTNUM(3) )
    {
      int par3 = ISNIL(3)? (int) QFile::NoOptions : hb_parni(3);
      uchar * ptr = obj->map ( PQINT64(1), PQINT64(2), (QFile::MemoryMapFlags) par3 );
      _qt5xhb_createReturnClass ( ptr, "UCHAR" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool open(OpenMode flags)
*/
void QFile_open1 ()
{
  QFile * obj = (QFile *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->open ( (QFile::OpenMode) hb_parni(1) ) );
  }
}

/*
bool open(FILE *f, OpenMode ioFlags, FileHandleFlags handleFlags=DontCloseHandle)
*/
void QFile_open2 ()
{
  QFile * obj = (QFile *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    FILE * par1 = (FILE *) _qt5xhb_itemGetPtr(1);
    int par3 = ISNIL(3)? (int) QFile::DontCloseHandle : hb_parni(3);
    RBOOL( obj->open ( par1, (QFile::OpenMode) hb_parni(2), (QFile::FileHandleFlags) par3 ) );
  }
}

/*
bool open(int fd, OpenMode ioFlags, FileHandleFlags handleFlags=DontCloseHandle)
*/
void QFile_open3 ()
{
  QFile * obj = (QFile *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par3 = ISNIL(3)? (int) QFile::DontCloseHandle : hb_parni(3);
    RBOOL( obj->open ( PINT(1), (QFile::OpenMode) hb_parni(2), (QFile::FileHandleFlags) par3 ) );
  }
}

//[1]bool open(OpenMode flags)
//[2]bool open(FILE *f, OpenMode ioFlags, FileHandleFlags handleFlags=DontCloseHandle)
//[3]bool open(int fd, OpenMode ioFlags, FileHandleFlags handleFlags=DontCloseHandle)

HB_FUNC_STATIC( QFILE_OPEN )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QFile_open1();
  }
  else if( ISBETWEEN(2,3) && ISPOINTER(1) && ISNUM(2) && ISOPTNUM(3) )
  {
    QFile_open2();
  }
  else if( ISBETWEEN(2,3) && ISNUM(1) && ISNUM(2) && ISOPTNUM(3) )
  {
    QFile_open3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
Permissions permissions () const
*/
void QFile_permissions1 ()
{
  QFile * obj = (QFile *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->permissions () );
  }
}

/*
static Permissions permissions ( const QString & fileName )
*/
void QFile_permissions2 ()
{
  hb_retni( QFile::permissions ( PQSTRING(1) ) );
}

//[1]Permissions permissions () const
//[2]Permissions permissions ( const QString & fileName )

HB_FUNC_STATIC( QFILE_PERMISSIONS )
{
  if( ISNUMPAR(0) )
  {
    QFile_permissions1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    QFile_permissions2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool remove ()
*/
void QFile_remove1 ()
{
  QFile * obj = (QFile *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->remove () );
  }
}

/*
static bool remove ( const QString & fileName )
*/
void QFile_remove2 ()
{
  RBOOL( QFile::remove ( PQSTRING(1) ) );
}

//[1]bool remove ()
//[2]bool remove ( const QString & fileName )

HB_FUNC_STATIC( QFILE_REMOVE )
{
  if( ISNUMPAR(0) )
  {
    QFile_remove1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QFile_remove2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool rename ( const QString & newName )
*/
void QFile_rename1 ()
{
  QFile * obj = (QFile *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->rename ( PQSTRING(1) ) );
  }
}

/*
static bool rename ( const QString & oldName, const QString & newName )
*/
void QFile_rename2 ()
{
  RBOOL( QFile::rename ( PQSTRING(1), PQSTRING(2) ) );
}

//[1]bool rename ( const QString & newName )
//[2]bool rename ( const QString & oldName, const QString & newName )

HB_FUNC_STATIC( QFILE_RENAME )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QFile_rename1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    QFile_rename2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool resize ( qint64 sz )
*/
void QFile_resize1 ()
{
  QFile * obj = (QFile *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->resize ( PQINT64(1) ) );
  }
}

/*
static bool resize ( const QString & fileName, qint64 sz )
*/
void QFile_resize2 ()
{
  RBOOL( QFile::resize ( PQSTRING(1), PQINT64(2) ) );
}

//[1]bool resize ( qint64 sz )
//[2]bool resize ( const QString & fileName, qint64 sz )

HB_FUNC_STATIC( QFILE_RESIZE )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QFile_resize1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    QFile_resize2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setFileName ( const QString & name )
*/
HB_FUNC_STATIC( QFILE_SETFILENAME )
{
  QFile * obj = (QFile *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      obj->setFileName ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool setPermissions ( Permissions permissions )
*/
void QFile_setPermissions1 ()
{
  QFile * obj = (QFile *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par1 = hb_parni(1);
    RBOOL( obj->setPermissions ( (QFile::Permissions) par1 ) );
  }
}

/*
static bool setPermissions ( const QString & fileName, Permissions permissions )
*/
void QFile_setPermissions2 ()
{
  int par2 = hb_parni(2);
  RBOOL( QFile::setPermissions ( PQSTRING(1), (QFile::Permissions) par2 ) );
}

//[1]bool setPermissions ( Permissions permissions )
//[2]bool setPermissions ( const QString & fileName, Permissions permissions )

HB_FUNC_STATIC( QFILE_SETPERMISSIONS )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QFile_setPermissions1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    QFile_setPermissions2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QString symLinkTarget () const
*/
void QFile_symLinkTarget1 ()
{
  QFile * obj = (QFile *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRING( obj->symLinkTarget () );
  }
}

/*
static QString symLinkTarget ( const QString & fileName )
*/
void QFile_symLinkTarget2 ()
{
  RQSTRING( QFile::symLinkTarget ( PQSTRING(1) ) );
}

//[1]QString symLinkTarget () const
//[2]QString symLinkTarget ( const QString & fileName )

HB_FUNC_STATIC( QFILE_SYMLINKTARGET )
{
  if( ISNUMPAR(0) )
  {
    QFile_symLinkTarget1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QFile_symLinkTarget2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool unmap ( uchar * address )
*/
HB_FUNC_STATIC( QFILE_UNMAP ) // TODO: corrigir implementacao do metodo
{
  QFile * obj = (QFile *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    uchar * par1 = (uchar *) _qt5xhb_itemGetPtr(1);
    RBOOL( obj->unmap ( par1 ) );
  }
}

/*
void unsetError ()
*/
HB_FUNC_STATIC( QFILE_UNSETERROR )
{
  QFile * obj = (QFile *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->unsetError ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual bool atEnd () const
*/
$method=|bool|atEnd|

/*
virtual void close ()
*/
$method=|void|close|

/*
virtual bool isSequential () const
*/
$method=|bool|isSequential|

/*
virtual qint64 pos () const
*/
$method=|qint64|pos|

/*
virtual bool seek ( qint64 pos )
*/
$method=|bool|seek|qint64

/*
qint64 size () const
*/
$method=|qint64|size|

/*
static QString decodeName ( const QByteArray & localFileName )
*/
void QFile_decodeName1 ()
{
  RQSTRING( QFile::decodeName ( *PQBYTEARRAY(1) ) );
}

/*
static QString decodeName ( const char * localFileName )
*/
void QFile_decodeName2 ()
{
  RQSTRING( QFile::decodeName ( PCONSTCHAR(1) ) );
}

//[1]QString decodeName ( const QByteArray & localFileName )
//[2]QString decodeName ( const char * localFileName )

HB_FUNC_STATIC( QFILE_DECODENAME )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QFile_decodeName1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QFile_decodeName2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QByteArray encodeName ( const QString & fileName )
*/
HB_FUNC_STATIC( QFILE_ENCODENAME )
{
  if( ISCHAR(1) )
  {
    QByteArray * ptr = new QByteArray( QFile::encodeName ( PQSTRING(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QString readLink() const
*/
void QFile_readLink1 ()
{
  QFile * obj = (QFile *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRING( obj->readLink () );
  }
}

/*
static QString readLink(const QString &fileName)
*/
void QFile_readLink2 ()
{
  RQSTRING( QFile::readLink ( PQSTRING(1) ) );
}

//[1]QString readLink() const
//[2]static QString readLink(const QString &fileName)

HB_FUNC_STATIC( QFILE_READLINK )
{
  if( ISNUMPAR(0) )
  {
    QFile_readLink1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QFile_readLink2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

#pragma ENDDUMP
