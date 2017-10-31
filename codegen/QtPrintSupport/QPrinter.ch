$header

/*
enum QPrinter::ColorMode
*/
#define QPrinter_GrayScale                                           0
#define QPrinter_Color                                               1

/*
enum QPrinter::DuplexMode
*/
#define QPrinter_DuplexNone                                          0
#define QPrinter_DuplexAuto                                          1
#define QPrinter_DuplexLongSide                                      2
#define QPrinter_DuplexShortSide                                     3

/*
enum QPrinter::Orientation
*/
#define QPrinter_Portrait                                            0
#define QPrinter_Landscape                                           1

/*
enum QPrinter::OutputFormat
*/
#define QPrinter_NativeFormat                                        0
#define QPrinter_PdfFormat                                           1
#define QPrinter_PostScriptFormat                                    2 // TODO: verificar este formato no Qt 5.x.x

/*
enum QPrinter::PageOrder
*/
#define QPrinter_FirstPageFirst                                      0
#define QPrinter_LastPageFirst                                       1

/*
enum QPrinter::PaperSize
*/
#define QPrinter_A4                                                  0
#define QPrinter_B5                                                  1
#define QPrinter_Letter                                              2
#define QPrinter_Legal                                               3
#define QPrinter_Executive                                           4
#define QPrinter_A0                                                  5
#define QPrinter_A1                                                  6
#define QPrinter_A2                                                  7
#define QPrinter_A3                                                  8
#define QPrinter_A5                                                  9
#define QPrinter_A6                                                  10
#define QPrinter_A7                                                  11
#define QPrinter_A8                                                  12
#define QPrinter_A9                                                  13
#define QPrinter_B0                                                  14
#define QPrinter_B1                                                  15
#define QPrinter_B10                                                 16
#define QPrinter_B2                                                  17
#define QPrinter_B3                                                  18
#define QPrinter_B4                                                  19
#define QPrinter_B6                                                  20
#define QPrinter_B7                                                  21
#define QPrinter_B8                                                  22
#define QPrinter_B9                                                  23
#define QPrinter_C5E                                                 24
#define QPrinter_Comm10E                                             25
#define QPrinter_DLE                                                 26
#define QPrinter_Folio                                               27
#define QPrinter_Ledger                                              28
#define QPrinter_Tabloid                                             29
#define QPrinter_Custom                                              30
#define QPrinter_A10                                                 31
#define QPrinter_A3Extra                                             32
#define QPrinter_A4Extra                                             33
#define QPrinter_A4Plus                                              34
#define QPrinter_A4Small                                             35
#define QPrinter_A5Extra                                             36
#define QPrinter_B5Extra                                             37
#define QPrinter_JisB0                                               38
#define QPrinter_JisB1                                               39
#define QPrinter_JisB2                                               40
#define QPrinter_JisB3                                               41
#define QPrinter_JisB4                                               42
#define QPrinter_JisB5                                               43
#define QPrinter_JisB6                                               44
#define QPrinter_JisB7                                               45
#define QPrinter_JisB8                                               46
#define QPrinter_JisB9                                               47
#define QPrinter_JisB10                                              48
#define QPrinter_AnsiA                                               QPrinter_Letter
#define QPrinter_AnsiB                                               QPrinter_Ledger
#define QPrinter_AnsiC                                               49
#define QPrinter_AnsiD                                               50
#define QPrinter_AnsiE                                               51
#define QPrinter_LegalExtra                                          52
#define QPrinter_LetterExtra                                         53
#define QPrinter_LetterPlus                                          54
#define QPrinter_LetterSmall                                         55
#define QPrinter_TabloidExtra                                        56
#define QPrinter_ArchA                                               57
#define QPrinter_ArchB                                               58
#define QPrinter_ArchC                                               59
#define QPrinter_ArchD                                               60
#define QPrinter_ArchE                                               61
#define QPrinter_Imperial7x9                                         62
#define QPrinter_Imperial8x10                                        63
#define QPrinter_Imperial9x11                                        64
#define QPrinter_Imperial9x12                                        65
#define QPrinter_Imperial10x11                                       66
#define QPrinter_Imperial10x13                                       67
#define QPrinter_Imperial10x14                                       68
#define QPrinter_Imperial12x11                                       69
#define QPrinter_Imperial15x11                                       70
#define QPrinter_ExecutiveStandard                                   71
#define QPrinter_Note                                                72
#define QPrinter_Quarto                                              73
#define QPrinter_Statement                                           74
#define QPrinter_SuperA                                              75
#define QPrinter_SuperB                                              76
#define QPrinter_Postcard                                            77
#define QPrinter_DoublePostcard                                      78
#define QPrinter_Prc16K                                              79
#define QPrinter_Prc32K                                              80
#define QPrinter_Prc32KBig                                           81
#define QPrinter_FanFoldUS                                           82
#define QPrinter_FanFoldGerman                                       83
#define QPrinter_FanFoldGermanLegal                                  84
#define QPrinter_EnvelopeB4                                          85
#define QPrinter_EnvelopeB5                                          86
#define QPrinter_EnvelopeB6                                          87
#define QPrinter_EnvelopeC0                                          88
#define QPrinter_EnvelopeC1                                          89
#define QPrinter_EnvelopeC2                                          90
#define QPrinter_EnvelopeC3                                          91
#define QPrinter_EnvelopeC4                                          92
#define QPrinter_EnvelopeC5                                          QPrinter_C5E
#define QPrinter_EnvelopeC6                                          93
#define QPrinter_EnvelopeC65                                         94
#define QPrinter_EnvelopeC7                                          95
#define QPrinter_EnvelopeDL                                          QPrinter_DLE
#define QPrinter_Envelope9                                           96
#define QPrinter_Envelope10                                          QPrinter_Comm10E
#define QPrinter_Envelope11                                          97
#define QPrinter_Envelope12                                          98
#define QPrinter_Envelope14                                          99
#define QPrinter_EnvelopeMonarch                                     100
#define QPrinter_EnvelopePersonal                                    101
#define QPrinter_EnvelopeChou3                                       102
#define QPrinter_EnvelopeChou4                                       103
#define QPrinter_EnvelopeInvite                                      104
#define QPrinter_EnvelopeItalian                                     105
#define QPrinter_EnvelopeKaku2                                       106
#define QPrinter_EnvelopeKaku3                                       107
#define QPrinter_EnvelopePrc1                                        108
#define QPrinter_EnvelopePrc2                                        109
#define QPrinter_EnvelopePrc3                                        110
#define QPrinter_EnvelopePrc4                                        111
#define QPrinter_EnvelopePrc5                                        112
#define QPrinter_EnvelopePrc6                                        113
#define QPrinter_EnvelopePrc7                                        114
#define QPrinter_EnvelopePrc8                                        115
#define QPrinter_EnvelopePrc9                                        116
#define QPrinter_EnvelopePrc10                                       117
#define QPrinter_EnvelopeYou4                                        118
#define QPrinter_LastPageSize                                        QPrinter_EnvelopeYou4
#define QPrinter_NPageSize                                           QPrinter_LastPageSize
#define QPrinter_NPaperSize                                          QPrinter_LastPageSize

/*
enum QPrinter::PaperSource
*/
#define QPrinter_OnlyOne                                             0
#define QPrinter_Lower                                               1
#define QPrinter_Middle                                              2
#define QPrinter_Manual                                              3
#define QPrinter_Envelope                                            4
#define QPrinter_EnvelopeManual                                      5
#define QPrinter_Auto                                                6
#define QPrinter_Tractor                                             7
#define QPrinter_SmallFormat                                         8
#define QPrinter_LargeFormat                                         9
#define QPrinter_LargeCapacity                                       10
#define QPrinter_Cassette                                            11
#define QPrinter_FormSource                                          12
#define QPrinter_MaxPageSource                                       13 // deprecated
#define QPrinter_CustomSource                                        14
#define QPrinter_LastPaperSource                                     QPrinter_CustomSource
#define QPrinter_Upper                                               QPrinter_OnlyOne

/*
enum QPrinter::PrintRange
*/
#define QPrinter_AllPages                                            0
#define QPrinter_Selection                                           1
#define QPrinter_PageRange                                           2
#define QPrinter_CurrentPage                                         3

/*
enum QPrinter::PrinterMode
*/
#define QPrinter_ScreenResolution                                    0
#define QPrinter_PrinterResolution                                   1
#define QPrinter_HighResolution                                      2

/*
enum QPrinter::PrinterState
*/
#define QPrinter_Idle                                                0
#define QPrinter_Active                                              1
#define QPrinter_Aborted                                             2
#define QPrinter_Error                                               3

/*
enum QPrinter::Unit
*/
#define QPrinter_Millimeter                                          0
#define QPrinter_Point                                               1
#define QPrinter_Inch                                                2
#define QPrinter_Pica                                                3
#define QPrinter_Didot                                               4
#define QPrinter_Cicero                                              5
#define QPrinter_DevicePixel                                         6
