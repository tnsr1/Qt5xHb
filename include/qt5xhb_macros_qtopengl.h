/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QT5XHB_MACROS_QTOPENGL_H
#define QT5XHB_MACROS_QTOPENGL_H

#define ISQGLBUFFER(n)                                      _qt5xhb_isObjectDerivedFrom(n,"QGLBuffer")
#define ISQGLCOLORMAP(n)                                    _qt5xhb_isObjectDerivedFrom(n,"QGLColormap")
#define ISQGLCONTEXT(n)                                     _qt5xhb_isObjectDerivedFrom(n,"QGLContext")
#define ISQGLFORMAT(n)                                      _qt5xhb_isObjectDerivedFrom(n,"QGLFormat")
#define ISQGLFRAMEBUFFEROBJECT(n)                           _qt5xhb_isObjectDerivedFrom(n,"QGLFramebufferObject")
#define ISQGLFRAMEBUFFEROBJECTFORMAT(n)                     _qt5xhb_isObjectDerivedFrom(n,"QGLFramebufferObjectFormat")
#define ISQGLFUNCTIONS(n)                                   _qt5xhb_isObjectDerivedFrom(n,"QGLFunctions")
#define ISQGLPIXELBUFFER(n)                                 _qt5xhb_isObjectDerivedFrom(n,"QGLPixelBuffer")
#define ISQGLSHADER(n)                                      _qt5xhb_isObjectDerivedFrom(n,"QGLShader")
#define ISQGLWIDGET(n)                                      _qt5xhb_isObjectDerivedFrom(n,"QGLWidget")

#define PQGLBUFFER(n)                                       (QGLBuffer *) _qt5xhb_itemGetPtr(n)
#define PQGLCOLORMAP(n)                                     (QGLColormap *) _qt5xhb_itemGetPtr(n)
#define PQGLCONTEXT(n)                                      (QGLContext *) _qt5xhb_itemGetPtr(n)
#define PQGLFORMAT(n)                                       (QGLFormat *) _qt5xhb_itemGetPtr(n)
#define PQGLFRAMEBUFFEROBJECT(n)                            (QGLFramebufferObject *) _qt5xhb_itemGetPtr(n)
#define PQGLFRAMEBUFFEROBJECTFORMAT(n)                      (QGLFramebufferObjectFormat *) _qt5xhb_itemGetPtr(n)
#define PQGLFUNCTIONS(n)                                    (QGLFunctions *) _qt5xhb_itemGetPtr(n)
#define PQGLPIXELBUFFER(n)                                  (QGLPixelBuffer *) _qt5xhb_itemGetPtr(n)
#define PQGLSHADER(n)                                       (QGLShader *) _qt5xhb_itemGetPtr(n)
#define PQGLWIDGET(n)                                       (QGLWidget *) _qt5xhb_itemGetPtr(n)

#define OPQGLBUFFER(n,v)                                    ISNIL(n)? v : (QGLBuffer *) _qt5xhb_itemGetPtr(n)
#define OPQGLCOLORMAP(n,v)                                  ISNIL(n)? v : (QGLColormap *) _qt5xhb_itemGetPtr(n)
#define OPQGLCONTEXT(n,v)                                   ISNIL(n)? v : (QGLContext *) _qt5xhb_itemGetPtr(n)
#define OPQGLFORMAT(n,v)                                    ISNIL(n)? v : (QGLFormat *) _qt5xhb_itemGetPtr(n)
#define OPQGLFRAMEBUFFEROBJECT(n,v)                         ISNIL(n)? v : (QGLFramebufferObject *) _qt5xhb_itemGetPtr(n)
#define OPQGLFRAMEBUFFEROBJECTFORMAT(n,v)                   ISNIL(n)? v : (QGLFramebufferObjectFormat *) _qt5xhb_itemGetPtr(n)
#define OPQGLFUNCTIONS(n,v)                                 ISNIL(n)? v : (QGLFunctions *) _qt5xhb_itemGetPtr(n)
#define OPQGLPIXELBUFFER(n,v)                               ISNIL(n)? v : (QGLPixelBuffer *) _qt5xhb_itemGetPtr(n)
#define OPQGLSHADER(n,v)                                    ISNIL(n)? v : (QGLShader *) _qt5xhb_itemGetPtr(n)
#define OPQGLWIDGET(n,v)                                    ISNIL(n)? v : (QGLWidget *) _qt5xhb_itemGetPtr(n)

#endif /* QT5XHB_MACROS_QTOPENGL_H */
