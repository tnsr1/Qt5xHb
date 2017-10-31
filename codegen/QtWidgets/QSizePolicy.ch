/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
enum QSizePolicy::ControlType
flags QSizePolicy::ControlTypes
*/
#define QSizePolicy_DefaultType                                      0x00000001
#define QSizePolicy_ButtonBox                                        0x00000002
#define QSizePolicy_CheckBox                                         0x00000004
#define QSizePolicy_ComboBox                                         0x00000008
#define QSizePolicy_Frame                                            0x00000010
#define QSizePolicy_GroupBox                                         0x00000020
#define QSizePolicy_Label                                            0x00000040
#define QSizePolicy_Line                                             0x00000080
#define QSizePolicy_LineEdit                                         0x00000100
#define QSizePolicy_PushButton                                       0x00000200
#define QSizePolicy_RadioButton                                      0x00000400
#define QSizePolicy_Slider                                           0x00000800
#define QSizePolicy_SpinBox                                          0x00001000
#define QSizePolicy_TabWidget                                        0x00002000
#define QSizePolicy_ToolButton                                       0x00004000

/*
enum QSizePolicy::PolicyFlag
*/
#define QSizePolicy_GrowFlag                                         1
#define QSizePolicy_ExpandFlag                                       2
#define QSizePolicy_ShrinkFlag                                       4
#define QSizePolicy_IgnoreFlag                                       8

/*
enum QSizePolicy::Policy
*/
#define QSizePolicy_Fixed                                            0
#define QSizePolicy_Minimum                                          QSizePolicy_GrowFlag
#define QSizePolicy_Maximum                                          QSizePolicy_ShrinkFlag
#define QSizePolicy_Preferred                                        hb_bitor(QSizePolicy_GrowFlag,QSizePolicy_ShrinkFlag)
#define QSizePolicy_Expanding                                        hb_bitor(hb_bitor(QSizePolicy_GrowFlag,QSizePolicy_ShrinkFlag),QSizePolicy_ExpandFlag)
#define QSizePolicy_MinimumExpanding                                 hb_bitor(QSizePolicy_GrowFlag,QSizePolicy_ExpandFlag)
#define QSizePolicy_Ignored                                          hb_bitor(hb_bitor(QSizePolicy_ShrinkFlag,QSizePolicy_GrowFlag),QSizePolicy_IgnoreFlag)