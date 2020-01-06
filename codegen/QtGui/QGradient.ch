%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtGui

$header

/*
enum QGradient::CoordinateMode
*/
#define QGradient_LogicalMode                                        0
#define QGradient_StretchToDeviceMode                                1
#define QGradient_ObjectBoundingMode                                 2
#define QGradient_ObjectMode                                         3

/*
enum QGradient::Spread
*/
#define QGradient_PadSpread                                          0
#define QGradient_ReflectSpread                                      1
#define QGradient_RepeatSpread                                       2

/*
enum QGradient::Type
*/
#define QGradient_LinearGradient                                     0
#define QGradient_RadialGradient                                     1
#define QGradient_ConicalGradient                                    2
#define QGradient_NoGradient                                         3

/*
enum QGradient::InterpolationMode
*/
#define QGradient_ColorInterpolation                                 0
#define QGradient_ComponentInterpolation                             1

/*
enum QGradient::Preset
*/
#define QGradient_WarmFlame                                          1
#define QGradient_NightFade                                          2
#define QGradient_SpringWarmth                                       3
#define QGradient_JuicyPeach                                         4
#define QGradient_YoungPassion                                       5
#define QGradient_LadyLips                                           6
#define QGradient_SunnyMorning                                       7
#define QGradient_RainyAshville                                      8
#define QGradient_FrozenDreams                                       9
#define QGradient_WinterNeva                                         10
#define QGradient_DustyGrass                                         11
#define QGradient_TemptingAzure                                      12
#define QGradient_HeavyRain                                          13
#define QGradient_AmyCrisp                                           14
#define QGradient_MeanFruit                                          15
#define QGradient_DeepBlue                                           16
#define QGradient_RipeMalinka                                        17
#define QGradient_CloudyKnoxville                                    18
#define QGradient_MalibuBeach                                        19
#define QGradient_NewLife                                            20
#define QGradient_TrueSunset                                         21
#define QGradient_MorpheusDen                                        22
#define QGradient_RareWind                                           23
#define QGradient_NearMoon                                           24
#define QGradient_WildApple                                          25
#define QGradient_SaintPetersburg                                    26
#define QGradient_PlumPlate                                          28
#define QGradient_EverlastingSky                                     29
#define QGradient_HappyFisher                                        30
#define QGradient_Blessing                                           31
#define QGradient_SharpeyeEagle                                      32
#define QGradient_LadogaBottom                                       33
#define QGradient_LemonGate                                          34
#define QGradient_ItmeoBranding                                      35
#define QGradient_ZeusMiracle                                        36
#define QGradient_OldHat                                             37
#define QGradient_StarWine                                           38
#define QGradient_HappyAcid                                          41
#define QGradient_AwesomePine                                        42
#define QGradient_NewYork                                            43
#define QGradient_ShyRainbow                                         44
#define QGradient_MixedHopes                                         46
#define QGradient_FlyHigh                                            47
#define QGradient_StrongBliss                                        48
#define QGradient_FreshMilk                                          49
#define QGradient_SnowAgain                                          50
#define QGradient_FebruaryInk                                        51
#define QGradient_KindSteel                                          52
#define QGradient_SoftGrass                                          53
#define QGradient_GrownEarly                                         54
#define QGradient_SharpBlues                                         55
#define QGradient_ShadyWater                                         56
#define QGradient_DirtyBeauty                                        57
#define QGradient_GreatWhale                                         58
#define QGradient_TeenNotebook                                       59
#define QGradient_PoliteRumors                                       60
#define QGradient_SweetPeriod                                        61
#define QGradient_WideMatrix                                         62
#define QGradient_SoftCherish                                        63
#define QGradient_RedSalvation                                       64
#define QGradient_BurningSpring                                      65
#define QGradient_NightParty                                         66
#define QGradient_SkyGlider                                          67
#define QGradient_HeavenPeach                                        68
#define QGradient_PurpleDivision                                     69
#define QGradient_AquaSplash                                         70
#define QGradient_SpikyNaga                                          72
#define QGradient_LoveKiss                                           73
#define QGradient_CleanMirror                                        75
#define QGradient_PremiumDark                                        76
#define QGradient_ColdEvening                                        77
#define QGradient_CochitiLake                                        78
#define QGradient_SummerGames                                        79
#define QGradient_PassionateBed                                      80
#define QGradient_MountainRock                                       81
#define QGradient_DesertHump                                         82
#define QGradient_JungleDay                                          83
#define QGradient_PhoenixStart                                       84
#define QGradient_OctoberSilence                                     85
#define QGradient_FarawayRiver                                       86
#define QGradient_AlchemistLab                                       87
#define QGradient_OverSun                                            88
#define QGradient_PremiumWhite                                       89
#define QGradient_MarsParty                                          90
#define QGradient_EternalConstance                                   91
#define QGradient_JapanBlush                                         92
#define QGradient_SmilingRain                                        93
#define QGradient_CloudyApple                                        94
#define QGradient_BigMango                                           95
#define QGradient_HealthyWater                                       96
#define QGradient_AmourAmour                                         97
#define QGradient_RiskyConcrete                                      98
#define QGradient_StrongStick                                        99
#define QGradient_ViciousStance                                      100
#define QGradient_PaloAlto                                           101
#define QGradient_HappyMemories                                      102
#define QGradient_MidnightBloom                                      103
#define QGradient_Crystalline                                        104
#define QGradient_PartyBliss                                         106
#define QGradient_ConfidentCloud                                     107
#define QGradient_LeCocktail                                         108
#define QGradient_RiverCity                                          109
#define QGradient_FrozenBerry                                        110
#define QGradient_ChildCare                                          112
#define QGradient_FlyingLemon                                        113
#define QGradient_NewRetrowave                                       114
#define QGradient_HiddenJaguar                                       115
#define QGradient_AboveTheSky                                        116
#define QGradient_Nega                                               117
#define QGradient_DenseWater                                         118
#define QGradient_Seashore                                           120
#define QGradient_MarbleWall                                         121
#define QGradient_CheerfulCaramel                                    122
#define QGradient_NightSky                                           123
#define QGradient_MagicLake                                          124
#define QGradient_YoungGrass                                         125
#define QGradient_ColorfulPeach                                      126
#define QGradient_GentleCare                                         127
#define QGradient_PlumBath                                           128
#define QGradient_HappyUnicorn                                       129
#define QGradient_AfricanField                                       131
#define QGradient_SolidStone                                         132
#define QGradient_OrangeJuice                                        133
#define QGradient_GlassWater                                         134
#define QGradient_NorthMiracle                                       136
#define QGradient_FruitBlend                                         137
#define QGradient_MillenniumPine                                     138
#define QGradient_HighFlight                                         139
#define QGradient_MoleHall                                           140
#define QGradient_SpaceShift                                         142
#define QGradient_ForestInei                                         143
#define QGradient_RoyalGarden                                        144
#define QGradient_RichMetal                                          145
#define QGradient_JuicyCake                                          146
#define QGradient_SmartIndigo                                        147
#define QGradient_SandStrike                                         148
#define QGradient_NorseBeauty                                        149
#define QGradient_AquaGuidance                                       150
#define QGradient_SunVeggie                                          151
#define QGradient_SeaLord                                            152
#define QGradient_BlackSea                                           153
#define QGradient_GrassShampoo                                       154
#define QGradient_LandingAircraft                                    155
#define QGradient_WitchDance                                         156
#define QGradient_SleeplessNight                                     157
#define QGradient_AngelCare                                          158
#define QGradient_CrystalRiver                                       159
#define QGradient_SoftLipstick                                       160
#define QGradient_SaltMountain                                       161
#define QGradient_PerfectWhite                                       162
#define QGradient_FreshOasis                                         163
#define QGradient_StrictNovember                                     164
#define QGradient_MorningSalad                                       165
#define QGradient_DeepRelief                                         166
#define QGradient_SeaStrike                                          167
#define QGradient_NightCall                                          168
#define QGradient_SupremeSky                                         169
#define QGradient_LightBlue                                          170
#define QGradient_MindCrawl                                          171
#define QGradient_LilyMeadow                                         172
#define QGradient_SugarLollipop                                      173
#define QGradient_SweetDessert                                       174
#define QGradient_MagicRay                                           175
#define QGradient_TeenParty                                          176
#define QGradient_FrozenHeat                                         177
#define QGradient_GagarinView                                        178
#define QGradient_FabledSunset                                       179
#define QGradient_PerfectBlue                                        180
