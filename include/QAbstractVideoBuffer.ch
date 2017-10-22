/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
enum QAbstractVideoBuffer::HandleType
*/
#define QAbstractVideoBuffer_NoHandle                                0
#define QAbstractVideoBuffer_GLTextureHandle                         1
#define QAbstractVideoBuffer_XvShmImageHandle                        2
#define QAbstractVideoBuffer_CoreImageHandle                         3
#define QAbstractVideoBuffer_QPixmapHandle                           4
#define QAbstractVideoBuffer_UserHandle                              1000

/*
enum QAbstractVideoBuffer::MapMode
*/
#define QAbstractVideoBuffer_NotMapped                               0x00
#define QAbstractVideoBuffer_ReadOnly                                0x01
#define QAbstractVideoBuffer_WriteOnly                               0x02
#define QAbstractVideoBuffer_ReadWrite                               hb_bitor(QAbstractVideoBuffer_ReadOnly,QAbstractVideoBuffer_WriteOnly)
