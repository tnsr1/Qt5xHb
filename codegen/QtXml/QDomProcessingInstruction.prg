%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QDomProcessingInstruction INHERIT QDomNode

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD data
   METHOD nodeType
   METHOD setData
   METHOD target

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QDomProcessingInstruction ()
$constructor=|new1|

$prototype=QDomProcessingInstruction ( const QDomProcessingInstruction & x )
$constructor=|new2|const QDomProcessingInstruction &

//[1]QDomProcessingInstruction ()
//[2]QDomProcessingInstruction ( const QDomProcessingInstruction & x )

HB_FUNC_STATIC( QDOMPROCESSINGINSTRUCTION_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDOMPROCESSINGINSTRUCTION_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQDOMPROCESSINGINSTRUCTION(1) )
  {
    HB_FUNC_EXEC( QDOMPROCESSINGINSTRUCTION_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QString data () const
$method=|QString|data|

$prototype=QDomNode::NodeType nodeType () const
$method=|QDomNode::NodeType|nodeType|

$prototype=void setData ( const QString & d )
$method=|void|setData|const QString &

$prototype=QString target () const
$method=|QString|target|

#pragma ENDDUMP
