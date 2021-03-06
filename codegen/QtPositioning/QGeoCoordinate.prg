%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtPositioning

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,2,0

$prototype=QGeoCoordinate()
$internalConstructor=5,2,0|new1|

$prototype=QGeoCoordinate(double latitude, double longitude)
$internalConstructor=5,2,0|new2|double,double

$prototype=QGeoCoordinate(double latitude, double longitude, double altitude)
$internalConstructor=5,2,0|new3|double,double,double

$prototype=QGeoCoordinate(const QGeoCoordinate &other)
$internalConstructor=5,2,0|new4|const QGeoCoordinate &

//[1]QGeoCoordinate()
//[2]QGeoCoordinate(double latitude, double longitude)
//[3]QGeoCoordinate(double latitude, double longitude, double altitude)
//[4]QGeoCoordinate(const QGeoCoordinate &other)

HB_FUNC_STATIC( QGEOCOORDINATE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QGeoCoordinate_new1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QGeoCoordinate_new2();
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    QGeoCoordinate_new3();
  }
  else if( ISNUMPAR(1) && ISQGEOCOORDINATE(1) )
  {
    QGeoCoordinate_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod=5,2,0

$prototype=bool isValid() const
$method=5,2,0|bool|isValid|

$prototype=CoordinateType type() const
$method=5,2,0|QGeoCoordinate::CoordinateType|type|

$prototype=void setLatitude(double latitude)
$method=5,2,0|void|setLatitude|double

$prototype=double latitude() const
$method=5,2,0|double|latitude|

$prototype=void setLongitude(double longitude)
$method=5,2,0|void|setLongitude|double

$prototype=double longitude() const
$method=5,2,0|double|longitude|

$prototype=void setAltitude(double altitude)
$method=5,2,0|void|setAltitude|double

$prototype=double altitude() const
$method=5,2,0|double|altitude|

$prototype=qreal distanceTo(const QGeoCoordinate &other) const
$method=5,2,0|qreal|distanceTo|const QGeoCoordinate &

$prototype=qreal azimuthTo(const QGeoCoordinate &other) const
$method=5,2,0|qreal|azimuthTo|const QGeoCoordinate &

$prototype=QGeoCoordinate atDistanceAndAzimuth(qreal distance, qreal azimuth, qreal distanceUp = 0.0) const
$method=5,2,0|QGeoCoordinate|atDistanceAndAzimuth|qreal,qreal,qreal=0.0

$prototype=QString toString(CoordinateFormat format = DegreesMinutesSecondsWithHemisphere) const
$method=5,2,0|QString|toString|QGeoCoordinate::CoordinateFormat=QGeoCoordinate::DegreesMinutesSecondsWithHemisphere

$extraMethods

#pragma ENDDUMP
