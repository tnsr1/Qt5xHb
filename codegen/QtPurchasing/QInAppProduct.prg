%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QInAppProduct INHERIT QObject

%%   METHOD new
   METHOD delete

   METHOD identifier
   METHOD productType
   METHOD price
   METHOD title
   METHOD description
   METHOD purchase

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QInAppProduct(const QString &price, const QString &title, const QString &description, ProductType productType, const QString &identifier, QObject *parent = Q_NULLPTR) (protected)

$prototype=~QInAppProduct()
$deleteMethod

%%
%% Q_PROPERTY(QString identifier READ identifier CONSTANT)
%%

$prototype=QString identifier() const
$method=|QString|identifier|

%%
%% Q_PROPERTY(ProductType productType READ productType CONSTANT)
%%

$prototype=ProductType productType() const
$method=|QInAppProduct::ProductType|productType|

%%
%% Q_PROPERTY(QString price READ price CONSTANT)
%%

$prototype=QString price() const
$method=|QString|price|

%%
%% Q_PROPERTY(QString title READ title CONSTANT)
%%

$prototype=QString title() const
$method=|QString|title|

%%
%% Q_PROPERTY(QString description READ description CONSTANT)
%%

$prototype=QString description() const
$method=|QString|description|

%%
%%
%%

$prototype=Q_INVOKABLE virtual void purchase() = 0
$virtualMethod=|void|purchase|

#pragma ENDDUMP