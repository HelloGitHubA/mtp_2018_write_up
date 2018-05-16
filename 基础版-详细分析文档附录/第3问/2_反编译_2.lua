Pos   Hex Data           Description or Code
------------------------------------------------------------------------
0000                     ** source chunk: z3.out
                         ** global header start **
0000  1B4C7561           header signature: "\27Lua"
0004  53                 version (major:minor hex digits)
0005  00                 format (0=official)
0006  19930D0A1A0A       LUAC_DATA: "\25\147\r\n\26\n"
000C  04                 size of int (bytes)
000D  04                 size of size_t (bytes)
000E  04                 size of Instruction (bytes)
000F  08                 size of Integer (bytes)
0010  08                 size of Number (bytes)
0011  7856000000000000   endianness bytes 0x5678
0019  0000000000287740   float format 370.5
0021  01                 global closure nupvalues 1
                         ** global header end **
                         
0022                     ** function [0] definition (level 1) 0
                         ** start of function 0 **
0022  00                 string size (0)
                         source name: (chunk)
0023  00000000           line defined (0)
0027  00000000           last line defined (0)
002B  00                 numparams (0)
002C  01                 is_vararg (1)
002D  07                 maxstacksize (7)
                         * code:
002E  07010000           sizecode (263)
0032  06004000           [001] gettabup  0   0   256  ; R0 := U0[K0(="require")]
0036  41400000           [002] loadk     1   1        ; R1 := K1(="bit")
003A  24800001           [003] call      0   2   2    ; R0 := R0(R1)
003E  4B000000           [004] newtable  1   0   0    ; R1 := {} , array_size=0, hash_size=0
0042  08400081           [005] settabup  0   258 1    ; U0[K2(="bs")] := R1
0046  47C04000           [006] gettable  1   0   259  ; R1 := R0[K3(="lshift")]
004A  86804000           [007] gettabup  2   0   258  ; R2 := U0[K2(="bs")]
004E  EC000000           [008] closure   3   0        ; R3 := closure(function[0]) 1 upvalues
0052  8AC00082           [009] settable  2   260 3    ; R2[K4(="new")] := R3
0056  86804000           [010] gettabup  2   0   258  ; R2 := U0[K2(="bs")]
005A  EC400000           [011] closure   3   1        ; R3 := closure(function[1]) 0 upvalues
005E  8AC08082           [012] settable  2   261 3    ; R2[K5(="move")] := R3
0062  AE39833B           [013] extraarg  15600870  ; K15600870(=nil)
0066  86804000           [014] gettabup  2   0   258  ; R2 := U0[K2(="bs")]
006A  EC800000           [015] closure   3   2        ; R3 := closure(function[2]) 1 upvalues
006E  8AC00083           [016] settable  2   262 3    ; R2[K6(="pop")] := R3
0072  86804000           [017] gettabup  2   0   258  ; R2 := U0[K2(="bs")]
0076  ECC00000           [018] closure   3   3        ; R3 := closure(function[3]) 1 upvalues
007A  8AC08083           [019] settable  2   263 3    ; R2[K7(="pop_raw")] := R3
007E  86804000           [020] gettabup  2   0   258  ; R2 := U0[K2(="bs")]
0082  EC000100           [021] closure   3   4        ; R3 := closure(function[4]) 0 upvalues
0086  8AC00084           [022] settable  2   264 3    ; R2[K8(="readByte")] := R3
008A  86804000           [023] gettabup  2   0   258  ; R2 := U0[K2(="bs")]
008E  EC400100           [024] closure   3   5        ; R3 := closure(function[5]) 2 upvalues
0092  8AC08084           [025] settable  2   265 3    ; R2[K9(="readInt")] := R3
0096  86804000           [026] gettabup  2   0   258  ; R2 := U0[K2(="bs")]
009A  EC800100           [027] closure   3   6        ; R3 := closure(function[6]) 1 upvalues
009E  8AC00085           [028] settable  2   266 3    ; R2[K10(="readStr")] := R3
00A2  86804000           [029] gettabup  2   0   258  ; R2 := U0[K2(="bs")]
00A6  ECC00100           [030] closure   3   7        ; R3 := closure(function[7]) 0 upvalues
00AA  8AC08085           [031] settable  2   267 3    ; R2[K11(="bPos")] := R3
00AE  8B000000           [032] newtable  2   0   0    ; R2 := {} , array_size=0, hash_size=0
00B2  08800086           [033] settabup  0   268 2    ; U0[K12(="Stack")] := R2
00B6  86004300           [034] gettabup  2   0   268  ; R2 := U0[K12(="Stack")]
00BA  EC000200           [035] closure   3   8        ; R3 := closure(function[8]) 1 upvalues
00BE  8AC00082           [036] settable  2   260 3    ; R2[K4(="new")] := R3
00C2  86004300           [037] gettabup  2   0   268  ; R2 := U0[K12(="Stack")]
00C6  EC400200           [038] closure   3   9        ; R3 := closure(function[9]) 1 upvalues
00CA  8AC08086           [039] settable  2   269 3    ; R2[K13(="push")] := R3
00CE  86004300           [040] gettabup  2   0   268  ; R2 := U0[K12(="Stack")]
00D2  EC800200           [041] closure   3   10       ; R3 := closure(function[10]) 1 upvalues
00D6  8AC00087           [042] settable  2   270 3    ; R2[K14(="pop")] := R3
00DA  ACC00200           [043] closure   2   11       ; R2 := closure(function[11]) 0 upvalues
00DE  08808087           [044] settabup  0   271 2    ; U0[K15(="kcjisaojeje17da653")] := R2
00E2  AC000300           [045] closure   2   12       ; R2 := closure(function[12]) 0 upvalues
00E6  08800088           [046] settabup  0   272 2    ; U0[K16(="kcjisaojejea2f65d7")] := R2
00EA  AC400300           [047] closure   2   13       ; R2 := closure(function[13]) 0 upvalues
00EE  08808088           [048] settabup  0   273 2    ; U0[K17(="kcjisaojejb8ffa3c2")] := R2
00F2  AC800300           [049] closure   2   14       ; R2 := closure(function[14]) 0 upvalues
00F6  08800089           [050] settabup  0   274 2    ; U0[K18(="kcjisaojeje37f48a6")] := R2
00FA  ACC00300           [051] closure   2   15       ; R2 := closure(function[15]) 0 upvalues
00FE  08808089           [052] settabup  0   275 2    ; U0[K19(="kcjisaojejd56265d9")] := R2
0102  AC000400           [053] closure   2   16       ; R2 := closure(function[16]) 0 upvalues
0106  0880008A           [054] settabup  0   276 2    ; U0[K20(="kcjisaojejb0cd87ba")] := R2
010A  AC400400           [055] closure   2   17       ; R2 := closure(function[17]) 0 upvalues
010E  0880808A           [056] settabup  0   277 2    ; U0[K21(="kcjisaojejff577802")] := R2
0112  AC800400           [057] closure   2   18       ; R2 := closure(function[18]) 1 upvalues
0116  0880008B           [058] settabup  0   278 2    ; U0[K22(="file2array")] := R2
011A  ACC00400           [059] closure   2   19       ; R2 := closure(function[19]) 0 upvalues
011E  0880808B           [060] settabup  0   279 2    ; U0[K23(="str2array")] := R2
0122  AC000500           [061] closure   2   20       ; R2 := closure(function[20]) 1 upvalues
0126  0880008C           [062] settabup  0   280 2    ; U0[K24(="dump_table")] := R2
012A  AC400500           [063] closure   2   21       ; R2 := closure(function[21]) 1 upvalues
012E  0880808C           [064] settabup  0   281 2    ; U0[K25(="dumpTable")] := R2
0132  AC800500           [065] closure   2   22       ; R2 := closure(function[22]) 1 upvalues
0136  0880008D           [066] settabup  0   282 2    ; U0[K26(="klcvjbidfog")] := R2
013A  ACC00500           [067] closure   2   23       ; R2 := closure(function[23]) 1 upvalues
013E  0880808D           [068] settabup  0   283 2    ; U0[K27(="LOG")] := R2
0142  AC000600           [069] closure   2   24       ; R2 := closure(function[24]) 1 upvalues
0146  0880008E           [070] settabup  0   284 2    ; U0[K28(="LOGPH")] := R2
014A  0880C78E           [071] settabup  0   285 286  ; U0[K29(="plainBs")] := K30(=nil)
014E  0880C78F           [072] settabup  0   287 286  ; U0[K31(="encryptBs")] := K30(=nil)
0152  AC400600           [073] closure   2   25       ; R2 := closure(function[25]) 1 upvalues
0156  08800090           [074] settabup  0   288 2    ; U0[K32(="getByte")] := R2
015A  86804800           [075] gettabup  2   0   290  ; R2 := U0[K34(="string")]
015E  87C04801           [076] gettable  2   2   291  ; R2 := R2[K35(="sub")]
0162  08808090           [077] settabup  0   289 2    ; U0[K33(="stringsub")] := R2
0166  47C04000           [078] gettable  1   0   259  ; R1 := R0[K3(="lshift")]
016A  87004900           [079] gettable  2   0   292  ; R2 := R0[K36(="rshift")]
016E  08800092           [080] settabup  0   292 2    ; U0[K36(="rshift")] := R2
0172  87404900           [081] gettable  2   0   293  ; R2 := R0[K37(="band")]
0176  08808092           [082] settabup  0   293 2    ; U0[K37(="band")] := R2
017A  87804900           [083] gettable  2   0   294  ; R2 := R0[K38(="bor")]
017E  08800093           [084] settabup  0   294 2    ; U0[K38(="bor")] := R2
0182  AC800600           [085] closure   2   26       ; R2 := closure(function[26]) 1 upvalues
0186  08808093           [086] settabup  0   295 2    ; U0[K39(="dw2Byte")] := R2
018A  ACC00600           [087] closure   2   27       ; R2 := closure(function[27]) 1 upvalues
018E  08800094           [088] settabup  0   296 2    ; U0[K40(="putDword")] := R2
0192  AC000700           [089] closure   2   28       ; R2 := closure(function[28]) 1 upvalues
0196  08808094           [090] settabup  0   297 2    ; U0[K41(="putByte")] := R2
019A  AC400700           [091] closure   2   29       ; R2 := closure(function[29]) 1 upvalues
019E  08800095           [092] settabup  0   298 2    ; U0[K42(="saveEncrypt")] := R2
01A2  0800CB95           [093] settabup  0   299 300  ; U0[K43(="fe825de6")] := K44(=0)
01A6  0880CB96           [094] settabup  0   301 302  ; U0[K45(="dd2c3116")] := K46(=1)
01AA  0800CC97           [095] settabup  0   303 304  ; U0[K47(="b5827525")] := K48(=2)
01AE  0880CC98           [096] settabup  0   305 306  ; U0[K49(="a0e82ad9")] := K50(=3)
01B2  0800CD99           [097] settabup  0   307 308  ; U0[K51(="d791738e")] := K52(=4)
01B6  0880CD9A           [098] settabup  0   309 310  ; U0[K53(="fcb1e160")] := K54(=5)
01BA  0800CE9B           [099] settabup  0   311 312  ; U0[K55(="a5b5e6d2")] := K56(=6)
01BE  0880CE9C           [100] settabup  0   313 314  ; U0[K57(="e17da653")] := K58(=7)
01C2  0800CF9D           [101] settabup  0   315 316  ; U0[K59(="Ud791738e")] := K60(=8)
01C6  0880CF9E           [102] settabup  0   317 318  ; U0[K61(="ba82e6cd")] := K62(=9)
01CA  0800D09F           [103] settabup  0   319 320  ; U0[K63(="ff577802")] := K64(=10)
01CE  0880D0A0           [104] settabup  0   321 322  ; U0[K65(="b0cd87ba")] := K66(=11)
01D2  0800D1A1           [105] settabup  0   323 324  ; U0[K67(="d56265d9")] := K68(=12)
01D6  0880D1A2           [106] settabup  0   325 326  ; U0[K69(="e37f48a6")] := K70(=13)
01DA  0800D2A3           [107] settabup  0   327 328  ; U0[K71(="b8ffa3c2")] := K72(=14)
01DE  0880D2A4           [108] settabup  0   329 330  ; U0[K73(="ea2f65d7")] := K74(=15)
01E2  0800D3A5           [109] settabup  0   331 332  ; U0[K75(="c9011a8e")] := K76(=16)
01E6  0880D3A6           [110] settabup  0   333 334  ; U0[K77(="dd59703d")] := K78(=17)
01EA  8B000000           [111] newtable  2   0   0    ; R2 := {} , array_size=0, hash_size=0
01EE  088080A7           [112] settabup  0   335 2    ; U0[K79(="vm")] := R2
01F2  8B000000           [113] newtable  2   0   0    ; R2 := {} , array_size=0, hash_size=0
01F6  088000A8           [114] settabup  0   336 2    ; U0[K80(="jviwjeowjie")] := R2
01FA  86C05300           [115] gettabup  2   0   335  ; R2 := U0[K79(="vm")]
01FE  C6005400           [116] gettabup  3   0   336  ; R3 := U0[K80(="jviwjeowjie")]
0202  8AC080A8           [117] settable  2   337 3    ; R2[K81(="weioeurwiuioiu")] := R3
0206  86C05300           [118] gettabup  2   0   335  ; R2 := U0[K79(="vm")]
020A  EC800700           [119] closure   3   30       ; R3 := closure(function[30]) 1 upvalues
020E  8AC00082           [120] settable  2   260 3    ; R2[K4(="new")] := R3
0212  86C05300           [121] gettabup  2   0   335  ; R2 := U0[K79(="vm")]
0216  ECC00700           [122] closure   3   31       ; R3 := closure(function[31]) 0 upvalues
021A  8AC000A9           [123] settable  2   338 3    ; R2[K82(="exe")] := R3
021E  86C05300           [124] gettabup  2   0   335  ; R2 := U0[K79(="vm")]
0222  EC000800           [125] closure   3   32       ; R3 := closure(function[32]) 0 upvalues
0226  8AC080A9           [126] settable  2   339 3    ; R2[K83(="b61531b9")] := R3
022A  86C05300           [127] gettabup  2   0   335  ; R2 := U0[K79(="vm")]
022E  EC400800           [128] closure   3   33       ; R3 := closure(function[33]) 0 upvalues
0232  8AC000AA           [129] settable  2   340 3    ; R2[K84(="e5a13297")] := R3
0236  86C05300           [130] gettabup  2   0   335  ; R2 := U0[K79(="vm")]
023A  EC800800           [131] closure   3   34       ; R3 := closure(function[34]) 0 upvalues
023E  8AC080AA           [132] settable  2   341 3    ; R2[K85(="a115183a")] := R3
0242  86C05300           [133] gettabup  2   0   335  ; R2 := U0[K79(="vm")]
0246  ECC00800           [134] closure   3   35       ; R3 := closure(function[35]) 0 upvalues
024A  8AC000AB           [135] settable  2   342 3    ; R2[K86(="set")] := R3
024E  86C05300           [136] gettabup  2   0   335  ; R2 := U0[K79(="vm")]
0252  EC000900           [137] closure   3   36       ; R3 := closure(function[36]) 0 upvalues
0256  8AC080AB           [138] settable  2   343 3    ; R2[K87(="c30c39a5")] := R3
025A  86C05300           [139] gettabup  2   0   335  ; R2 := U0[K79(="vm")]
025E  EC400900           [140] closure   3   37       ; R3 := closure(function[37]) 0 upvalues
0262  8AC000AC           [141] settable  2   344 3    ; R2[K88(="e9dcc004")] := R3
0266  86C05300           [142] gettabup  2   0   335  ; R2 := U0[K79(="vm")]
026A  EC800900           [143] closure   3   38       ; R3 := closure(function[38]) 0 upvalues
026E  8AC080AC           [144] settable  2   345 3    ; R2[K89(="b8eb468b")] := R3
0272  86C05300           [145] gettabup  2   0   335  ; R2 := U0[K79(="vm")]
0276  ECC00900           [146] closure   3   39       ; R3 := closure(function[39]) 0 upvalues
027A  8AC000AD           [147] settable  2   346 3    ; R2[K90(="e29d3db5")] := R3
027E  86C05300           [148] gettabup  2   0   335  ; R2 := U0[K79(="vm")]
0282  EC000A00           [149] closure   3   40       ; R3 := closure(function[40]) 0 upvalues
0286  8AC080AD           [150] settable  2   347 3    ; R2[K91(="ue9dcc004")] := R3
028A  86C05300           [151] gettabup  2   0   335  ; R2 := U0[K79(="vm")]
028E  EC400A00           [152] closure   3   41       ; R3 := closure(function[41]) 0 upvalues
0292  8AC000AE           [153] settable  2   348 3    ; R2[K92(="fb6ea852")] := R3
0296  86C05300           [154] gettabup  2   0   335  ; R2 := U0[K79(="vm")]
029A  EC800A00           [155] closure   3   42       ; R3 := closure(function[42]) 1 upvalues
029E  8AC080AE           [156] settable  2   349 3    ; R2[K93(="ddbe0eb4")] := R3
02A2  86005400           [157] gettabup  2   0   336  ; R2 := U0[K80(="jviwjeowjie")]
02A6  C6C05200           [158] gettabup  3   0   331  ; R3 := U0[K75(="c9011a8e")]
02AA  06C15300           [159] gettabup  4   0   335  ; R4 := U0[K79(="vm")]
02AE  07415702           [160] gettable  4   4   349  ; R4 := R4[K93(="ddbe0eb4")]
02B2  8A008101           [161] settable  2   3   4    ; R2[R3] := R4
02B6  86005400           [162] gettabup  2   0   336  ; R2 := U0[K80(="jviwjeowjie")]
02BA  C6404F00           [163] gettabup  3   0   317  ; R3 := U0[K61(="ba82e6cd")]
02BE  06C15300           [164] gettabup  4   0   335  ; R4 := U0[K79(="vm")]
02C2  07015702           [165] gettable  4   4   348  ; R4 := R4[K92(="fb6ea852")]
02C6  8A008101           [166] settable  2   3   4    ; R2[R3] := R4
02CA  86005400           [167] gettabup  2   0   336  ; R2 := U0[K80(="jviwjeowjie")]
02CE  C6C04A00           [168] gettabup  3   0   299  ; R3 := U0[K43(="fe825de6")]
02D2  06C15300           [169] gettabup  4   0   335  ; R4 := U0[K79(="vm")]
02D6  07C15402           [170] gettable  4   4   339  ; R4 := R4[K83(="b61531b9")]
02DA  8A008101           [171] settable  2   3   4    ; R2[R3] := R4
02DE  86005400           [172] gettabup  2   0   336  ; R2 := U0[K80(="jviwjeowjie")]
02E2  C6404B00           [173] gettabup  3   0   301  ; R3 := U0[K45(="dd2c3116")]
02E6  06C15300           [174] gettabup  4   0   335  ; R4 := U0[K79(="vm")]
02EA  07015502           [175] gettable  4   4   340  ; R4 := R4[K84(="e5a13297")]
02EE  8A008101           [176] settable  2   3   4    ; R2[R3] := R4
02F2  86005400           [177] gettabup  2   0   336  ; R2 := U0[K80(="jviwjeowjie")]
02F6  C6405300           [178] gettabup  3   0   333  ; R3 := U0[K77(="dd59703d")]
02FA  06C15300           [179] gettabup  4   0   335  ; R4 := U0[K79(="vm")]
02FE  07415502           [180] gettable  4   4   341  ; R4 := R4[K85(="a115183a")]
0302  8A008101           [181] settable  2   3   4    ; R2[R3] := R4
0306  86005400           [182] gettabup  2   0   336  ; R2 := U0[K80(="jviwjeowjie")]
030A  C6C04B00           [183] gettabup  3   0   303  ; R3 := U0[K47(="b5827525")]
030E  06C15300           [184] gettabup  4   0   335  ; R4 := U0[K79(="vm")]
0312  07815502           [185] gettable  4   4   342  ; R4 := R4[K86(="set")]
0316  8A008101           [186] settable  2   3   4    ; R2[R3] := R4
031A  86005400           [187] gettabup  2   0   336  ; R2 := U0[K80(="jviwjeowjie")]
031E  C6404C00           [188] gettabup  3   0   305  ; R3 := U0[K49(="a0e82ad9")]
0322  06C15300           [189] gettabup  4   0   335  ; R4 := U0[K79(="vm")]
0326  07C15502           [190] gettable  4   4   343  ; R4 := R4[K87(="c30c39a5")]
032A  8A008101           [191] settable  2   3   4    ; R2[R3] := R4
032E  86005400           [192] gettabup  2   0   336  ; R2 := U0[K80(="jviwjeowjie")]
0332  C6C04C00           [193] gettabup  3   0   307  ; R3 := U0[K51(="d791738e")]
0336  06C15300           [194] gettabup  4   0   335  ; R4 := U0[K79(="vm")]
033A  07015602           [195] gettable  4   4   344  ; R4 := R4[K88(="e9dcc004")]
033E  8A008101           [196] settable  2   3   4    ; R2[R3] := R4
0342  86005400           [197] gettabup  2   0   336  ; R2 := U0[K80(="jviwjeowjie")]
0346  C6404D00           [198] gettabup  3   0   309  ; R3 := U0[K53(="fcb1e160")]
034A  06C15300           [199] gettabup  4   0   335  ; R4 := U0[K79(="vm")]
034E  07415602           [200] gettable  4   4   345  ; R4 := R4[K89(="b8eb468b")]
0352  8A008101           [201] settable  2   3   4    ; R2[R3] := R4
0356  86005400           [202] gettabup  2   0   336  ; R2 := U0[K80(="jviwjeowjie")]
035A  C6C04D00           [203] gettabup  3   0   311  ; R3 := U0[K55(="a5b5e6d2")]
035E  06C15300           [204] gettabup  4   0   335  ; R4 := U0[K79(="vm")]
0362  07815602           [205] gettable  4   4   346  ; R4 := R4[K90(="e29d3db5")]
0366  8A008101           [206] settable  2   3   4    ; R2[R3] := R4
036A  86005400           [207] gettabup  2   0   336  ; R2 := U0[K80(="jviwjeowjie")]
036E  C6C04E00           [208] gettabup  3   0   315  ; R3 := U0[K59(="Ud791738e")]
0372  06C15300           [209] gettabup  4   0   335  ; R4 := U0[K79(="vm")]
0376  07C15602           [210] gettable  4   4   347  ; R4 := R4[K91(="ue9dcc004")]
037A  8A008101           [211] settable  2   3   4    ; R2[R3] := R4
037E  86005400           [212] gettabup  2   0   336  ; R2 := U0[K80(="jviwjeowjie")]
0382  C6404E00           [213] gettabup  3   0   313  ; R3 := U0[K57(="e17da653")]
0386  06814600           [214] gettabup  4   0   282  ; R4 := U0[K26(="klcvjbidfog")]
038A  46C14300           [215] gettabup  5   0   271  ; R5 := U0[K15(="kcjisaojeje17da653")]
038E  81410E00           [216] loadk     6   57       ; R6 := K57(="e17da653")
0392  24818001           [217] call      4   3   2    ; R4 := R4(R5, R6)
0396  8A008101           [218] settable  2   3   4    ; R2[R3] := R4
039A  86005400           [219] gettabup  2   0   336  ; R2 := U0[K80(="jviwjeowjie")]
039E  C6405200           [220] gettabup  3   0   329  ; R3 := U0[K73(="ea2f65d7")]
03A2  06814600           [221] gettabup  4   0   282  ; R4 := U0[K26(="klcvjbidfog")]
03A6  46014400           [222] gettabup  5   0   272  ; R5 := U0[K16(="kcjisaojejea2f65d7")]
03AA  81411200           [223] loadk     6   73       ; R6 := K73(="ea2f65d7")
03AE  24818001           [224] call      4   3   2    ; R4 := R4(R5, R6)
03B2  8A008101           [225] settable  2   3   4    ; R2[R3] := R4
03B6  86005400           [226] gettabup  2   0   336  ; R2 := U0[K80(="jviwjeowjie")]
03BA  C6C05100           [227] gettabup  3   0   327  ; R3 := U0[K71(="b8ffa3c2")]
03BE  06814600           [228] gettabup  4   0   282  ; R4 := U0[K26(="klcvjbidfog")]
03C2  46414400           [229] gettabup  5   0   273  ; R5 := U0[K17(="kcjisaojejb8ffa3c2")]
03C6  81C11100           [230] loadk     6   71       ; R6 := K71(="b8ffa3c2")
03CA  24818001           [231] call      4   3   2    ; R4 := R4(R5, R6)
03CE  8A008101           [232] settable  2   3   4    ; R2[R3] := R4
03D2  86005400           [233] gettabup  2   0   336  ; R2 := U0[K80(="jviwjeowjie")]
03D6  C6405100           [234] gettabup  3   0   325  ; R3 := U0[K69(="e37f48a6")]
03DA  06814600           [235] gettabup  4   0   282  ; R4 := U0[K26(="klcvjbidfog")]
03DE  46814400           [236] gettabup  5   0   274  ; R5 := U0[K18(="kcjisaojeje37f48a6")]
03E2  81411100           [237] loadk     6   69       ; R6 := K69(="e37f48a6")
03E6  24818001           [238] call      4   3   2    ; R4 := R4(R5, R6)
03EA  8A008101           [239] settable  2   3   4    ; R2[R3] := R4
03EE  86005400           [240] gettabup  2   0   336  ; R2 := U0[K80(="jviwjeowjie")]
03F2  C6C05000           [241] gettabup  3   0   323  ; R3 := U0[K67(="d56265d9")]
03F6  06814600           [242] gettabup  4   0   282  ; R4 := U0[K26(="klcvjbidfog")]
03FA  46C14400           [243] gettabup  5   0   275  ; R5 := U0[K19(="kcjisaojejd56265d9")]
03FE  81C11000           [244] loadk     6   67       ; R6 := K67(="d56265d9")
0402  24818001           [245] call      4   3   2    ; R4 := R4(R5, R6)
0406  8A008101           [246] settable  2   3   4    ; R2[R3] := R4
040A  86005400           [247] gettabup  2   0   336  ; R2 := U0[K80(="jviwjeowjie")]
040E  C6405000           [248] gettabup  3   0   321  ; R3 := U0[K65(="b0cd87ba")]
0412  06814600           [249] gettabup  4   0   282  ; R4 := U0[K26(="klcvjbidfog")]
0416  46014500           [250] gettabup  5   0   276  ; R5 := U0[K20(="kcjisaojejb0cd87ba")]
041A  81411000           [251] loadk     6   65       ; R6 := K65(="b0cd87ba")
041E  24818001           [252] call      4   3   2    ; R4 := R4(R5, R6)
0422  8A008101           [253] settable  2   3   4    ; R2[R3] := R4
0426  86005400           [254] gettabup  2   0   336  ; R2 := U0[K80(="jviwjeowjie")]
042A  C6C04F00           [255] gettabup  3   0   319  ; R3 := U0[K63(="ff577802")]
042E  06814600           [256] gettabup  4   0   282  ; R4 := U0[K26(="klcvjbidfog")]
0432  46414500           [257] gettabup  5   0   277  ; R5 := U0[K21(="kcjisaojejff577802")]
0436  81C10F00           [258] loadk     6   63       ; R6 := K63(="ff577802")
043A  24818001           [259] call      4   3   2    ; R4 := R4(R5, R6)
043E  8A008101           [260] settable  2   3   4    ; R2[R3] := R4
0442  ACC00A00           [261] closure   2   43       ; R2 := closure(function[43]) 1 upvalues
0446  088000AF           [262] settabup  0   350 2    ; U0[K94(="check")] := R2
044A  26008000           [263] return    0   1        ; return 
                         * constants:
044E  5F000000           sizek (95)
0452  04                 const type LUA_TSHRSTR
0453  08                 string size (8)
0454  72657175697265     "require"
                         const [0]: "require"
045B  04                 const type LUA_TSHRSTR
045C  04                 string size (4)
045D  626974             "bit"
                         const [1]: "bit"
0460  04                 const type LUA_TSHRSTR
0461  03                 string size (3)
0462  6273               "bs"
                         const [2]: "bs"
0464  04                 const type LUA_TSHRSTR
0465  07                 string size (7)
0466  6C7368696674       "lshift"
                         const [3]: "lshift"
046C  04                 const type LUA_TSHRSTR
046D  04                 string size (4)
046E  6E6577             "new"
                         const [4]: "new"
0471  04                 const type LUA_TSHRSTR
0472  05                 string size (5)
0473  6D6F7665           "move"
                         const [5]: "move"
0477  04                 const type LUA_TSHRSTR
0478  04                 string size (4)
0479  706F70             "pop"
                         const [6]: "pop"
047C  04                 const type LUA_TSHRSTR
047D  08                 string size (8)
047E  706F705F726177     "pop_raw"
                         const [7]: "pop_raw"
0485  04                 const type LUA_TSHRSTR
0486  09                 string size (9)
0487  7265616442797465   "readByte"
                         const [8]: "readByte"
048F  04                 const type LUA_TSHRSTR
0490  08                 string size (8)
0491  72656164496E74     "readInt"
                         const [9]: "readInt"
0498  04                 const type LUA_TSHRSTR
0499  08                 string size (8)
049A  72656164537472     "readStr"
                         const [10]: "readStr"
04A1  04                 const type LUA_TSHRSTR
04A2  05                 string size (5)
04A3  62506F73           "bPos"
                         const [11]: "bPos"
04A7  04                 const type LUA_TSHRSTR
04A8  06                 string size (6)
04A9  537461636B         "Stack"
                         const [12]: "Stack"
04AE  04                 const type LUA_TSHRSTR
04AF  05                 string size (5)
04B0  70757368           "push"
                         const [13]: "push"
04B4  04                 const type LUA_TSHRSTR
04B5  04                 string size (4)
04B6  706F70             "pop"
                         const [14]: "pop"
04B9  04                 const type LUA_TSHRSTR
04BA  13                 string size (19)
04BB  6B636A6973616F6A+  "kcjisaoj"
04C3  656A653137646136+  "eje17da6"
04CB  3533               "53"
                         const [15]: "kcjisaojeje17da653"
04CD  04                 const type LUA_TSHRSTR
04CE  13                 string size (19)
04CF  6B636A6973616F6A+  "kcjisaoj"
04D7  656A656132663635+  "ejea2f65"
04DF  6437               "d7"
                         const [16]: "kcjisaojejea2f65d7"
04E1  04                 const type LUA_TSHRSTR
04E2  13                 string size (19)
04E3  6B636A6973616F6A+  "kcjisaoj"
04EB  656A623866666133+  "ejb8ffa3"
04F3  6332               "c2"
                         const [17]: "kcjisaojejb8ffa3c2"
04F5  04                 const type LUA_TSHRSTR
04F6  13                 string size (19)
04F7  6B636A6973616F6A+  "kcjisaoj"
04FF  656A653337663438+  "eje37f48"
0507  6136               "a6"
                         const [18]: "kcjisaojeje37f48a6"
0509  04                 const type LUA_TSHRSTR
050A  13                 string size (19)
050B  6B636A6973616F6A+  "kcjisaoj"
0513  656A643536323635+  "ejd56265"
051B  6439               "d9"
                         const [19]: "kcjisaojejd56265d9"
051D  04                 const type LUA_TSHRSTR
051E  13                 string size (19)
051F  6B636A6973616F6A+  "kcjisaoj"
0527  656A623063643837+  "ejb0cd87"
052F  6261               "ba"
                         const [20]: "kcjisaojejb0cd87ba"
0531  04                 const type LUA_TSHRSTR
0532  13                 string size (19)
0533  6B636A6973616F6A+  "kcjisaoj"
053B  656A666635373738+  "ejff5778"
0543  3032               "02"
                         const [21]: "kcjisaojejff577802"
0545  04                 const type LUA_TSHRSTR
0546  0B                 string size (11)
0547  66696C6532617272+  "file2arr"
054F  6179               "ay"
                         const [22]: "file2array"
0551  04                 const type LUA_TSHRSTR
0552  0A                 string size (10)
0553  7374723261727261+  "str2arra"
055B  79                 "y"
                         const [23]: "str2array"
055C  04                 const type LUA_TSHRSTR
055D  0B                 string size (11)
055E  64756D705F746162+  "dump_tab"
0566  6C65               "le"
                         const [24]: "dump_table"
0568  04                 const type LUA_TSHRSTR
0569  0A                 string size (10)
056A  64756D705461626C+  "dumpTabl"
0572  65                 "e"
                         const [25]: "dumpTable"
0573  04                 const type LUA_TSHRSTR
0574  0C                 string size (12)
0575  6B6C63766A626964+  "klcvjbid"
057D  666F67             "fog"
                         const [26]: "klcvjbidfog"
0580  04                 const type LUA_TSHRSTR
0581  04                 string size (4)
0582  4C4F47             "LOG"
                         const [27]: "LOG"
0585  04                 const type LUA_TSHRSTR
0586  06                 string size (6)
0587  4C4F475048         "LOGPH"
                         const [28]: "LOGPH"
058C  04                 const type LUA_TSHRSTR
058D  08                 string size (8)
058E  706C61696E4273     "plainBs"
                         const [29]: "plainBs"
0595  00                 const type LUA_TNIL
                         const [30]: nil
0596  04                 const type LUA_TSHRSTR
0597  0A                 string size (10)
0598  656E637279707442+  "encryptB"
05A0  73                 "s"
                         const [31]: "encryptBs"
05A1  04                 const type LUA_TSHRSTR
05A2  08                 string size (8)
05A3  67657442797465     "getByte"
                         const [32]: "getByte"
05AA  04                 const type LUA_TSHRSTR
05AB  0A                 string size (10)
05AC  737472696E677375+  "stringsu"
05B4  62                 "b"
                         const [33]: "stringsub"
05B5  04                 const type LUA_TSHRSTR
05B6  07                 string size (7)
05B7  737472696E67       "string"
                         const [34]: "string"
05BD  04                 const type LUA_TSHRSTR
05BE  04                 string size (4)
05BF  737562             "sub"
                         const [35]: "sub"
05C2  04                 const type LUA_TSHRSTR
05C3  07                 string size (7)
05C4  727368696674       "rshift"
                         const [36]: "rshift"
05CA  04                 const type LUA_TSHRSTR
05CB  05                 string size (5)
05CC  62616E64           "band"
                         const [37]: "band"
05D0  04                 const type LUA_TSHRSTR
05D1  04                 string size (4)
05D2  626F72             "bor"
                         const [38]: "bor"
05D5  04                 const type LUA_TSHRSTR
05D6  08                 string size (8)
05D7  64773242797465     "dw2Byte"
                         const [39]: "dw2Byte"
05DE  04                 const type LUA_TSHRSTR
05DF  09                 string size (9)
05E0  70757444776F7264   "putDword"
                         const [40]: "putDword"
05E8  04                 const type LUA_TSHRSTR
05E9  08                 string size (8)
05EA  70757442797465     "putByte"
                         const [41]: "putByte"
05F1  04                 const type LUA_TSHRSTR
05F2  0C                 string size (12)
05F3  73617665456E6372+  "saveEncr"
05FB  797074             "ypt"
                         const [42]: "saveEncrypt"
05FE  04                 const type LUA_TSHRSTR
05FF  09                 string size (9)
0600  6665383235646536   "fe825de6"
                         const [43]: "fe825de6"
0608  13                 const type LUA_TNUMINT
0609  0000000000000000   const [44]: (0)
0611  04                 const type LUA_TSHRSTR
0612  09                 string size (9)
0613  6464326333313136   "dd2c3116"
                         const [45]: "dd2c3116"
061B  13                 const type LUA_TNUMINT
061C  0100000000000000   const [46]: (1)
0624  04                 const type LUA_TSHRSTR
0625  09                 string size (9)
0626  6235383237353235   "b5827525"
                         const [47]: "b5827525"
062E  13                 const type LUA_TNUMINT
062F  0200000000000000   const [48]: (2)
0637  04                 const type LUA_TSHRSTR
0638  09                 string size (9)
0639  6130653832616439   "a0e82ad9"
                         const [49]: "a0e82ad9"
0641  13                 const type LUA_TNUMINT
0642  0300000000000000   const [50]: (3)
064A  04                 const type LUA_TSHRSTR
064B  09                 string size (9)
064C  6437393137333865   "d791738e"
                         const [51]: "d791738e"
0654  13                 const type LUA_TNUMINT
0655  0400000000000000   const [52]: (4)
065D  04                 const type LUA_TSHRSTR
065E  09                 string size (9)
065F  6663623165313630   "fcb1e160"
                         const [53]: "fcb1e160"
0667  13                 const type LUA_TNUMINT
0668  0500000000000000   const [54]: (5)
0670  04                 const type LUA_TSHRSTR
0671  09                 string size (9)
0672  6135623565366432   "a5b5e6d2"
                         const [55]: "a5b5e6d2"
067A  13                 const type LUA_TNUMINT
067B  0600000000000000   const [56]: (6)
0683  04                 const type LUA_TSHRSTR
0684  09                 string size (9)
0685  6531376461363533   "e17da653"
                         const [57]: "e17da653"
068D  13                 const type LUA_TNUMINT
068E  0700000000000000   const [58]: (7)
0696  04                 const type LUA_TSHRSTR
0697  0A                 string size (10)
0698  5564373931373338+  "Ud791738"
06A0  65                 "e"
                         const [59]: "Ud791738e"
06A1  13                 const type LUA_TNUMINT
06A2  0800000000000000   const [60]: (8)
06AA  04                 const type LUA_TSHRSTR
06AB  09                 string size (9)
06AC  6261383265366364   "ba82e6cd"
                         const [61]: "ba82e6cd"
06B4  13                 const type LUA_TNUMINT
06B5  0900000000000000   const [62]: (9)
06BD  04                 const type LUA_TSHRSTR
06BE  09                 string size (9)
06BF  6666353737383032   "ff577802"
                         const [63]: "ff577802"
06C7  13                 const type LUA_TNUMINT
06C8  0A00000000000000   const [64]: (10)
06D0  04                 const type LUA_TSHRSTR
06D1  09                 string size (9)
06D2  6230636438376261   "b0cd87ba"
                         const [65]: "b0cd87ba"
06DA  13                 const type LUA_TNUMINT
06DB  0B00000000000000   const [66]: (11)
06E3  04                 const type LUA_TSHRSTR
06E4  09                 string size (9)
06E5  6435363236356439   "d56265d9"
                         const [67]: "d56265d9"
06ED  13                 const type LUA_TNUMINT
06EE  0C00000000000000   const [68]: (12)
06F6  04                 const type LUA_TSHRSTR
06F7  09                 string size (9)
06F8  6533376634386136   "e37f48a6"
                         const [69]: "e37f48a6"
0700  13                 const type LUA_TNUMINT
0701  0D00000000000000   const [70]: (13)
0709  04                 const type LUA_TSHRSTR
070A  09                 string size (9)
070B  6238666661336332   "b8ffa3c2"
                         const [71]: "b8ffa3c2"
0713  13                 const type LUA_TNUMINT
0714  0E00000000000000   const [72]: (14)
071C  04                 const type LUA_TSHRSTR
071D  09                 string size (9)
071E  6561326636356437   "ea2f65d7"
                         const [73]: "ea2f65d7"
0726  13                 const type LUA_TNUMINT
0727  0F00000000000000   const [74]: (15)
072F  04                 const type LUA_TSHRSTR
0730  09                 string size (9)
0731  6339303131613865   "c9011a8e"
                         const [75]: "c9011a8e"
0739  13                 const type LUA_TNUMINT
073A  1000000000000000   const [76]: (16)
0742  04                 const type LUA_TSHRSTR
0743  09                 string size (9)
0744  6464353937303364   "dd59703d"
                         const [77]: "dd59703d"
074C  13                 const type LUA_TNUMINT
074D  1100000000000000   const [78]: (17)
0755  04                 const type LUA_TSHRSTR
0756  03                 string size (3)
0757  766D               "vm"
                         const [79]: "vm"
0759  04                 const type LUA_TSHRSTR
075A  0C                 string size (12)
075B  6A7669776A656F77+  "jviwjeow"
0763  6A6965             "jie"
                         const [80]: "jviwjeowjie"
0766  04                 const type LUA_TSHRSTR
0767  0F                 string size (15)
0768  7765696F65757277+  "weioeurw"
0770  6975696F6975       "iuioiu"
                         const [81]: "weioeurwiuioiu"
0776  04                 const type LUA_TSHRSTR
0777  04                 string size (4)
0778  657865             "exe"
                         const [82]: "exe"
077B  04                 const type LUA_TSHRSTR
077C  09                 string size (9)
077D  6236313533316239   "b61531b9"
                         const [83]: "b61531b9"
0785  04                 const type LUA_TSHRSTR
0786  09                 string size (9)
0787  6535613133323937   "e5a13297"
                         const [84]: "e5a13297"
078F  04                 const type LUA_TSHRSTR
0790  09                 string size (9)
0791  6131313531383361   "a115183a"
                         const [85]: "a115183a"
0799  04                 const type LUA_TSHRSTR
079A  04                 string size (4)
079B  736574             "set"
                         const [86]: "set"
079E  04                 const type LUA_TSHRSTR
079F  09                 string size (9)
07A0  6333306333396135   "c30c39a5"
                         const [87]: "c30c39a5"
07A8  04                 const type LUA_TSHRSTR
07A9  09                 string size (9)
07AA  6539646363303034   "e9dcc004"
                         const [88]: "e9dcc004"
07B2  04                 const type LUA_TSHRSTR
07B3  09                 string size (9)
07B4  6238656234363862   "b8eb468b"
                         const [89]: "b8eb468b"
07BC  04                 const type LUA_TSHRSTR
07BD  09                 string size (9)
07BE  6532396433646235   "e29d3db5"
                         const [90]: "e29d3db5"
07C6  04                 const type LUA_TSHRSTR
07C7  0A                 string size (10)
07C8  7565396463633030+  "ue9dcc00"
07D0  34                 "4"
                         const [91]: "ue9dcc004"
07D1  04                 const type LUA_TSHRSTR
07D2  09                 string size (9)
07D3  6662366561383532   "fb6ea852"
                         const [92]: "fb6ea852"
07DB  04                 const type LUA_TSHRSTR
07DC  09                 string size (9)
07DD  6464626530656234   "ddbe0eb4"
                         const [93]: "ddbe0eb4"
07E5  04                 const type LUA_TSHRSTR
07E6  06                 string size (6)
07E7  636865636B         "check"
                         const [94]: "check"
                         * upvalues:
07EC  01000000           sizeupvalues (1)
                         upvalue [0]: 
07F0  01                   instack (1)
07F1  00                   idx     (0)
                         * functions:
07F2  2C000000           sizep (44)
                         
07F6                     ** function [0] definition (level 2) 0_0
                         ** start of function 0_0 **
07F6  00                 string size (0)
                         source name: (none)
07F7  05000000           line defined (5)
07FB  17000000           last line defined (23)
07FF  02                 numparams (2)
0800  00                 is_vararg (0)
0801  0B                 maxstacksize (11)
                         * code:
0802  2F000000           sizecode (47)
0806  8B000000           [01] newtable  2   0   0    ; R2 := {} , array_size=0, hash_size=0
080A  08800080           [02] settabup  0   256 2    ; U0[K0(="o")] := R2
080E  86004000           [03] gettabup  2   0   256  ; R2 := U0[K0(="o")]
0812  E3408000           [04] testset   3   1   1    ; if R1 then R3 = R1 else pc+=1 (goto [6])
0816  1E000080           [05] jmp       0   1        ; pc+=1 (goto [7])
081A  CB000000           [06] newtable  3   0   0    ; R3 := {} , array_size=0, hash_size=0
081E  8AC08080           [07] settable  2   257 3    ; R2[K1(="data")] := R3
0822  86804000           [08] gettabup  2   0   258  ; R2 := U0[K2(="type")]
0826  C7C0C000           [09] gettable  3   1   259  ; R3 := R1[K3(=1)]
082A  A4800001           [10] call      2   2   2    ; R2 := R2(R3)
082E  1F004101           [11] eq        0   2   260  ; R2 == K4(="number"), pc+=1 (goto [13]) if true
0832  1E000580           [12] jmp       0   21       ; pc+=21 (goto [34])
0836  8B000000           [13] newtable  2   0   0    ; R2 := {} , array_size=0, hash_size=0
083A  08808082           [14] settabup  0   261 2    ; U0[K5(="t")] := R2
083E  86804100           [15] gettabup  2   0   262  ; R2 := U0[K6(="pairs")]
0842  C0008000           [16] move      3   1        ; R3 := R1
0846  A4000101           [17] call      2   2   4    ; R2 to R4 := R2(R3)
084A  1E000280           [18] jmp       0   9        ; pc+=9 (goto [28])
084E  C6414100           [19] gettabup  7   0   261  ; R7 := U0[K5(="t")]
0852  06424100           [20] gettabup  8   0   261  ; R8 := U0[K5(="t")]
0856  1C020004           [21] len       8   8        ; R8 := # R8
085A  0DC24004           [22] add       8   8   259  ; R8 := R8 + K3(=1)
085E  46C24100           [23] gettabup  9   0   263  ; R9 := U0[K7(="string")]
0862  4702C204           [24] gettable  9   9   264  ; R9 := R9[K8(="char")]
0866  80020003           [25] move      10  6        ; R10 := R6
086A  64820001           [26] call      9   2   2    ; R9 := R9(R10)
086E  CA410204           [27] settable  7   8   9    ; R7[R8] := R9
0872  A9800000           [28] tforcall  2       2    ; R5, R6 := R2(R3,R4)
0876  2A01FD7F           [29] tforloop  4   -11      ; if R5 ~= nil then { R4 := R5; pc+=-11 (goto [19])
087A  86004000           [30] gettabup  2   0   256  ; R2 := U0[K0(="o")]
087E  C6404100           [31] gettabup  3   0   261  ; R3 := U0[K5(="t")]
0882  8AC08080           [32] settable  2   257 3    ; R2[K1(="data")] := R3
0886  EE2C8314           [33] extraarg  5377203   ; K5377203(=nil)
088A  2E150377           [34] extraarg  31198292  ; K31198292(=nil)
088E  86004000           [35] gettabup  2   0   256  ; R2 := U0[K0(="o")]
0892  8AC0C084           [36] settable  2   265 259  ; R2[K9(="i")] := K3(=1)
0896  86004000           [37] gettabup  2   0   256  ; R2 := U0[K0(="o")]
089A  DC008000           [38] len       3   1        ; R3 := # R1
089E  8AC00085           [39] settable  2   266 3    ; R2[K10(="length")] := R3
08A2  86C04200           [40] gettabup  2   0   267  ; R2 := U0[K11(="setmetatable")]
08A6  C6004000           [41] gettabup  3   0   256  ; R3 := U0[K0(="o")]
08AA  00010000           [42] move      4   0        ; R4 := R0
08AE  A4408001           [43] call      2   3   1    ;  := R2(R3, R4)
08B2  0A000086           [44] settable  0   268 0    ; R0[K12(="__index")] := R0
08B6  86004000           [45] gettabup  2   0   256  ; R2 := U0[K0(="o")]
08BA  A6000001           [46] return    2   2        ; return R2
08BE  26008000           [47] return    0   1        ; return 
                         * constants:
08C2  0D000000           sizek (13)
08C6  04                 const type LUA_TSHRSTR
08C7  02                 string size (2)
08C8  6F                 "o"
                         const [0]: "o"
08C9  04                 const type LUA_TSHRSTR
08CA  05                 string size (5)
08CB  64617461           "data"
                         const [1]: "data"
08CF  04                 const type LUA_TSHRSTR
08D0  05                 string size (5)
08D1  74797065           "type"
                         const [2]: "type"
08D5  13                 const type LUA_TNUMINT
08D6  0100000000000000   const [3]: (1)
08DE  04                 const type LUA_TSHRSTR
08DF  07                 string size (7)
08E0  6E756D626572       "number"
                         const [4]: "number"
08E6  04                 const type LUA_TSHRSTR
08E7  02                 string size (2)
08E8  74                 "t"
                         const [5]: "t"
08E9  04                 const type LUA_TSHRSTR
08EA  06                 string size (6)
08EB  7061697273         "pairs"
                         const [6]: "pairs"
08F0  04                 const type LUA_TSHRSTR
08F1  07                 string size (7)
08F2  737472696E67       "string"
                         const [7]: "string"
08F8  04                 const type LUA_TSHRSTR
08F9  05                 string size (5)
08FA  63686172           "char"
                         const [8]: "char"
08FE  04                 const type LUA_TSHRSTR
08FF  02                 string size (2)
0900  69                 "i"
                         const [9]: "i"
0901  04                 const type LUA_TSHRSTR
0902  07                 string size (7)
0903  6C656E677468       "length"
                         const [10]: "length"
0909  04                 const type LUA_TSHRSTR
090A  0D                 string size (13)
090B  7365746D65746174+  "setmetat"
0913  61626C65           "able"
                         const [11]: "setmetatable"
0917  04                 const type LUA_TSHRSTR
0918  08                 string size (8)
0919  5F5F696E646578     "__index"
                         const [12]: "__index"
                         * upvalues:
0920  01000000           sizeupvalues (1)
                         upvalue [0]: 
0924  00                   instack (0)
0925  00                   idx     (0)
                         * functions:
0926  00000000           sizep (0)
                         * lines:
092A  00000000           sizelineinfo (0)
                         [pc] (line)
                         * locals:
092E  00000000           sizelocvars (0)
                         * upvalue names:
0932  00000000           size_upvalue_names (0)
                         ** end of function 0_0 **

                         
0936                     ** function [1] definition (level 2) 0_1
                         ** start of function 0_1 **
0936  00                 string size (0)
                         source name: (none)
0937  19000000           line defined (25)
093B  22000000           last line defined (34)
093F  02                 numparams (2)
0940  00                 is_vararg (0)
0941  04                 maxstacksize (4)
                         * code:
0942  16000000           sizecode (22)
0946  87004000           [01] gettable  2   0   256  ; R2 := R0[K0(="i")]
094A  8D400001           [02] add       2   2   1    ; R2 := R2 + R1
094E  C7404000           [03] gettable  3   0   257  ; R3 := R0[K1(="length")]
0952  CD80C001           [04] add       3   3   258  ; R3 := R3 + K2(=1)
0956  20808001           [05] lt        0   3   2    ; R3 < R2, pc+=1 (goto [7]) if true
095A  1E800080           [06] jmp       0   3        ; pc+=3 (goto [10])
095E  83000000           [07] loadbool  2   0   0    ; R2 := false
0962  A6000001           [08] return    2   2        ; return R2
0966  1EC00280           [09] jmp       0   12       ; pc+=12 (goto [22])
096A  87004000           [10] gettable  2   0   256  ; R2 := R0[K0(="i")]
096E  8D400001           [11] add       2   2   1    ; R2 := R2 + R1
0972  20804001           [12] lt        0   2   258  ; R2 < K2(=1), pc+=1 (goto [14]) if true
0976  1E800080           [13] jmp       0   3        ; pc+=3 (goto [17])
097A  83000000           [14] loadbool  2   0   0    ; R2 := false
097E  A6000001           [15] return    2   2        ; return R2
0982  1E000180           [16] jmp       0   5        ; pc+=5 (goto [22])
0986  87004000           [17] gettable  2   0   256  ; R2 := R0[K0(="i")]
098A  8D400001           [18] add       2   2   1    ; R2 := R2 + R1
098E  0A800080           [19] settable  0   256 2    ; R0[K0(="i")] := R2
0992  83008000           [20] loadbool  2   1   0    ; R2 := true
0996  A6000001           [21] return    2   2        ; return R2
099A  26008000           [22] return    0   1        ; return 
                         * constants:
099E  03000000           sizek (3)
09A2  04                 const type LUA_TSHRSTR
09A3  02                 string size (2)
09A4  69                 "i"
                         const [0]: "i"
09A5  04                 const type LUA_TSHRSTR
09A6  07                 string size (7)
09A7  6C656E677468       "length"
                         const [1]: "length"
09AD  13                 const type LUA_TNUMINT
09AE  0100000000000000   const [2]: (1)
                         * upvalues:
09B6  00000000           sizeupvalues (0)
                         * functions:
09BA  00000000           sizep (0)
                         * lines:
09BE  00000000           sizelineinfo (0)
                         [pc] (line)
                         * locals:
09C2  00000000           sizelocvars (0)
                         * upvalue names:
09C6  00000000           size_upvalue_names (0)
                         ** end of function 0_1 **

                         
09CA                     ** function [2] definition (level 2) 0_2
                         ** start of function 0_2 **
09CA  00                 string size (0)
                         source name: (none)
09CB  24000000           line defined (36)
09CF  2C000000           last line defined (44)
09D3  02                 numparams (2)
09D4  00                 is_vararg (0)
09D5  0E                 maxstacksize (14)
                         * code:
09D6  17000000           sizecode (23)
09DA  8C004000           [01] self      2   0   256  ; R3 := R0; R2 := R0[K0(="pop_raw")]
09DE  00018000           [02] move      4   1        ; R4 := R1
09E2  A4C08001           [03] call      2   3   3    ; R2, R3 := R2(R3, R4)
09E6  0B010000           [04] newtable  4   0   0    ; R4 := {} , array_size=0, hash_size=0
09EA  46414000           [05] gettabup  5   0   257  ; R5 := U0[K1(="pairs")]
09EE  80010001           [06] move      6   2        ; R6 := R2
09F2  64010101           [07] call      5   2   4    ; R5 to R7 := R5(R6)
09F6  1E000280           [08] jmp       0   9        ; pc+=9 (goto [18])
09FA  9C020002           [09] len       10  4        ; R10 := # R4
09FE  8D824005           [10] add       10  10  258  ; R10 := R10 + K2(=1)
0A02  C6C24000           [11] gettabup  11  0   259  ; R11 := U0[K3(="string")]
0A06  C702C105           [12] gettable  11  11  260  ; R11 := R11[K4(="byte")]
0A0A  00038004           [13] move      12  9        ; R12 := R9
0A0E  41830000           [14] loadk     13  2        ; R13 := K2(=1)
0A12  E4828001           [15] call      11  3   2    ; R11 := R11(R12, R13)
0A16  0AC10205           [16] settable  4   10  11   ; R4[R10] := R11
0A1A  2E250318           [17] extraarg  6294676   ; K6294676(=nil)
0A1E  69810000           [18] tforcall  5       2    ; R8, R9 := R5(R6,R7)
0A22  EA01FD7F           [19] tforloop  7   -11      ; if R8 ~= nil then { R7 := R8; pc+=-11 (goto [9])
0A26  40010002           [20] move      5   4        ; R5 := R4
0A2A  80018001           [21] move      6   3        ; R6 := R3
0A2E  66018001           [22] return    5   3        ; return R5, R6
0A32  26008000           [23] return    0   1        ; return 
                         * constants:
0A36  05000000           sizek (5)
0A3A  04                 const type LUA_TSHRSTR
0A3B  08                 string size (8)
0A3C  706F705F726177     "pop_raw"
                         const [0]: "pop_raw"
0A43  04                 const type LUA_TSHRSTR
0A44  06                 string size (6)
0A45  7061697273         "pairs"
                         const [1]: "pairs"
0A4A  13                 const type LUA_TNUMINT
0A4B  0100000000000000   const [2]: (1)
0A53  04                 const type LUA_TSHRSTR
0A54  07                 string size (7)
0A55  737472696E67       "string"
                         const [3]: "string"
0A5B  04                 const type LUA_TSHRSTR
0A5C  05                 string size (5)
0A5D  62797465           "byte"
                         const [4]: "byte"
                         * upvalues:
0A61  01000000           sizeupvalues (1)
                         upvalue [0]: 
0A65  00                   instack (0)
0A66  00                   idx     (0)
                         * functions:
0A67  00000000           sizep (0)
                         * lines:
0A6B  00000000           sizelineinfo (0)
                         [pc] (line)
                         * locals:
0A6F  00000000           sizelocvars (0)
                         * upvalue names:
0A73  00000000           size_upvalue_names (0)
                         ** end of function 0_2 **

                         
0A77                     ** function [3] definition (level 2) 0_3
                         ** start of function 0_3 **
0A77  00                 string size (0)
                         source name: (none)
0A78  2E000000           line defined (46)
0A7C  32000000           last line defined (50)
0A80  02                 numparams (2)
0A81  00                 is_vararg (0)
0A82  07                 maxstacksize (7)
                         * code:
0A83  10000000           sizecode (16)
0A87  8B000000           [01] newtable  2   0   0    ; R2 := {} , array_size=0, hash_size=0
0A8B  C6004000           [02] gettabup  3   0   256  ; R3 := U0[K0(="unpack")]
0A8F  07414000           [03] gettable  4   0   257  ; R4 := R0[K1(="data")]
0A93  47814000           [04] gettable  5   0   258  ; R5 := R0[K2(="i")]
0A97  87814000           [05] gettable  6   0   258  ; R6 := R0[K2(="i")]
0A9B  8D410003           [06] add       6   6   1    ; R6 := R6 + R1
0A9F  8EC14003           [07] sub       6   6   259  ; R6 := R6 - K3(=1)
0AA3  E4000002           [08] call      3   4   0    ; R3 to top := R3(R4 to R6)
0AA7  AB400000           [09] setlist   2   0   1    ; R2[1 to top] := R3 to top
0AAB  CC004100           [10] self      3   0   260  ; R4 := R0; R3 := R0[K4(="move")]
0AAF  40018000           [11] move      5   1        ; R5 := R1
0AB3  E4808001           [12] call      3   3   2    ; R3 := R3(R4, R5)
0AB7  00010001           [13] move      4   2        ; R4 := R2
0ABB  40018001           [14] move      5   3        ; R5 := R3
0ABF  26018001           [15] return    4   3        ; return R4, R5
0AC3  26008000           [16] return    0   1        ; return 
                         * constants:
0AC7  05000000           sizek (5)
0ACB  04                 const type LUA_TSHRSTR
0ACC  07                 string size (7)
0ACD  756E7061636B       "unpack"
                         const [0]: "unpack"
0AD3  04                 const type LUA_TSHRSTR
0AD4  05                 string size (5)
0AD5  64617461           "data"
                         const [1]: "data"
0AD9  04                 const type LUA_TSHRSTR
0ADA  02                 string size (2)
0ADB  69                 "i"
                         const [2]: "i"
0ADC  13                 const type LUA_TNUMINT
0ADD  0100000000000000   const [3]: (1)
0AE5  04                 const type LUA_TSHRSTR
0AE6  05                 string size (5)
0AE7  6D6F7665           "move"
                         const [4]: "move"
                         * upvalues:
0AEB  01000000           sizeupvalues (1)
                         upvalue [0]: 
0AEF  00                   instack (0)
0AF0  00                   idx     (0)
                         * functions:
0AF1  00000000           sizep (0)
                         * lines:
0AF5  00000000           sizelineinfo (0)
                         [pc] (line)
                         * locals:
0AF9  00000000           sizelocvars (0)
                         * upvalue names:
0AFD  00000000           size_upvalue_names (0)
                         ** end of function 0_3 **

                         
0B01                     ** function [4] definition (level 2) 0_4
                         ** start of function 0_4 **
0B01  00                 string size (0)
                         source name: (none)
0B02  34000000           line defined (52)
0B06  37000000           last line defined (55)
0B0A  01                 numparams (1)
0B0B  00                 is_vararg (0)
0B0C  05                 maxstacksize (5)
                         * code:
0B0D  07000000           sizecode (7)
0B11  4C004000           [1] self      1   0   256  ; R2 := R0; R1 := R0[K0(="pop")]
0B15  C1400000           [2] loadk     3   1        ; R3 := K1(=1)
0B19  64C08001           [3] call      1   3   3    ; R1, R2 := R1(R2, R3)
0B1D  C740C000           [4] gettable  3   1   257  ; R3 := R1[K1(=1)]
0B21  00010001           [5] move      4   2        ; R4 := R2
0B25  E6008001           [6] return    3   3        ; return R3, R4
0B29  26008000           [7] return    0   1        ; return 
                         * constants:
0B2D  02000000           sizek (2)
0B31  04                 const type LUA_TSHRSTR
0B32  04                 string size (4)
0B33  706F70             "pop"
                         const [0]: "pop"
0B36  13                 const type LUA_TNUMINT
0B37  0100000000000000   const [1]: (1)
                         * upvalues:
0B3F  00000000           sizeupvalues (0)
                         * functions:
0B43  00000000           sizep (0)
                         * lines:
0B47  00000000           sizelineinfo (0)
                         [pc] (line)
                         * locals:
0B4B  00000000           sizelocvars (0)
                         * upvalue names:
0B4F  00000000           size_upvalue_names (0)
                         ** end of function 0_4 **

                         
0B53                     ** function [5] definition (level 2) 0_5
                         ** start of function 0_5 **
0B53  00                 string size (0)
                         source name: (none)
0B54  39000000           line defined (57)
0B58  45000000           last line defined (69)
0B5C  01                 numparams (1)
0B5D  00                 is_vararg (0)
0B5E  0B                 maxstacksize (11)
                         * code:
0B5F  18000000           sizecode (24)
0B63  41000000           [01] loadk     1   0        ; R1 := K0(=0)
0B67  8C404000           [02] self      2   0   257  ; R3 := R0; R2 := R0[K1(="pop")]
0B6B  01810000           [03] loadk     4   2        ; R4 := K2(=4)
0B6F  A4808001           [04] call      2   3   2    ; R2 := R2(R3, R4)
0B73  C6C04000           [05] gettabup  3   0   259  ; R3 := U0[K3(="pairs")]
0B77  00010001           [06] move      4   2        ; R4 := R2
0B7B  E4000101           [07] call      3   2   4    ; R3 to R5 := R3(R4)
0B7F  1E400180           [08] jmp       0   6        ; pc+=6 (goto [15])
0B83  05028000           [09] getupval  8   1        ; R8 := U1
0B87  40028003           [10] move      9   7        ; R9 := R7
0B8B  8E024103           [11] sub       10  6   260  ; R10 := R6 - K4(=1)
0B8F  8F828282           [12] mul       10  261 10   ; R10 := K5(=8) * R10
0B93  24828001           [13] call      8   3   2    ; R8 := R8(R9, R10)
0B97  4D008200           [14] add       1   1   8    ; R1 := R1 + R8
0B9B  E9800000           [15] tforcall  3       2    ; R6, R7 := R3(R4,R5)
0B9F  6AC1FD7F           [16] tforloop  5   -8       ; if R6 ~= nil then { R5 := R6; pc+=-8 (goto [9])
0BA3  2E140313           [17] extraarg  4983888   ; K4983888(=nil)
0BA7  20400083           [18] lt        0   262 1    ; K6(=2147483648.0) < R1, pc+=1 (goto [20]) if true
0BAB  1E800080           [19] jmp       0   3        ; pc+=3 (goto [23])
0BAF  4D80C100           [20] add       1   1   262  ; R1 := R1 + K6(=2147483648.0)
0BB3  50C0C100           [21] mod       1   1   263  ; R1 := R1 % K7(=4294967296.0)
0BB7  4E80C100           [22] sub       1   1   262  ; R1 := R1 - K6(=2147483648.0)
0BBB  66000001           [23] return    1   2        ; return R1
0BBF  26008000           [24] return    0   1        ; return 
                         * constants:
0BC3  08000000           sizek (8)
0BC7  13                 const type LUA_TNUMINT
0BC8  0000000000000000   const [0]: (0)
0BD0  04                 const type LUA_TSHRSTR
0BD1  04                 string size (4)
0BD2  706F70             "pop"
                         const [1]: "pop"
0BD5  13                 const type LUA_TNUMINT
0BD6  0400000000000000   const [2]: (4)
0BDE  04                 const type LUA_TSHRSTR
0BDF  06                 string size (6)
0BE0  7061697273         "pairs"
                         const [3]: "pairs"
0BE5  13                 const type LUA_TNUMINT
0BE6  0100000000000000   const [4]: (1)
0BEE  13                 const type LUA_TNUMINT
0BEF  0800000000000000   const [5]: (8)
0BF7  03                 const type LUA_TNUMFLT
0BF8  000000000000E041   const [6]: (2147483648.0)
0C00  03                 const type LUA_TNUMFLT
0C01  000000000000F041   const [7]: (4294967296.0)
                         * upvalues:
0C09  02000000           sizeupvalues (2)
                         upvalue [0]: 
0C0D  00                   instack (0)
0C0E  00                   idx     (0)
                         upvalue [1]: 
0C0F  01                   instack (1)
0C10  01                   idx     (1)
                         * functions:
0C11  00000000           sizep (0)
                         * lines:
0C15  00000000           sizelineinfo (0)
                         [pc] (line)
                         * locals:
0C19  00000000           sizelocvars (0)
                         * upvalue names:
0C1D  00000000           size_upvalue_names (0)
                         ** end of function 0_5 **

                         
0C21                     ** function [6] definition (level 2) 0_6
                         ** start of function 0_6 **
0C21  00                 string size (0)
                         source name: (none)
0C22  47000000           line defined (71)
0C26  50000000           last line defined (80)
0C2A  01                 numparams (1)
0C2B  00                 is_vararg (0)
0C2C  0B                 maxstacksize (11)
                         * code:
0C2D  12000000           sizecode (18)
0C31  41000000           [01] loadk     1   0        ; R1 := K0(="")
0C35  8C404000           [02] self      2   0   257  ; R3 := R0; R2 := R0[K1(="readInt")]
0C39  A4800001           [03] call      2   2   2    ; R2 := R2(R3)
0C3D  CC804000           [04] self      3   0   258  ; R4 := R0; R3 := R0[K2(="pop_raw")]
0C41  40010001           [05] move      5   2        ; R5 := R2
0C45  E4808001           [06] call      3   3   2    ; R3 := R3(R4, R5)
0C49  6E33833A           [07] extraarg  15338701  ; K15338701(=nil)
0C4D  06C14000           [08] gettabup  4   0   259  ; R4 := U0[K3(="pairs")]
0C51  40018001           [09] move      5   3        ; R5 := R3
0C55  24010101           [10] call      4   2   4    ; R4 to R6 := R4(R5)
0C59  1E800080           [11] jmp       0   3        ; pc+=3 (goto [15])
0C5D  40028000           [12] move      9   1        ; R9 := R1
0C61  80020004           [13] move      10  8        ; R10 := R8
0C65  5D808204           [14] concat    1   9   10   ; R1 := R9, R10
0C69  29810000           [15] tforcall  4       2    ; R7, R8 := R4(R5,R6)
0C6D  AA81FE7F           [16] tforloop  6   -5       ; if R7 ~= nil then { R6 := R7; pc+=-5 (goto [12])
0C71  66000001           [17] return    1   2        ; return R1
0C75  26008000           [18] return    0   1        ; return 
                         * constants:
0C79  04000000           sizek (4)
0C7D  04                 const type LUA_TSHRSTR
0C7E  01                 string size (1)
0C7F                     ""
                         const [0]: ""
0C7F  04                 const type LUA_TSHRSTR
0C80  08                 string size (8)
0C81  72656164496E74     "readInt"
                         const [1]: "readInt"
0C88  04                 const type LUA_TSHRSTR
0C89  08                 string size (8)
0C8A  706F705F726177     "pop_raw"
                         const [2]: "pop_raw"
0C91  04                 const type LUA_TSHRSTR
0C92  06                 string size (6)
0C93  7061697273         "pairs"
                         const [3]: "pairs"
                         * upvalues:
0C98  01000000           sizeupvalues (1)
                         upvalue [0]: 
0C9C  00                   instack (0)
0C9D  00                   idx     (0)
                         * functions:
0C9E  00000000           sizep (0)
                         * lines:
0CA2  00000000           sizelineinfo (0)
                         [pc] (line)
                         * locals:
0CA6  00000000           sizelocvars (0)
                         * upvalue names:
0CAA  00000000           size_upvalue_names (0)
                         ** end of function 0_6 **

                         
0CAE                     ** function [7] definition (level 2) 0_7
                         ** start of function 0_7 **
0CAE  00                 string size (0)
                         source name: (none)
0CAF  52000000           line defined (82)
0CB3  54000000           last line defined (84)
0CB7  01                 numparams (1)
0CB8  00                 is_vararg (0)
0CB9  02                 maxstacksize (2)
                         * code:
0CBA  04000000           sizecode (4)
0CBE  47004000           [1] gettable  1   0   256  ; R1 := R0[K0(="i")]
0CC2  4E40C000           [2] sub       1   1   257  ; R1 := R1 - K1(=1)
0CC6  66000001           [3] return    1   2        ; return R1
0CCA  26008000           [4] return    0   1        ; return 
                         * constants:
0CCE  02000000           sizek (2)
0CD2  04                 const type LUA_TSHRSTR
0CD3  02                 string size (2)
0CD4  69                 "i"
                         const [0]: "i"
0CD5  13                 const type LUA_TNUMINT
0CD6  0100000000000000   const [1]: (1)
                         * upvalues:
0CDE  00000000           sizeupvalues (0)
                         * functions:
0CE2  00000000           sizep (0)
                         * lines:
0CE6  00000000           sizelineinfo (0)
                         [pc] (line)
                         * locals:
0CEA  00000000           sizelocvars (0)
                         * upvalue names:
0CEE  00000000           size_upvalue_names (0)
                         ** end of function 0_7 **

                         
0CF2                     ** function [8] definition (level 2) 0_8
                         ** start of function 0_8 **
0CF2  00                 string size (0)
                         source name: (none)
0CF3  59000000           line defined (89)
0CF7  5F000000           last line defined (95)
0CFB  01                 numparams (1)
0CFC  00                 is_vararg (0)
0CFD  05                 maxstacksize (5)
                         * code:
0CFE  0A000000           sizecode (10)
0D02  4B000000           [01] newtable  1   0   0    ; R1 := {} , array_size=0, hash_size=0
0D06  86004000           [02] gettabup  2   0   256  ; R2 := U0[K0(="setmetatable")]
0D0A  C0008000           [03] move      3   1        ; R3 := R1
0D0E  00010000           [04] move      4   0        ; R4 := R0
0D12  A4408001           [05] call      2   3   1    ;  := R2(R3, R4)
0D16  0A008080           [06] settable  0   257 0    ; R0[K1(="__index")] := R0
0D1A  8B000000           [07] newtable  2   0   0    ; R2 := {} , array_size=0, hash_size=0
0D1E  4A800081           [08] settable  1   258 2    ; R1[K2(="stack")] := R2
0D22  66000001           [09] return    1   2        ; return R1
0D26  26008000           [10] return    0   1        ; return 
                         * constants:
0D2A  03000000           sizek (3)
0D2E  04                 const type LUA_TSHRSTR
0D2F  0D                 string size (13)
0D30  7365746D65746174+  "setmetat"
0D38  61626C65           "able"
                         const [0]: "setmetatable"
0D3C  04                 const type LUA_TSHRSTR
0D3D  08                 string size (8)
0D3E  5F5F696E646578     "__index"
                         const [1]: "__index"
0D45  04                 const type LUA_TSHRSTR
0D46  06                 string size (6)
0D47  737461636B         "stack"
                         const [2]: "stack"
                         * upvalues:
0D4C  01000000           sizeupvalues (1)
                         upvalue [0]: 
0D50  00                   instack (0)
0D51  00                   idx     (0)
                         * functions:
0D52  00000000           sizep (0)
                         * lines:
0D56  00000000           sizelineinfo (0)
                         [pc] (line)
                         * locals:
0D5A  00000000           sizelocvars (0)
                         * upvalue names:
0D5E  00000000           size_upvalue_names (0)
                         ** end of function 0_8 **

                         
0D62                     ** function [9] definition (level 2) 0_9
                         ** start of function 0_9 **
0D62  00                 string size (0)
                         source name: (none)
0D63  61000000           line defined (97)
0D67  64000000           last line defined (100)
0D6B  02                 numparams (2)
0D6C  00                 is_vararg (0)
0D6D  05                 maxstacksize (5)
                         * code:
0D6E  07000000           sizecode (7)
0D72  86004000           [1] gettabup  2   0   256  ; R2 := U0[K0(="table")]
0D76  87404001           [2] gettable  2   2   257  ; R2 := R2[K1(="insert")]
0D7A  C7804000           [3] gettable  3   0   258  ; R3 := R0[K2(="stack")]
0D7E  00018000           [4] move      4   1        ; R4 := R1
0D82  A4408001           [5] call      2   3   1    ;  := R2(R3, R4)
0D86  EE0F8353           [6] extraarg  21892159  ; K21892159(=nil)
0D8A  26008000           [7] return    0   1        ; return 
                         * constants:
0D8E  03000000           sizek (3)
0D92  04                 const type LUA_TSHRSTR
0D93  06                 string size (6)
0D94  7461626C65         "table"
                         const [0]: "table"
0D99  04                 const type LUA_TSHRSTR
0D9A  07                 string size (7)
0D9B  696E73657274       "insert"
                         const [1]: "insert"
0DA1  04                 const type LUA_TSHRSTR
0DA2  06                 string size (6)
0DA3  737461636B         "stack"
                         const [2]: "stack"
                         * upvalues:
0DA8  01000000           sizeupvalues (1)
                         upvalue [0]: 
0DAC  00                   instack (0)
0DAD  00                   idx     (0)
                         * functions:
0DAE  00000000           sizep (0)
                         * lines:
0DB2  00000000           sizelineinfo (0)
                         [pc] (line)
                         * locals:
0DB6  00000000           sizelocvars (0)
                         * upvalue names:
0DBA  00000000           size_upvalue_names (0)
                         ** end of function 0_9 **

                         
0DBE                     ** function [10] definition (level 2) 0_10
                         ** start of function 0_10 **
0DBE  00                 string size (0)
                         source name: (none)
0DBF  66000000           line defined (102)
0DC3  6F000000           last line defined (111)
0DC7  02                 numparams (2)
0DC8  00                 is_vararg (0)
0DC9  0C                 maxstacksize (12)
                         * code:
0DCA  18000000           sizecode (24)
0DCE  A3408000           [01] testset   2   1   1    ; if R1 then R2 = R1 else pc+=1 (goto [3])
0DD2  1E000080           [02] jmp       0   1        ; pc+=1 (goto [4])
0DD6  81000000           [03] loadk     2   0        ; R2 := K0(=1)
0DDA  CB000000           [04] newtable  3   0   0    ; R3 := {} , array_size=0, hash_size=0
0DDE  01010000           [05] loadk     4   0        ; R4 := K0(=1)
0DE2  40010001           [06] move      5   2        ; R5 := R2
0DE6  81010000           [07] loadk     6   0        ; R6 := K0(=1)
0DEA  28010280           [08] forprep   4   9        ; R4 -= R6; pc+=9 (goto [18])
0DEE  1C028001           [09] len       8   3        ; R8 := # R3
0DF2  0D024004           [10] add       8   8   256  ; R8 := R8 + K0(=1)
0DF6  46424000           [11] gettabup  9   0   257  ; R9 := U0[K1(="table")]
0DFA  4782C004           [12] gettable  9   9   258  ; R9 := R9[K2(="remove")]
0DFE  87C24000           [13] gettable  10  0   259  ; R10 := R0[K3(="stack")]
0E02  C7C24000           [14] gettable  11  0   259  ; R11 := R0[K3(="stack")]
0E06  DC028005           [15] len       11  11       ; R11 := # R11
0E0A  64828001           [16] call      9   3   2    ; R9 := R9(R10, R11)
0E0E  CA400204           [17] settable  3   8   9    ; R3[R8] := R9
0E12  2741FD7F           [18] forloop   4   -10      ; R4 += R6; if R4 <= R5 then { R7 := R4; pc+=-10 (goto [9]) }
0E16  6E3B831B           [19] extraarg  7212269   ; K7212269(=nil)
0E1A  06014100           [20] gettabup  4   0   260  ; R4 := U0[K4(="unpack")]
0E1E  40018001           [21] move      5   3        ; R5 := R3
0E22  25010001           [22] tailcall  4   2   0    ; R4 to top := R4(R5)
0E26  26010000           [23] return    4   0        ; return R4 to top
0E2A  26008000           [24] return    0   1        ; return 
                         * constants:
0E2E  05000000           sizek (5)
0E32  13                 const type LUA_TNUMINT
0E33  0100000000000000   const [0]: (1)
0E3B  04                 const type LUA_TSHRSTR
0E3C  06                 string size (6)
0E3D  7461626C65         "table"
                         const [1]: "table"
0E42  04                 const type LUA_TSHRSTR
0E43  07                 string size (7)
0E44  72656D6F7665       "remove"
                         const [2]: "remove"
0E4A  04                 const type LUA_TSHRSTR
0E4B  06                 string size (6)
0E4C  737461636B         "stack"
                         const [3]: "stack"
0E51  04                 const type LUA_TSHRSTR
0E52  07                 string size (7)
0E53  756E7061636B       "unpack"
                         const [4]: "unpack"
                         * upvalues:
0E59  01000000           sizeupvalues (1)
                         upvalue [0]: 
0E5D  00                   instack (0)
0E5E  00                   idx     (0)
                         * functions:
0E5F  00000000           sizep (0)
                         * lines:
0E63  00000000           sizelineinfo (0)
                         [pc] (line)
                         * locals:
0E67  00000000           sizelocvars (0)
                         * upvalue names:
0E6B  00000000           size_upvalue_names (0)
                         ** end of function 0_10 **

                         
0E6F                     ** function [11] definition (level 2) 0_11
                         ** start of function 0_11 **
0E6F  00                 string size (0)
                         source name: (none)
0E70  73000000           line defined (115)
0E74  73000000           last line defined (115)
0E78  02                 numparams (2)
0E79  00                 is_vararg (0)
0E7A  03                 maxstacksize (3)
                         * code:
0E7B  03000000           sizecode (3)
0E7F  90400000           [1] mod       2   0   1    ; R2 := R0 % R1
0E83  A6000001           [2] return    2   2        ; return R2
0E87  26008000           [3] return    0   1        ; return 
                         * constants:
0E8B  00000000           sizek (0)
                         * upvalues:
0E8F  00000000           sizeupvalues (0)
                         * functions:
0E93  00000000           sizep (0)
                         * lines:
0E97  00000000           sizelineinfo (0)
                         [pc] (line)
                         * locals:
0E9B  00000000           sizelocvars (0)
                         * upvalue names:
0E9F  00000000           size_upvalue_names (0)
                         ** end of function 0_11 **

                         
0EA3                     ** function [12] definition (level 2) 0_12
                         ** start of function 0_12 **
0EA3  00                 string size (0)
                         source name: (none)
0EA4  74000000           line defined (116)
0EA8  74000000           last line defined (116)
0EAC  02                 numparams (2)
0EAD  00                 is_vararg (0)
0EAE  03                 maxstacksize (3)
                         * code:
0EAF  06000000           sizecode (6)
0EB3  5F400000           [1] eq        1   0   1    ; R0 == R1, pc+=1 (goto [3]) if false
0EB7  1E000080           [2] jmp       0   1        ; pc+=1 (goto [4])
0EBB  83400000           [3] loadbool  2   0   1    ; R2 := false; pc+=1 (goto [5])
0EBF  83008000           [4] loadbool  2   1   0    ; R2 := true
0EC3  A6000001           [5] return    2   2        ; return R2
0EC7  26008000           [6] return    0   1        ; return 
                         * constants:
0ECB  00000000           sizek (0)
                         * upvalues:
0ECF  00000000           sizeupvalues (0)
                         * functions:
0ED3  00000000           sizep (0)
                         * lines:
0ED7  00000000           sizelineinfo (0)
                         [pc] (line)
                         * locals:
0EDB  00000000           sizelocvars (0)
                         * upvalue names:
0EDF  00000000           size_upvalue_names (0)
                         ** end of function 0_12 **

                         
0EE3                     ** function [13] definition (level 2) 0_13
                         ** start of function 0_13 **
0EE3  00                 string size (0)
                         source name: (none)
0EE4  75000000           line defined (117)
0EE8  75000000           last line defined (117)
0EEC  02                 numparams (2)
0EED  00                 is_vararg (0)
0EEE  03                 maxstacksize (3)
                         * code:
0EEF  06000000           sizecode (6)
0EF3  1F400000           [1] eq        0   0   1    ; R0 == R1, pc+=1 (goto [3]) if true
0EF7  1E000080           [2] jmp       0   1        ; pc+=1 (goto [4])
0EFB  83400000           [3] loadbool  2   0   1    ; R2 := false; pc+=1 (goto [5])
0EFF  83008000           [4] loadbool  2   1   0    ; R2 := true
0F03  A6000001           [5] return    2   2        ; return R2
0F07  26008000           [6] return    0   1        ; return 
                         * constants:
0F0B  00000000           sizek (0)
                         * upvalues:
0F0F  00000000           sizeupvalues (0)
                         * functions:
0F13  00000000           sizep (0)
                         * lines:
0F17  00000000           sizelineinfo (0)
                         [pc] (line)
                         * locals:
0F1B  00000000           sizelocvars (0)
                         * upvalue names:
0F1F  00000000           size_upvalue_names (0)
                         ** end of function 0_13 **

                         
0F23                     ** function [14] definition (level 2) 0_14
                         ** start of function 0_14 **
0F23  00                 string size (0)
                         source name: (none)
0F24  76000000           line defined (118)
0F28  76000000           last line defined (118)
0F2C  02                 numparams (2)
0F2D  00                 is_vararg (0)
0F2E  03                 maxstacksize (3)
                         * code:
0F2F  06000000           sizecode (6)
0F33  61400000           [1] le        1   0   1    ; R0 <= R1, pc+=1 (goto [3]) if false
0F37  1E000080           [2] jmp       0   1        ; pc+=1 (goto [4])
0F3B  83400000           [3] loadbool  2   0   1    ; R2 := false; pc+=1 (goto [5])
0F3F  83008000           [4] loadbool  2   1   0    ; R2 := true
0F43  A6000001           [5] return    2   2        ; return R2
0F47  26008000           [6] return    0   1        ; return 
                         * constants:
0F4B  00000000           sizek (0)
                         * upvalues:
0F4F  00000000           sizeupvalues (0)
                         * functions:
0F53  00000000           sizep (0)
                         * lines:
0F57  00000000           sizelineinfo (0)
                         [pc] (line)
                         * locals:
0F5B  00000000           sizelocvars (0)
                         * upvalue names:
0F5F  00000000           size_upvalue_names (0)
                         ** end of function 0_14 **

                         
0F63                     ** function [15] definition (level 2) 0_15
                         ** start of function 0_15 **
0F63  00                 string size (0)
                         source name: (none)
0F64  77000000           line defined (119)
0F68  77000000           last line defined (119)
0F6C  02                 numparams (2)
0F6D  00                 is_vararg (0)
0F6E  03                 maxstacksize (3)
                         * code:
0F6F  06000000           sizecode (6)
0F73  61008000           [1] le        1   1   0    ; R1 <= R0, pc+=1 (goto [3]) if false
0F77  1E000080           [2] jmp       0   1        ; pc+=1 (goto [4])
0F7B  83400000           [3] loadbool  2   0   1    ; R2 := false; pc+=1 (goto [5])
0F7F  83008000           [4] loadbool  2   1   0    ; R2 := true
0F83  A6000001           [5] return    2   2        ; return R2
0F87  26008000           [6] return    0   1        ; return 
                         * constants:
0F8B  00000000           sizek (0)
                         * upvalues:
0F8F  00000000           sizeupvalues (0)
                         * functions:
0F93  00000000           sizep (0)
                         * lines:
0F97  00000000           sizelineinfo (0)
                         [pc] (line)
                         * locals:
0F9B  00000000           sizelocvars (0)
                         * upvalue names:
0F9F  00000000           size_upvalue_names (0)
                         ** end of function 0_15 **

                         
0FA3                     ** function [16] definition (level 2) 0_16
                         ** start of function 0_16 **
0FA3  00                 string size (0)
                         source name: (none)
0FA4  78000000           line defined (120)
0FA8  78000000           last line defined (120)
0FAC  02                 numparams (2)
0FAD  00                 is_vararg (0)
0FAE  03                 maxstacksize (3)
                         * code:
0FAF  06000000           sizecode (6)
0FB3  60400000           [1] lt        1   0   1    ; R0 < R1, pc+=1 (goto [3]) if false
0FB7  1E000080           [2] jmp       0   1        ; pc+=1 (goto [4])
0FBB  83400000           [3] loadbool  2   0   1    ; R2 := false; pc+=1 (goto [5])
0FBF  83008000           [4] loadbool  2   1   0    ; R2 := true
0FC3  A6000001           [5] return    2   2        ; return R2
0FC7  26008000           [6] return    0   1        ; return 
                         * constants:
0FCB  00000000           sizek (0)
                         * upvalues:
0FCF  00000000           sizeupvalues (0)
                         * functions:
0FD3  00000000           sizep (0)
                         * lines:
0FD7  00000000           sizelineinfo (0)
                         [pc] (line)
                         * locals:
0FDB  00000000           sizelocvars (0)
                         * upvalue names:
0FDF  00000000           size_upvalue_names (0)
                         ** end of function 0_16 **

                         
0FE3                     ** function [17] definition (level 2) 0_17
                         ** start of function 0_17 **
0FE3  00                 string size (0)
                         source name: (none)
0FE4  79000000           line defined (121)
0FE8  79000000           last line defined (121)
0FEC  02                 numparams (2)
0FED  00                 is_vararg (0)
0FEE  03                 maxstacksize (3)
                         * code:
0FEF  06000000           sizecode (6)
0FF3  60008000           [1] lt        1   1   0    ; R1 < R0, pc+=1 (goto [3]) if false
0FF7  1E000080           [2] jmp       0   1        ; pc+=1 (goto [4])
0FFB  83400000           [3] loadbool  2   0   1    ; R2 := false; pc+=1 (goto [5])
0FFF  83008000           [4] loadbool  2   1   0    ; R2 := true
1003  A6000001           [5] return    2   2        ; return R2
1007  26008000           [6] return    0   1        ; return 
                         * constants:
100B  00000000           sizek (0)
                         * upvalues:
100F  00000000           sizeupvalues (0)
                         * functions:
1013  00000000           sizep (0)
                         * lines:
1017  00000000           sizelineinfo (0)
                         [pc] (line)
                         * locals:
101B  00000000           sizelocvars (0)
                         * upvalue names:
101F  00000000           size_upvalue_names (0)
                         ** end of function 0_17 **

                         
1023                     ** function [18] definition (level 2) 0_18
                         ** start of function 0_18 **
1023  00                 string size (0)
                         source name: (none)
1024  7C000000           line defined (124)
1028  89000000           last line defined (137)
102C  01                 numparams (1)
102D  00                 is_vararg (0)
102E  0B                 maxstacksize (11)
                         * code:
102F  1F000000           sizecode (31)
1033  40000000           [01] move      1   0        ; R1 := R0
1037  86004000           [02] gettabup  2   0   256  ; R2 := U0[K0(="assert")]
103B  C6404000           [03] gettabup  3   0   257  ; R3 := U0[K1(="io")]
103F  C780C001           [04] gettable  3   3   258  ; R3 := R3[K2(="open")]
1043  00018000           [05] move      4   1        ; R4 := R1
1047  41C10000           [06] loadk     5   3        ; R5 := K3(="rb")
104B  E4008001           [07] call      3   3   0    ; R3 to top := R3(R4, R5)
104F  A4800000           [08] call      2   0   2    ; R2 := R2(R3 to top)
1053  CB000000           [09] newtable  3   0   0    ; R3 := {} , array_size=0, hash_size=0
1057  2E018364           [10] extraarg  26348548  ; K26348548(=nil)
105B  0C014101           [11] self      4   2   260  ; R5 := R2; R4 := R2[K4(="read")]
105F  81410100           [12] loadk     6   5        ; R6 := K5(=4096)
1063  24818001           [13] call      4   3   2    ; R4 := R4(R5, R6)
1067  63410002           [14] testset   5   4   1    ; if R4 then R5 = R4 else pc+=1 (goto [16])
106B  1E000080           [15] jmp       0   1        ; pc+=1 (goto [17])
106F  41810100           [16] loadk     5   6        ; R5 := K6(="")
1073  4CC1C102           [17] self      5   5   263  ; R6 := R5; R5 := R5[K7(="gmatch")]
1077  C1010200           [18] loadk     7   8        ; R7 := K8(=".")
107B  64018101           [19] call      5   3   4    ; R5 to R7 := R5(R6, R7)
107F  1E800080           [20] jmp       0   3        ; pc+=3 (goto [24])
1083  5C028001           [21] len       9   3        ; R9 := # R3
1087  4D42C204           [22] add       9   9   265  ; R9 := R9 + K9(=1)
108B  CA008204           [23] settable  3   9   8    ; R3[R9] := R8
108F  69410000           [24] tforcall  5       1    ; R8 := R5(R6,R7)
1093  EA81FE7F           [25] tforloop  7   -5       ; if R8 ~= nil then { R7 := R8; pc+=-5 (goto [21])
1097  22410000           [26] test      4       1    ; if not R4 then pc+=1 (goto [28])
109B  1E40FB7F           [27] jmp       0   -18      ; pc+=-18 (goto [10])
109F  0C814201           [28] self      4   2   266  ; R5 := R2; R4 := R2[K10(="close")]
10A3  24410001           [29] call      4   2   1    ;  := R4(R5)
10A7  E6000001           [30] return    3   2        ; return R3
10AB  26008000           [31] return    0   1        ; return 
                         * constants:
10AF  0B000000           sizek (11)
10B3  04                 const type LUA_TSHRSTR
10B4  07                 string size (7)
10B5  617373657274       "assert"
                         const [0]: "assert"
10BB  04                 const type LUA_TSHRSTR
10BC  03                 string size (3)
10BD  696F               "io"
                         const [1]: "io"
10BF  04                 const type LUA_TSHRSTR
10C0  05                 string size (5)
10C1  6F70656E           "open"
                         const [2]: "open"
10C5  04                 const type LUA_TSHRSTR
10C6  03                 string size (3)
10C7  7262               "rb"
                         const [3]: "rb"
10C9  04                 const type LUA_TSHRSTR
10CA  05                 string size (5)
10CB  72656164           "read"
                         const [4]: "read"
10CF  13                 const type LUA_TNUMINT
10D0  0010000000000000   const [5]: (4096)
10D8  04                 const type LUA_TSHRSTR
10D9  01                 string size (1)
10DA                     ""
                         const [6]: ""
10DA  04                 const type LUA_TSHRSTR
10DB  07                 string size (7)
10DC  676D61746368       "gmatch"
                         const [7]: "gmatch"
10E2  04                 const type LUA_TSHRSTR
10E3  02                 string size (2)
10E4  2E                 "."
                         const [8]: "."
10E5  13                 const type LUA_TNUMINT
10E6  0100000000000000   const [9]: (1)
10EE  04                 const type LUA_TSHRSTR
10EF  06                 string size (6)
10F0  636C6F7365         "close"
                         const [10]: "close"
                         * upvalues:
10F5  01000000           sizeupvalues (1)
                         upvalue [0]: 
10F9  00                   instack (0)
10FA  00                   idx     (0)
                         * functions:
10FB  00000000           sizep (0)
                         * lines:
10FF  00000000           sizelineinfo (0)
                         [pc] (line)
                         * locals:
1103  00000000           sizelocvars (0)
                         * upvalue names:
1107  00000000           size_upvalue_names (0)
                         ** end of function 0_18 **

                         
110B                     ** function [19] definition (level 2) 0_19
                         ** start of function 0_19 **
110B  00                 string size (0)
                         source name: (none)
110C  8B000000           line defined (139)
1110  93000000           last line defined (147)
1114  01                 numparams (1)
1115  00                 is_vararg (0)
1116  08                 maxstacksize (8)
                         * code:
1117  0F000000           sizecode (15)
111B  4B000000           [01] newtable  1   0   0    ; R1 := {} , array_size=0, hash_size=0
111F  A3400000           [02] testset   2   0   1    ; if R0 then R2 = R0 else pc+=1 (goto [4])
1123  1E000080           [03] jmp       0   1        ; pc+=1 (goto [5])
1127  81000000           [04] loadk     2   0        ; R2 := K0(="")
112B  8C404001           [05] self      2   2   257  ; R3 := R2; R2 := R2[K1(="gmatch")]
112F  01810000           [06] loadk     4   2        ; R4 := K2(=".")
1133  A4008101           [07] call      2   3   4    ; R2 to R4 := R2(R3, R4)
1137  1E800080           [08] jmp       0   3        ; pc+=3 (goto [12])
113B  9C018000           [09] len       6   1        ; R6 := # R1
113F  8DC14003           [10] add       6   6   259  ; R6 := R6 + K3(=1)
1143  4A400103           [11] settable  1   6   5    ; R1[R6] := R5
1147  A9400000           [12] tforcall  2       1    ; R5 := R2(R3,R4)
114B  2A81FE7F           [13] tforloop  4   -5       ; if R5 ~= nil then { R4 := R5; pc+=-5 (goto [9])
114F  66000001           [14] return    1   2        ; return R1
1153  26008000           [15] return    0   1        ; return 
                         * constants:
1157  04000000           sizek (4)
115B  04                 const type LUA_TSHRSTR
115C  01                 string size (1)
115D                     ""
                         const [0]: ""
115D  04                 const type LUA_TSHRSTR
115E  07                 string size (7)
115F  676D61746368       "gmatch"
                         const [1]: "gmatch"
1165  04                 const type LUA_TSHRSTR
1166  02                 string size (2)
1167  2E                 "."
                         const [2]: "."
1168  13                 const type LUA_TNUMINT
1169  0100000000000000   const [3]: (1)
                         * upvalues:
1171  00000000           sizeupvalues (0)
                         * functions:
1175  00000000           sizep (0)
                         * lines:
1179  00000000           sizelineinfo (0)
                         [pc] (line)
                         * locals:
117D  00000000           sizelocvars (0)
                         * upvalue names:
1181  00000000           size_upvalue_names (0)
                         ** end of function 0_19 **

                         
1185                     ** function [20] definition (level 2) 0_20
                         ** start of function 0_20 **
1185  00                 string size (0)
                         source name: (none)
1186  95000000           line defined (149)
118A  B1000000           last line defined (177)
118E  02                 numparams (2)
118F  00                 is_vararg (0)
1190  10                 maxstacksize (16)
                         * code:
1191  4C000000           sizecode (76)
1195  20400080           [01] lt        0   256 1    ; K0(=5) < R1, pc+=1 (goto [3]) if true
1199  1E400080           [02] jmp       0   2        ; pc+=2 (goto [5])
119D  81400000           [03] loadk     2   1        ; R2 := K1(="")
11A1  A6000001           [04] return    2   2        ; return R2
11A5  4D80C000           [05] add       1   1   258  ; R1 := R1 + K2(=1)
11A9  86C04000           [06] gettabup  2   0   259  ; R2 := U0[K3(="type")]
11AD  C0000000           [07] move      3   0        ; R3 := R0
11B1  A4800001           [08] call      2   2   2    ; R2 := R2(R3)
11B5  1F004101           [09] eq        0   2   260  ; R2 == K4(="table"), pc+=1 (goto [11]) if true
11B9  1E400C80           [10] jmp       0   50       ; pc+=50 (goto [61])
11BD  81400100           [11] loadk     2   5        ; R2 := K5(="{ ")
11C1  C1800100           [12] loadk     3   6        ; R3 := K6(=0)
11C5  06C14100           [13] gettabup  4   0   263  ; R4 := U0[K7(="pairs")]
11C9  40010000           [14] move      5   0        ; R5 := R0
11CD  24010101           [15] call      4   2   4    ; R4 to R6 := R4(R5)
11D1  1E000980           [16] jmp       0   37       ; pc+=37 (goto [54])
11D5  CD80C001           [17] add       3   3   258  ; R3 := R3 + K2(=1)
11D9  46C24000           [18] gettabup  9   0   259  ; R9 := U0[K3(="type")]
11DD  80028003           [19] move      10  7        ; R10 := R7
11E1  64820001           [20] call      9   2   2    ; R9 := R9(R10)
11E5  5F00C204           [21] eq        1   9   264  ; R9 == K8(="number"), pc+=1 (goto [23]) if false
11E9  1EC00080           [22] jmp       0   4        ; pc+=4 (goto [27])
11ED  41420200           [23] loadk     9   9        ; R9 := K9(="\"")
11F1  80028003           [24] move      10  7        ; R10 := R7
11F5  C1420200           [25] loadk     11  9        ; R11 := K9(="\"")
11F9  DDC18204           [26] concat    7   9   11   ; R7 := R9 to R11
11FD  AE198300           [27] extraarg  134246    ; K134246(=nil)
1201  1F000200           [28] eq        0   0   8    ; R0 == R8, pc+=1 (goto [30]) if true
1205  1E400180           [29] jmp       0   6        ; pc+=6 (goto [36])
1209  40020001           [30] move      9   2        ; R9 := R2
120D  81820200           [31] loadk     10  10       ; R10 := K10(="[")
1211  C0028003           [32] move      11  7        ; R11 := R7
1215  01C30200           [33] loadk     12  11       ; R12 := K11(="] = __self,")
1219  9D008304           [34] concat    2   9   12   ; R2 := R9 to R12
121D  1E400480           [35] jmp       0   18       ; pc+=18 (goto [54])
1221  2000C301           [36] lt        0   3   268  ; R3 < K12(=30), pc+=1 (goto [38]) if true
1225  1E800280           [37] jmp       0   11       ; pc+=11 (goto [49])
1229  40020001           [38] move      9   2        ; R9 := R2
122D  81820200           [39] loadk     10  10       ; R10 := K10(="[")
1231  C0028003           [40] move      11  7        ; R11 := R7
1235  01430300           [41] loadk     12  13       ; R12 := K13(="] = ")
1239  46834300           [42] gettabup  13  0   270  ; R13 := U0[K14(="dump_table")]
123D  80030004           [43] move      14  8        ; R14 := R8
1241  C0038000           [44] move      15  1        ; R15 := R1
1245  64838001           [45] call      13  3   2    ; R13 := R13(R14, R15)
1249  81C30300           [46] loadk     14  15       ; R14 := K15(=",")
124D  9D808304           [47] concat    2   9   14   ; R2 := R9 to R14
1251  1E000180           [48] jmp       0   5        ; pc+=5 (goto [54])
1255  40020001           [49] move      9   2        ; R9 := R2
1259  81820200           [50] loadk     10  10       ; R10 := K10(="[")
125D  C0028003           [51] move      11  7        ; R11 := R7
1261  01030400           [52] loadk     12  16       ; R12 := K16(="] = ...,")
1265  9D008304           [53] concat    2   9   12   ; R2 := R9 to R12
1269  29810000           [54] tforcall  4       2    ; R7, R8 := R4(R5,R6)
126D  AA01F67F           [55] tforloop  6   -39      ; if R7 ~= nil then { R6 := R7; pc+=-39 (goto [17])
1271  00010001           [56] move      4   2        ; R4 := R2
1275  41410400           [57] loadk     5   17       ; R5 := K17(="} ")
1279  1D410102           [58] concat    4   4   5    ; R4 := R4, R5
127D  26010001           [59] return    4   2        ; return R4
1281  1E800380           [60] jmp       0   15       ; pc+=15 (goto [76])
1285  86C04000           [61] gettabup  2   0   259  ; R2 := U0[K3(="type")]
1289  C0000000           [62] move      3   0        ; R3 := R0
128D  A4800001           [63] call      2   2   2    ; R2 := R2(R3)
1291  1F804401           [64] eq        0   2   274  ; R2 == K18(="string"), pc+=1 (goto [66]) if true
1295  1E400180           [65] jmp       0   6        ; pc+=6 (goto [72])
1299  81400200           [66] loadk     2   9        ; R2 := K9(="\"")
129D  C0000000           [67] move      3   0        ; R3 := R0
12A1  01410200           [68] loadk     4   9        ; R4 := K9(="\"")
12A5  9D000101           [69] concat    2   2   4    ; R2 := R2 to R4
12A9  A6000001           [70] return    2   2        ; return R2
12AD  1EC00080           [71] jmp       0   4        ; pc+=4 (goto [76])
12B1  86C04400           [72] gettabup  2   0   275  ; R2 := U0[K19(="tostring")]
12B5  C0000000           [73] move      3   0        ; R3 := R0
12B9  A5000001           [74] tailcall  2   2   0    ; R2 to top := R2(R3)
12BD  A6000000           [75] return    2   0        ; return R2 to top
12C1  26008000           [76] return    0   1        ; return 
                         * constants:
12C5  14000000           sizek (20)
12C9  13                 const type LUA_TNUMINT
12CA  0500000000000000   const [0]: (5)
12D2  04                 const type LUA_TSHRSTR
12D3  01                 string size (1)
12D4                     ""
                         const [1]: ""
12D4  13                 const type LUA_TNUMINT
12D5  0100000000000000   const [2]: (1)
12DD  04                 const type LUA_TSHRSTR
12DE  05                 string size (5)
12DF  74797065           "type"
                         const [3]: "type"
12E3  04                 const type LUA_TSHRSTR
12E4  06                 string size (6)
12E5  7461626C65         "table"
                         const [4]: "table"
12EA  04                 const type LUA_TSHRSTR
12EB  03                 string size (3)
12EC  7B20               "{ "
                         const [5]: "{ "
12EE  13                 const type LUA_TNUMINT
12EF  0000000000000000   const [6]: (0)
12F7  04                 const type LUA_TSHRSTR
12F8  06                 string size (6)
12F9  7061697273         "pairs"
                         const [7]: "pairs"
12FE  04                 const type LUA_TSHRSTR
12FF  07                 string size (7)
1300  6E756D626572       "number"
                         const [8]: "number"
1306  04                 const type LUA_TSHRSTR
1307  02                 string size (2)
1308  22                 "\""
                         const [9]: "\""
1309  04                 const type LUA_TSHRSTR
130A  02                 string size (2)
130B  5B                 "["
                         const [10]: "["
130C  04                 const type LUA_TSHRSTR
130D  0C                 string size (12)
130E  5D203D205F5F7365+  "] = __se"
1316  6C662C             "lf,"
                         const [11]: "] = __self,"
1319  13                 const type LUA_TNUMINT
131A  1E00000000000000   const [12]: (30)
1322  04                 const type LUA_TSHRSTR
1323  05                 string size (5)
1324  5D203D20           "] = "
                         const [13]: "] = "
1328  04                 const type LUA_TSHRSTR
1329  0B                 string size (11)
132A  64756D705F746162+  "dump_tab"
1332  6C65               "le"
                         const [14]: "dump_table"
1334  04                 const type LUA_TSHRSTR
1335  02                 string size (2)
1336  2C                 ","
                         const [15]: ","
1337  04                 const type LUA_TSHRSTR
1338  09                 string size (9)
1339  5D203D202E2E2E2C   "] = ...,"
                         const [16]: "] = ...,"
1341  04                 const type LUA_TSHRSTR
1342  03                 string size (3)
1343  7D20               "} "
                         const [17]: "} "
1345  04                 const type LUA_TSHRSTR
1346  07                 string size (7)
1347  737472696E67       "string"
                         const [18]: "string"
134D  04                 const type LUA_TSHRSTR
134E  09                 string size (9)
134F  746F737472696E67   "tostring"
                         const [19]: "tostring"
                         * upvalues:
1357  01000000           sizeupvalues (1)
                         upvalue [0]: 
135B  00                   instack (0)
135C  00                   idx     (0)
                         * functions:
135D  00000000           sizep (0)
                         * lines:
1361  00000000           sizelineinfo (0)
                         [pc] (line)
                         * locals:
1365  00000000           sizelocvars (0)
                         * upvalue names:
1369  00000000           size_upvalue_names (0)
                         ** end of function 0_20 **

                         
136D                     ** function [21] definition (level 2) 0_21
                         ** start of function 0_21 **
136D  00                 string size (0)
                         source name: (none)
136E  B3000000           line defined (179)
1372  B5000000           last line defined (181)
1376  01                 numparams (1)
1377  00                 is_vararg (0)
1378  04                 maxstacksize (4)
                         * code:
1379  06000000           sizecode (6)
137D  46004000           [1] gettabup  1   0   256  ; R1 := U0[K0(="dump_table")]
1381  80000000           [2] move      2   0        ; R2 := R0
1385  C1400000           [3] loadk     3   1        ; R3 := K1(=1)
1389  65008001           [4] tailcall  1   3   0    ; R1 to top := R1(R2, R3)
138D  66000000           [5] return    1   0        ; return R1 to top
1391  26008000           [6] return    0   1        ; return 
                         * constants:
1395  02000000           sizek (2)
1399  04                 const type LUA_TSHRSTR
139A  0B                 string size (11)
139B  64756D705F746162+  "dump_tab"
13A3  6C65               "le"
                         const [0]: "dump_table"
13A5  13                 const type LUA_TNUMINT
13A6  0100000000000000   const [1]: (1)
                         * upvalues:
13AE  01000000           sizeupvalues (1)
                         upvalue [0]: 
13B2  00                   instack (0)
13B3  00                   idx     (0)
                         * functions:
13B4  00000000           sizep (0)
                         * lines:
13B8  00000000           sizelineinfo (0)
                         [pc] (line)
                         * locals:
13BC  00000000           sizelocvars (0)
                         * upvalue names:
13C0  00000000           size_upvalue_names (0)
                         ** end of function 0_21 **

                         
13C4                     ** function [22] definition (level 2) 0_22
                         ** start of function 0_22 **
13C4  00                 string size (0)
                         source name: (none)
13C5  B7000000           line defined (183)
13C9  C0000000           last line defined (192)
13CD  02                 numparams (2)
13CE  00                 is_vararg (0)
13CF  03                 maxstacksize (3)
                         * code:
13D0  05000000           sizecode (5)
13D4  AC000000           [1] closure   2   0        ; R2 := closure(function[0]) 1 upvalues
13D8  08800080           [2] settabup  0   256 2    ; U0[K0(="f")] := R2
13DC  86004000           [3] gettabup  2   0   256  ; R2 := U0[K0(="f")]
13E0  A6000001           [4] return    2   2        ; return R2
13E4  26008000           [5] return    0   1        ; return 
                         * constants:
13E8  01000000           sizek (1)
13EC  04                 const type LUA_TSHRSTR
13ED  02                 string size (2)
13EE  66                 "f"
                         const [0]: "f"
                         * upvalues:
13EF  01000000           sizeupvalues (1)
                         upvalue [0]: 
13F3  00                   instack (0)
13F4  00                   idx     (0)
                         * functions:
13F5  01000000           sizep (1)
                         
13F9                     ** function [0] definition (level 3) 0_22_0
                         ** start of function 0_22_0 **
13F9  00                 string size (0)
                         source name: (none)
13FA  B9000000           line defined (185)
13FE  BE000000           last line defined (190)
1402  01                 numparams (1)
1403  00                 is_vararg (0)
1404  08                 maxstacksize (8)
                         * code:
1405  0D000000           sizecode (13)
1409  47004000           [01] gettable  1   0   256  ; R1 := R0[K0(="stack")]
140D  4C40C000           [02] self      1   1   257  ; R2 := R1; R1 := R1[K1(="pop")]
1411  C1800000           [03] loadk     3   2        ; R3 := K2(=2)
1415  64C08001           [04] call      1   3   3    ; R1, R2 := R1(R2, R3)
1419  C7004000           [05] gettable  3   0   256  ; R3 := R0[K0(="stack")]
141D  CCC0C001           [06] self      3   3   259  ; R4 := R3; R3 := R3[K3(="push")]
1421  45010000           [07] getupval  5   0        ; R5 := U0
1425  80010001           [08] move      6   2        ; R6 := R2
1429  C0018000           [09] move      7   1        ; R7 := R1
142D  64018001           [10] call      5   3   0    ; R5 to top := R5(R6, R7)
1431  E4400000           [11] call      3   0   1    ;  := R3(R4 to top)
1435  AE1F8342           [12] extraarg  17435774  ; K17435774(=nil)
1439  26008000           [13] return    0   1        ; return 
                         * constants:
143D  04000000           sizek (4)
1441  04                 const type LUA_TSHRSTR
1442  06                 string size (6)
1443  737461636B         "stack"
                         const [0]: "stack"
1448  04                 const type LUA_TSHRSTR
1449  04                 string size (4)
144A  706F70             "pop"
                         const [1]: "pop"
144D  13                 const type LUA_TNUMINT
144E  0200000000000000   const [2]: (2)
1456  04                 const type LUA_TSHRSTR
1457  05                 string size (5)
1458  70757368           "push"
                         const [3]: "push"
                         * upvalues:
145C  01000000           sizeupvalues (1)
                         upvalue [0]: 
1460  01                   instack (1)
1461  00                   idx     (0)
                         * functions:
1462  00000000           sizep (0)
                         * lines:
1466  00000000           sizelineinfo (0)
                         [pc] (line)
                         * locals:
146A  00000000           sizelocvars (0)
                         * upvalue names:
146E  00000000           size_upvalue_names (0)
                         ** end of function 0_22_0 **

                         * lines:
1472  00000000           sizelineinfo (0)
                         [pc] (line)
                         * locals:
1476  00000000           sizelocvars (0)
                         * upvalue names:
147A  00000000           size_upvalue_names (0)
                         ** end of function 0_22 **

                         
147E                     ** function [23] definition (level 2) 0_23
                         ** start of function 0_23 **
147E  00                 string size (0)
                         source name: (none)
147F  C2000000           line defined (194)
1483  C4000000           last line defined (196)
1487  01                 numparams (1)
1488  01                 is_vararg (1)
1489  04                 maxstacksize (4)
                         * code:
148A  05000000           sizecode (5)
148E  46004000           [1] gettabup  1   0   256  ; R1 := U0[K0(="LOGPH")]
1492  80000000           [2] move      2   0        ; R2 := R0
1496  ED000000           [3] vararg    3   0        ; R3 to top := ...
149A  64400000           [4] call      1   0   1    ;  := R1(R2 to top)
149E  26008000           [5] return    0   1        ; return 
                         * constants:
14A2  01000000           sizek (1)
14A6  04                 const type LUA_TSHRSTR
14A7  06                 string size (6)
14A8  4C4F475048         "LOGPH"
                         const [0]: "LOGPH"
                         * upvalues:
14AD  01000000           sizeupvalues (1)
                         upvalue [0]: 
14B1  00                   instack (0)
14B2  00                   idx     (0)
                         * functions:
14B3  00000000           sizep (0)
                         * lines:
14B7  00000000           sizelineinfo (0)
                         [pc] (line)
                         * locals:
14BB  00000000           sizelocvars (0)
                         * upvalue names:
14BF  00000000           size_upvalue_names (0)
                         ** end of function 0_23 **

                         
14C3                     ** function [24] definition (level 2) 0_24
                         ** start of function 0_24 **
14C3  00                 string size (0)
                         source name: (none)
14C4  C6000000           line defined (198)
14C8  CE000000           last line defined (206)
14CC  01                 numparams (1)
14CD  01                 is_vararg (1)
14CE  05                 maxstacksize (5)
                         * code:
14CF  1A000000           sizecode (26)
14D3  46004000           [01] gettabup  1   0   256  ; R1 := U0[K0(="type")]
14D7  80000000           [02] move      2   0        ; R2 := R0
14DB  64800001           [03] call      1   2   2    ; R1 := R1(R2)
14DF  5F40C000           [04] eq        1   1   257  ; R1 == K1(="string"), pc+=1 (goto [6]) if false
14E3  1E000180           [05] jmp       0   5        ; pc+=5 (goto [11])
14E7  46804000           [06] gettabup  1   0   258  ; R1 := U0[K2(="print")]
14EB  80000000           [07] move      2   0        ; R2 := R0
14EF  ED000000           [08] vararg    3   0        ; R3 to top := ...
14F3  64400000           [09] call      1   0   1    ;  := R1(R2 to top)
14F7  1E800380           [10] jmp       0   15       ; pc+=15 (goto [26])
14FB  46C04000           [11] gettabup  1   0   259  ; R1 := U0[K3(="select")]
14FF  81000100           [12] loadk     2   4        ; R2 := K4(="#")
1503  ED000000           [13] vararg    3   0        ; R3 to top := ...
1507  64800000           [14] call      1   0   2    ; R1 := R1(R2 to top)
150B  1F40C100           [15] eq        0   1   261  ; R1 == K5(=0), pc+=1 (goto [17]) if true
150F  1EC00080           [16] jmp       0   4        ; pc+=4 (goto [21])
1513  46804000           [17] gettabup  1   0   258  ; R1 := U0[K2(="print")]
1517  80000000           [18] move      2   0        ; R2 := R0
151B  64400001           [19] call      1   2   1    ;  := R1(R2)
151F  1E000180           [20] jmp       0   5        ; pc+=5 (goto [26])
1523  46804000           [21] gettabup  1   0   258  ; R1 := U0[K2(="print")]
1527  8C804100           [22] self      2   0   262  ; R3 := R0; R2 := R0[K6(="format")]
152B  2D010000           [23] vararg    4   0        ; R4 to top := ...
152F  A4000000           [24] call      2   0   0    ; R2 to top := R2(R3 to top)
1533  64400000           [25] call      1   0   1    ;  := R1(R2 to top)
1537  26008000           [26] return    0   1        ; return 
                         * constants:
153B  07000000           sizek (7)
153F  04                 const type LUA_TSHRSTR
1540  05                 string size (5)
1541  74797065           "type"
                         const [0]: "type"
1545  04                 const type LUA_TSHRSTR
1546  07                 string size (7)
1547  737472696E67       "string"
                         const [1]: "string"
154D  04                 const type LUA_TSHRSTR
154E  06                 string size (6)
154F  7072696E74         "print"
                         const [2]: "print"
1554  04                 const type LUA_TSHRSTR
1555  07                 string size (7)
1556  73656C656374       "select"
                         const [3]: "select"
155C  04                 const type LUA_TSHRSTR
155D  02                 string size (2)
155E  23                 "#"
                         const [4]: "#"
155F  13                 const type LUA_TNUMINT
1560  0000000000000000   const [5]: (0)
1568  04                 const type LUA_TSHRSTR
1569  07                 string size (7)
156A  666F726D6174       "format"
                         const [6]: "format"
                         * upvalues:
1570  01000000           sizeupvalues (1)
                         upvalue [0]: 
1574  00                   instack (0)
1575  00                   idx     (0)
                         * functions:
1576  00000000           sizep (0)
                         * lines:
157A  00000000           sizelineinfo (0)
                         [pc] (line)
                         * locals:
157E  00000000           sizelocvars (0)
                         * upvalue names:
1582  00000000           size_upvalue_names (0)
                         ** end of function 0_24 **

                         
1586                     ** function [25] definition (level 2) 0_25
                         ** start of function 0_25 **
1586  00                 string size (0)
                         source name: (none)
1587  D2000000           line defined (210)
158B  D9000000           last line defined (217)
158F  00                 numparams (0)
1590  00                 is_vararg (0)
1591  03                 maxstacksize (3)
                         * code:
1592  0A000000           sizecode (10)
1596  06004000           [01] gettabup  0   0   256  ; R0 := U0[K0(="plainBs")]
159A  0C404000           [02] self      0   0   257  ; R1 := R0; R0 := R0[K1(="readByte")]
159E  24C00001           [03] call      0   2   3    ; R0, R1 := R0(R1)
15A2  62400000           [04] test      1       1    ; if not R1 then pc+=1 (goto [6])
15A6  1E800080           [05] jmp       0   3        ; pc+=3 (goto [9])
15AA  81800000           [06] loadk     2   2        ; R2 := K2(=0)
15AE  A6000001           [07] return    2   2        ; return R2
15B2  1E000080           [08] jmp       0   1        ; pc+=1 (goto [10])
15B6  26000001           [09] return    0   2        ; return R0
15BA  26008000           [10] return    0   1        ; return 
                         * constants:
15BE  03000000           sizek (3)
15C2  04                 const type LUA_TSHRSTR
15C3  08                 string size (8)
15C4  706C61696E4273     "plainBs"
                         const [0]: "plainBs"
15CB  04                 const type LUA_TSHRSTR
15CC  09                 string size (9)
15CD  7265616442797465   "readByte"
                         const [1]: "readByte"
15D5  13                 const type LUA_TNUMINT
15D6  0000000000000000   const [2]: (0)
                         * upvalues:
15DE  01000000           sizeupvalues (1)
                         upvalue [0]: 
15E2  00                   instack (0)
15E3  00                   idx     (0)
                         * functions:
15E4  00000000           sizep (0)
                         * lines:
15E8  00000000           sizelineinfo (0)
                         [pc] (line)
                         * locals:
15EC  00000000           sizelocvars (0)
                         * upvalue names:
15F0  00000000           size_upvalue_names (0)
                         ** end of function 0_25 **

                         
15F4                     ** function [26] definition (level 2) 0_26
                         ** start of function 0_26 **
15F4  00                 string size (0)
                         source name: (none)
15F5  E1000000           line defined (225)
15F9  E8000000           last line defined (232)
15FD  02                 numparams (2)
15FE  00                 is_vararg (0)
15FF  08                 maxstacksize (8)
                         * code:
1600  2D000000           sizecode (45)
1604  A3408000           [01] testset   2   1   1    ; if R1 then R2 = R1 else pc+=1 (goto [3])
1608  1E000080           [02] jmp       0   1        ; pc+=1 (goto [4])
160C  8B000000           [03] newtable  2   0   0    ; R2 := {} , array_size=0, hash_size=0
1610  DC000001           [04] len       3   2        ; R3 := # R2
1614  CD00C001           [05] add       3   3   256  ; R3 := R3 + K0(=1)
1618  06414000           [06] gettabup  4   0   257  ; R4 := U0[K1(="band")]
161C  46814000           [07] gettabup  5   0   258  ; R5 := U0[K2(="rshift")]
1620  80010000           [08] move      6   0        ; R6 := R0
1624  C1C10000           [09] loadk     7   3        ; R7 := K3(=0)
1628  64818001           [10] call      5   3   2    ; R5 := R5(R6, R7)
162C  81010100           [11] loadk     6   4        ; R6 := K4(=255)
1630  24818001           [12] call      4   3   2    ; R4 := R4(R5, R6)
1634  8A008101           [13] settable  2   3   4    ; R2[R3] := R4
1638  DC000001           [14] len       3   2        ; R3 := # R2
163C  CD00C001           [15] add       3   3   256  ; R3 := R3 + K0(=1)
1640  06414000           [16] gettabup  4   0   257  ; R4 := U0[K1(="band")]
1644  46814000           [17] gettabup  5   0   258  ; R5 := U0[K2(="rshift")]
1648  80010000           [18] move      6   0        ; R6 := R0
164C  C1410100           [19] loadk     7   5        ; R7 := K5(=8)
1650  64818001           [20] call      5   3   2    ; R5 := R5(R6, R7)
1654  81010100           [21] loadk     6   4        ; R6 := K4(=255)
1658  24818001           [22] call      4   3   2    ; R4 := R4(R5, R6)
165C  8A008101           [23] settable  2   3   4    ; R2[R3] := R4
1660  DC000001           [24] len       3   2        ; R3 := # R2
1664  CD00C001           [25] add       3   3   256  ; R3 := R3 + K0(=1)
1668  06414000           [26] gettabup  4   0   257  ; R4 := U0[K1(="band")]
166C  46814000           [27] gettabup  5   0   258  ; R5 := U0[K2(="rshift")]
1670  80010000           [28] move      6   0        ; R6 := R0
1674  C1810100           [29] loadk     7   6        ; R7 := K6(=16)
1678  64818001           [30] call      5   3   2    ; R5 := R5(R6, R7)
167C  81010100           [31] loadk     6   4        ; R6 := K4(=255)
1680  24818001           [32] call      4   3   2    ; R4 := R4(R5, R6)
1684  8A008101           [33] settable  2   3   4    ; R2[R3] := R4
1688  DC000001           [34] len       3   2        ; R3 := # R2
168C  CD00C001           [35] add       3   3   256  ; R3 := R3 + K0(=1)
1690  06414000           [36] gettabup  4   0   257  ; R4 := U0[K1(="band")]
1694  46814000           [37] gettabup  5   0   258  ; R5 := U0[K2(="rshift")]
1698  80010000           [38] move      6   0        ; R6 := R0
169C  C1C10100           [39] loadk     7   7        ; R7 := K7(=24)
16A0  64818001           [40] call      5   3   2    ; R5 := R5(R6, R7)
16A4  81010100           [41] loadk     6   4        ; R6 := K4(=255)
16A8  24818001           [42] call      4   3   2    ; R4 := R4(R5, R6)
16AC  8A008101           [43] settable  2   3   4    ; R2[R3] := R4
16B0  A6000001           [44] return    2   2        ; return R2
16B4  26008000           [45] return    0   1        ; return 
                         * constants:
16B8  08000000           sizek (8)
16BC  13                 const type LUA_TNUMINT
16BD  0100000000000000   const [0]: (1)
16C5  04                 const type LUA_TSHRSTR
16C6  05                 string size (5)
16C7  62616E64           "band"
                         const [1]: "band"
16CB  04                 const type LUA_TSHRSTR
16CC  07                 string size (7)
16CD  727368696674       "rshift"
                         const [2]: "rshift"
16D3  13                 const type LUA_TNUMINT
16D4  0000000000000000   const [3]: (0)
16DC  13                 const type LUA_TNUMINT
16DD  FF00000000000000   const [4]: (255)
16E5  13                 const type LUA_TNUMINT
16E6  0800000000000000   const [5]: (8)
16EE  13                 const type LUA_TNUMINT
16EF  1000000000000000   const [6]: (16)
16F7  13                 const type LUA_TNUMINT
16F8  1800000000000000   const [7]: (24)
                         * upvalues:
1700  01000000           sizeupvalues (1)
                         upvalue [0]: 
1704  01                   instack (1)
1705  00                   idx     (0)
                         * functions:
1706  00000000           sizep (0)
                         * lines:
170A  00000000           sizelineinfo (0)
                         [pc] (line)
                         * locals:
170E  00000000           sizelocvars (0)
                         * upvalue names:
1712  00000000           size_upvalue_names (0)
                         ** end of function 0_26 **

                         
1716                     ** function [27] definition (level 2) 0_27
                         ** start of function 0_27 **
1716  00                 string size (0)
                         source name: (none)
1717  EA000000           line defined (234)
171B  EE000000           last line defined (238)
171F  01                 numparams (1)
1720  00                 is_vararg (0)
1721  04                 maxstacksize (4)
                         * code:
1722  0A000000           sizecode (10)
1726  46004000           [01] gettabup  1   0   256  ; R1 := U0[K0(="encryptBs")]
172A  62400000           [02] test      1       1    ; if not R1 then pc+=1 (goto [4])
172E  1E000080           [03] jmp       0   1        ; pc+=1 (goto [5])
1732  4B000000           [04] newtable  1   0   0    ; R1 := {} , array_size=0, hash_size=0
1736  08400080           [05] settabup  0   256 1    ; U0[K0(="encryptBs")] := R1
173A  46404000           [06] gettabup  1   0   257  ; R1 := U0[K1(="dw2Byte")]
173E  80000000           [07] move      2   0        ; R2 := R0
1742  C6004000           [08] gettabup  3   0   256  ; R3 := U0[K0(="encryptBs")]
1746  64408001           [09] call      1   3   1    ;  := R1(R2, R3)
174A  26008000           [10] return    0   1        ; return 
                         * constants:
174E  02000000           sizek (2)
1752  04                 const type LUA_TSHRSTR
1753  0A                 string size (10)
1754  656E637279707442+  "encryptB"
175C  73                 "s"
                         const [0]: "encryptBs"
175D  04                 const type LUA_TSHRSTR
175E  08                 string size (8)
175F  64773242797465     "dw2Byte"
                         const [1]: "dw2Byte"
                         * upvalues:
1766  01000000           sizeupvalues (1)
                         upvalue [0]: 
176A  00                   instack (0)
176B  00                   idx     (0)
                         * functions:
176C  00000000           sizep (0)
                         * lines:
1770  00000000           sizelineinfo (0)
                         [pc] (line)
                         * locals:
1774  00000000           sizelocvars (0)
                         * upvalue names:
1778  00000000           size_upvalue_names (0)
                         ** end of function 0_27 **

                         
177C                     ** function [28] definition (level 2) 0_28
                         ** start of function 0_28 **
177C  00                 string size (0)
                         source name: (none)
177D  F0000000           line defined (240)
1781  F4000000           last line defined (244)
1785  01                 numparams (1)
1786  00                 is_vararg (0)
1787  03                 maxstacksize (3)
                         * code:
1788  0B000000           sizecode (11)
178C  46004000           [01] gettabup  1   0   256  ; R1 := U0[K0(="encryptBs")]
1790  62400000           [02] test      1       1    ; if not R1 then pc+=1 (goto [4])
1794  1E000080           [03] jmp       0   1        ; pc+=1 (goto [5])
1798  4B000000           [04] newtable  1   0   0    ; R1 := {} , array_size=0, hash_size=0
179C  08400080           [05] settabup  0   256 1    ; U0[K0(="encryptBs")] := R1
17A0  46004000           [06] gettabup  1   0   256  ; R1 := U0[K0(="encryptBs")]
17A4  86004000           [07] gettabup  2   0   256  ; R2 := U0[K0(="encryptBs")]
17A8  9C000001           [08] len       2   2        ; R2 := # R2
17AC  8D404001           [09] add       2   2   257  ; R2 := R2 + K1(=1)
17B0  4A000001           [10] settable  1   2   0    ; R1[R2] := R0
17B4  26008000           [11] return    0   1        ; return 
                         * constants:
17B8  02000000           sizek (2)
17BC  04                 const type LUA_TSHRSTR
17BD  0A                 string size (10)
17BE  656E637279707442+  "encryptB"
17C6  73                 "s"
                         const [0]: "encryptBs"
17C7  13                 const type LUA_TNUMINT
17C8  0100000000000000   const [1]: (1)
                         * upvalues:
17D0  01000000           sizeupvalues (1)
                         upvalue [0]: 
17D4  00                   instack (0)
17D5  00                   idx     (0)
                         * functions:
17D6  00000000           sizep (0)
                         * lines:
17DA  00000000           sizelineinfo (0)
                         [pc] (line)
                         * locals:
17DE  00000000           sizelocvars (0)
                         * upvalue names:
17E2  00000000           size_upvalue_names (0)
                         ** end of function 0_28 **

                         
17E6                     ** function [29] definition (level 2) 0_29
                         ** start of function 0_29 **
17E6  00                 string size (0)
                         source name: (none)
17E7  F6000000           line defined (246)
17EB  FF000000           last line defined (255)
17EF  01                 numparams (1)
17F0  00                 is_vararg (0)
17F1  0B                 maxstacksize (11)
                         * code:
17F2  1E000000           sizecode (30)
17F6  46004000           [01] gettabup  1   0   256  ; R1 := U0[K0(="io")]
17FA  4740C000           [02] gettable  1   1   257  ; R1 := R1[K1(="open")]
17FE  80000000           [03] move      2   0        ; R2 := R0
1802  C1800000           [04] loadk     3   2        ; R3 := K2(="wb")
1806  64808001           [05] call      1   3   2    ; R1 := R1(R2, R3)
180A  86C04000           [06] gettabup  2   0   259  ; R2 := U0[K3(="pairs")]
180E  C6004100           [07] gettabup  3   0   260  ; R3 := U0[K4(="encryptBs")]
1812  A4000101           [08] call      2   2   4    ; R2 to R4 := R2(R3)
1816  1E400480           [09] jmp       0   18       ; pc+=18 (goto [28])
181A  C6414100           [10] gettabup  7   0   261  ; R7 := U0[K5(="type")]
181E  00020003           [11] move      8   6        ; R8 := R6
1822  E4810001           [12] call      7   2   2    ; R7 := R7(R8)
1826  06424100           [13] gettabup  8   0   261  ; R8 := U0[K5(="type")]
182A  41820100           [14] loadk     9   6        ; R9 := K6(=1)
182E  24820001           [15] call      8   2   2    ; R8 := R8(R9)
1832  1F008203           [16] eq        0   7   8    ; R7 == R8, pc+=1 (goto [18]) if true
1836  1E800180           [17] jmp       0   7        ; pc+=7 (goto [25])
183A  CCC1C100           [18] self      7   1   263  ; R8 := R1; R7 := R1[K7(="write")]
183E  46024200           [19] gettabup  9   0   264  ; R9 := U0[K8(="string")]
1842  4742C204           [20] gettable  9   9   265  ; R9 := R9[K9(="char")]
1846  80020003           [21] move      10  6        ; R10 := R6
184A  64020001           [22] call      9   2   0    ; R9 to top := R9(R10)
184E  E4410000           [23] call      7   0   1    ;  := R7(R8 to top)
1852  1E800080           [24] jmp       0   3        ; pc+=3 (goto [28])
1856  CCC1C100           [25] self      7   1   263  ; R8 := R1; R7 := R1[K7(="write")]
185A  40020003           [26] move      9   6        ; R9 := R6
185E  E4418001           [27] call      7   3   1    ;  := R7(R8, R9)
1862  A9800000           [28] tforcall  2       2    ; R5, R6 := R2(R3,R4)
1866  2AC1FA7F           [29] tforloop  4   -20      ; if R5 ~= nil then { R4 := R5; pc+=-20 (goto [10])
186A  26008000           [30] return    0   1        ; return 
                         * constants:
186E  0A000000           sizek (10)
1872  04                 const type LUA_TSHRSTR
1873  03                 string size (3)
1874  696F               "io"
                         const [0]: "io"
1876  04                 const type LUA_TSHRSTR
1877  05                 string size (5)
1878  6F70656E           "open"
                         const [1]: "open"
187C  04                 const type LUA_TSHRSTR
187D  03                 string size (3)
187E  7762               "wb"
                         const [2]: "wb"
1880  04                 const type LUA_TSHRSTR
1881  06                 string size (6)
1882  7061697273         "pairs"
                         const [3]: "pairs"
1887  04                 const type LUA_TSHRSTR
1888  0A                 string size (10)
1889  656E637279707442+  "encryptB"
1891  73                 "s"
                         const [4]: "encryptBs"
1892  04                 const type LUA_TSHRSTR
1893  05                 string size (5)
1894  74797065           "type"
                         const [5]: "type"
1898  13                 const type LUA_TNUMINT
1899  0100000000000000   const [6]: (1)
18A1  04                 const type LUA_TSHRSTR
18A2  06                 string size (6)
18A3  7772697465         "write"
                         const [7]: "write"
18A8  04                 const type LUA_TSHRSTR
18A9  07                 string size (7)
18AA  737472696E67       "string"
                         const [8]: "string"
18B0  04                 const type LUA_TSHRSTR
18B1  05                 string size (5)
18B2  63686172           "char"
                         const [9]: "char"
                         * upvalues:
18B6  01000000           sizeupvalues (1)
                         upvalue [0]: 
18BA  00                   instack (0)
18BB  00                   idx     (0)
                         * functions:
18BC  00000000           sizep (0)
                         * lines:
18C0  00000000           sizelineinfo (0)
                         [pc] (line)
                         * locals:
18C4  00000000           sizelocvars (0)
                         * upvalue names:
18C8  00000000           size_upvalue_names (0)
                         ** end of function 0_29 **

                         
18CC                     ** function [30] definition (level 2) 0_30
                         ** start of function 0_30 **
18CC  00                 string size (0)
                         source name: (none)
18CD  18010000           line defined (280)
18D1  22010000           last line defined (290)
18D5  03                 numparams (3)
18D6  00                 is_vararg (0)
18D7  06                 maxstacksize (6)
                         * code:
18D8  1E000000           sizecode (30)
18DC  CB000000           [01] newtable  3   0   0    ; R3 := {} , array_size=0, hash_size=0
18E0  08C00080           [02] settabup  0   256 3    ; U0[K0(="o")] := R3
18E4  C6404000           [03] gettabup  3   0   257  ; R3 := U0[K1(="setmetatable")]
18E8  06014000           [04] gettabup  4   0   256  ; R4 := U0[K0(="o")]
18EC  40010000           [05] move      5   0        ; R5 := R0
18F0  E4408001           [06] call      3   3   1    ;  := R3(R4, R5)
18F4  0A000081           [07] settable  0   258 0    ; R0[K2(="__index")] := R0
18F8  C6004000           [08] gettabup  3   0   256  ; R3 := U0[K0(="o")]
18FC  CA408081           [09] settable  3   259 1    ; R3[K3(="bs")] := R1
1900  C6004000           [10] gettabup  3   0   256  ; R3 := U0[K0(="o")]
1904  06414100           [11] gettabup  4   0   261  ; R4 := U0[K5(="Stack")]
1908  0C814102           [12] self      4   4   262  ; R5 := R4; R4 := R4[K6(="new")]
190C  24810001           [13] call      4   2   2    ; R4 := R4(R5)
1910  CA000182           [14] settable  3   260 4    ; R3[K4(="stack")] := R4
1914  C6004000           [15] gettabup  3   0   256  ; R3 := U0[K0(="o")]
1918  23410001           [16] testset   4   2   1    ; if R2 then R4 = R2 else pc+=1 (goto [18])
191C  1E000080           [17] jmp       0   1        ; pc+=1 (goto [19])
1920  0B010000           [18] newtable  4   0   0    ; R4 := {} , array_size=0, hash_size=0
1924  CA008183           [19] settable  3   263 4    ; R3[K7(="env")] := R4
1928  C6404000           [20] gettabup  3   0   257  ; R3 := U0[K1(="setmetatable")]
192C  06014000           [21] gettabup  4   0   256  ; R4 := U0[K0(="o")]
1930  07C14102           [22] gettable  4   4   263  ; R4 := R4[K7(="env")]
1934  46014200           [23] gettabup  5   0   264  ; R5 := U0[K8(="_G")]
1938  E4408001           [24] call      3   3   1    ;  := R3(R4, R5)
193C  C6004200           [25] gettabup  3   0   264  ; R3 := U0[K8(="_G")]
1940  06014200           [26] gettabup  4   0   264  ; R4 := U0[K8(="_G")]
1944  CA000181           [27] settable  3   258 4    ; R3[K2(="__index")] := R4
1948  C6004000           [28] gettabup  3   0   256  ; R3 := U0[K0(="o")]
194C  E6000001           [29] return    3   2        ; return R3
1950  26008000           [30] return    0   1        ; return 
                         * constants:
1954  09000000           sizek (9)
1958  04                 const type LUA_TSHRSTR
1959  02                 string size (2)
195A  6F                 "o"
                         const [0]: "o"
195B  04                 const type LUA_TSHRSTR
195C  0D                 string size (13)
195D  7365746D65746174+  "setmetat"
1965  61626C65           "able"
                         const [1]: "setmetatable"
1969  04                 const type LUA_TSHRSTR
196A  08                 string size (8)
196B  5F5F696E646578     "__index"
                         const [2]: "__index"
1972  04                 const type LUA_TSHRSTR
1973  03                 string size (3)
1974  6273               "bs"
                         const [3]: "bs"
1976  04                 const type LUA_TSHRSTR
1977  06                 string size (6)
1978  737461636B         "stack"
                         const [4]: "stack"
197D  04                 const type LUA_TSHRSTR
197E  06                 string size (6)
197F  537461636B         "Stack"
                         const [5]: "Stack"
1984  04                 const type LUA_TSHRSTR
1985  04                 string size (4)
1986  6E6577             "new"
                         const [6]: "new"
1989  04                 const type LUA_TSHRSTR
198A  04                 string size (4)
198B  656E76             "env"
                         const [7]: "env"
198E  04                 const type LUA_TSHRSTR
198F  03                 string size (3)
1990  5F47               "_G"
                         const [8]: "_G"
                         * upvalues:
1992  01000000           sizeupvalues (1)
                         upvalue [0]: 
1996  00                   instack (0)
1997  00                   idx     (0)
                         * functions:
1998  00000000           sizep (0)
                         * lines:
199C  00000000           sizelineinfo (0)
                         [pc] (line)
                         * locals:
19A0  00000000           sizelocvars (0)
                         * upvalue names:
19A4  00000000           size_upvalue_names (0)
                         ** end of function 0_30 **

                         
19A8                     ** function [31] definition (level 2) 0_31
                         ** start of function 0_31 **
19A8  00                 string size (0)
                         source name: (none)
19A9  24010000           line defined (292)
19AD  2E010000           last line defined (302)
19B1  01                 numparams (1)
19B2  00                 is_vararg (0)
19B3  05                 maxstacksize (5)
                         * code:
19B4  0C000000           sizecode (12)
19B8  47004000           [01] gettable  1   0   256  ; R1 := R0[K0(="bs")]
19BC  4C40C000           [02] self      1   1   257  ; R2 := R1; R1 := R1[K1(="readByte")]
19C0  64C00001           [03] call      1   2   3    ; R1, R2 := R1(R2)
19C4  A2000000           [04] test      2       0    ; if R2 then pc+=1 (goto [6])
19C8  1E400180           [05] jmp       0   6        ; pc+=6 (goto [12])
19CC  6E26032E           [06] extraarg  12061849  ; K12061849(=nil)
19D0  C7804000           [07] gettable  3   0   258  ; R3 := R0[K2(="weioeurwiuioiu")]
19D4  C7408001           [08] gettable  3   3   1    ; R3 := R3[R1]
19D8  00010000           [09] move      4   0        ; R4 := R0
19DC  E4400001           [10] call      3   2   1    ;  := R3(R4)
19E0  1E00FD7F           [11] jmp       0   -11      ; pc+=-11 (goto [1])
19E4  26008000           [12] return    0   1        ; return 
                         * constants:
19E8  03000000           sizek (3)
19EC  04                 const type LUA_TSHRSTR
19ED  03                 string size (3)
19EE  6273               "bs"
                         const [0]: "bs"
19F0  04                 const type LUA_TSHRSTR
19F1  09                 string size (9)
19F2  7265616442797465   "readByte"
                         const [1]: "readByte"
19FA  04                 const type LUA_TSHRSTR
19FB  0F                 string size (15)
19FC  7765696F65757277+  "weioeurw"
1A04  6975696F6975       "iuioiu"
                         const [2]: "weioeurwiuioiu"
                         * upvalues:
1A0A  00000000           sizeupvalues (0)
                         * functions:
1A0E  00000000           sizep (0)
                         * lines:
1A12  00000000           sizelineinfo (0)
                         [pc] (line)
                         * locals:
1A16  00000000           sizelocvars (0)
                         * upvalue names:
1A1A  00000000           size_upvalue_names (0)
                         ** end of function 0_31 **

                         
1A1E                     ** function [32] definition (level 2) 0_32
                         ** start of function 0_32 **
1A1E  00                 string size (0)
                         source name: (none)
1A1F  30010000           line defined (304)
1A23  34010000           last line defined (308)
1A27  01                 numparams (1)
1A28  00                 is_vararg (0)
1A29  05                 maxstacksize (5)
                         * code:
1A2A  08000000           sizecode (8)
1A2E  47004000           [1] gettable  1   0   256  ; R1 := R0[K0(="bs")]
1A32  4C40C000           [2] self      1   1   257  ; R2 := R1; R1 := R1[K1(="readInt")]
1A36  64800001           [3] call      1   2   2    ; R1 := R1(R2)
1A3A  87804000           [4] gettable  2   0   258  ; R2 := R0[K2(="stack")]
1A3E  8CC04001           [5] self      2   2   259  ; R3 := R2; R2 := R2[K3(="push")]
1A42  00018000           [6] move      4   1        ; R4 := R1
1A46  A4408001           [7] call      2   3   1    ;  := R2(R3, R4)
1A4A  26008000           [8] return    0   1        ; return 
                         * constants:
1A4E  04000000           sizek (4)
1A52  04                 const type LUA_TSHRSTR
1A53  03                 string size (3)
1A54  6273               "bs"
                         const [0]: "bs"
1A56  04                 const type LUA_TSHRSTR
1A57  08                 string size (8)
1A58  72656164496E74     "readInt"
                         const [1]: "readInt"
1A5F  04                 const type LUA_TSHRSTR
1A60  06                 string size (6)
1A61  737461636B         "stack"
                         const [2]: "stack"
1A66  04                 const type LUA_TSHRSTR
1A67  05                 string size (5)
1A68  70757368           "push"
                         const [3]: "push"
                         * upvalues:
1A6C  00000000           sizeupvalues (0)
                         * functions:
1A70  00000000           sizep (0)
                         * lines:
1A74  00000000           sizelineinfo (0)
                         [pc] (line)
                         * locals:
1A78  00000000           sizelocvars (0)
                         * upvalue names:
1A7C  00000000           size_upvalue_names (0)
                         ** end of function 0_32 **

                         
1A80                     ** function [33] definition (level 2) 0_33
                         ** start of function 0_33 **
1A80  00                 string size (0)
                         source name: (none)
1A81  37010000           line defined (311)
1A85  3B010000           last line defined (315)
1A89  01                 numparams (1)
1A8A  00                 is_vararg (0)
1A8B  05                 maxstacksize (5)
                         * code:
1A8C  09000000           sizecode (9)
1A90  47004000           [1] gettable  1   0   256  ; R1 := R0[K0(="bs")]
1A94  4C40C000           [2] self      1   1   257  ; R2 := R1; R1 := R1[K1(="readStr")]
1A98  64800001           [3] call      1   2   2    ; R1 := R1(R2)
1A9C  87804000           [4] gettable  2   0   258  ; R2 := R0[K2(="stack")]
1AA0  8CC04001           [5] self      2   2   259  ; R3 := R2; R2 := R2[K3(="push")]
1AA4  07014100           [6] gettable  4   0   260  ; R4 := R0[K4(="env")]
1AA8  07410002           [7] gettable  4   4   1    ; R4 := R4[R1]
1AAC  A4408001           [8] call      2   3   1    ;  := R2(R3, R4)
1AB0  26008000           [9] return    0   1        ; return 
                         * constants:
1AB4  05000000           sizek (5)
1AB8  04                 const type LUA_TSHRSTR
1AB9  03                 string size (3)
1ABA  6273               "bs"
                         const [0]: "bs"
1ABC  04                 const type LUA_TSHRSTR
1ABD  08                 string size (8)
1ABE  72656164537472     "readStr"
                         const [1]: "readStr"
1AC5  04                 const type LUA_TSHRSTR
1AC6  06                 string size (6)
1AC7  737461636B         "stack"
                         const [2]: "stack"
1ACC  04                 const type LUA_TSHRSTR
1ACD  05                 string size (5)
1ACE  70757368           "push"
                         const [3]: "push"
1AD2  04                 const type LUA_TSHRSTR
1AD3  04                 string size (4)
1AD4  656E76             "env"
                         const [4]: "env"
                         * upvalues:
1AD7  00000000           sizeupvalues (0)
                         * functions:
1ADB  00000000           sizep (0)
                         * lines:
1ADF  00000000           sizelineinfo (0)
                         [pc] (line)
                         * locals:
1AE3  00000000           sizelocvars (0)
                         * upvalue names:
1AE7  00000000           size_upvalue_names (0)
                         ** end of function 0_33 **

                         
1AEB                     ** function [34] definition (level 2) 0_34
                         ** start of function 0_34 **
1AEB  00                 string size (0)
                         source name: (none)
1AEC  3E010000           line defined (318)
1AF0  42010000           last line defined (322)
1AF4  01                 numparams (1)
1AF5  00                 is_vararg (0)
1AF6  05                 maxstacksize (5)
                         * code:
1AF7  08000000           sizecode (8)
1AFB  47004000           [1] gettable  1   0   256  ; R1 := R0[K0(="bs")]
1AFF  4C40C000           [2] self      1   1   257  ; R2 := R1; R1 := R1[K1(="readStr")]
1B03  64800001           [3] call      1   2   2    ; R1 := R1(R2)
1B07  87804000           [4] gettable  2   0   258  ; R2 := R0[K2(="stack")]
1B0B  8CC04001           [5] self      2   2   259  ; R3 := R2; R2 := R2[K3(="push")]
1B0F  00018000           [6] move      4   1        ; R4 := R1
1B13  A4408001           [7] call      2   3   1    ;  := R2(R3, R4)
1B17  26008000           [8] return    0   1        ; return 
                         * constants:
1B1B  04000000           sizek (4)
1B1F  04                 const type LUA_TSHRSTR
1B20  03                 string size (3)
1B21  6273               "bs"
                         const [0]: "bs"
1B23  04                 const type LUA_TSHRSTR
1B24  08                 string size (8)
1B25  72656164537472     "readStr"
                         const [1]: "readStr"
1B2C  04                 const type LUA_TSHRSTR
1B2D  06                 string size (6)
1B2E  737461636B         "stack"
                         const [2]: "stack"
1B33  04                 const type LUA_TSHRSTR
1B34  05                 string size (5)
1B35  70757368           "push"
                         const [3]: "push"
                         * upvalues:
1B39  00000000           sizeupvalues (0)
                         * functions:
1B3D  00000000           sizep (0)
                         * lines:
1B41  00000000           sizelineinfo (0)
                         [pc] (line)
                         * locals:
1B45  00000000           sizelocvars (0)
                         * upvalue names:
1B49  00000000           size_upvalue_names (0)
                         ** end of function 0_34 **

                         
1B4D                     ** function [35] definition (level 2) 0_35
                         ** start of function 0_35 **
1B4D  00                 string size (0)
                         source name: (none)
1B4E  45010000           line defined (325)
1B52  4A010000           last line defined (330)
1B56  01                 numparams (1)
1B57  00                 is_vararg (0)
1B58  04                 maxstacksize (4)
                         * code:
1B59  09000000           sizecode (9)
1B5D  47004000           [1] gettable  1   0   256  ; R1 := R0[K0(="bs")]
1B61  4C40C000           [2] self      1   1   257  ; R2 := R1; R1 := R1[K1(="readStr")]
1B65  64800001           [3] call      1   2   2    ; R1 := R1(R2)
1B69  87804000           [4] gettable  2   0   258  ; R2 := R0[K2(="stack")]
1B6D  8CC04001           [5] self      2   2   259  ; R3 := R2; R2 := R2[K3(="pop")]
1B71  A4800001           [6] call      2   2   2    ; R2 := R2(R3)
1B75  C7004100           [7] gettable  3   0   260  ; R3 := R0[K4(="env")]
1B79  CA808000           [8] settable  3   1   2    ; R3[R1] := R2
1B7D  26008000           [9] return    0   1        ; return 
                         * constants:
1B81  05000000           sizek (5)
1B85  04                 const type LUA_TSHRSTR
1B86  03                 string size (3)
1B87  6273               "bs"
                         const [0]: "bs"
1B89  04                 const type LUA_TSHRSTR
1B8A  08                 string size (8)
1B8B  72656164537472     "readStr"
                         const [1]: "readStr"
1B92  04                 const type LUA_TSHRSTR
1B93  06                 string size (6)
1B94  737461636B         "stack"
                         const [2]: "stack"
1B99  04                 const type LUA_TSHRSTR
1B9A  04                 string size (4)
1B9B  706F70             "pop"
                         const [3]: "pop"
1B9E  04                 const type LUA_TSHRSTR
1B9F  04                 string size (4)
1BA0  656E76             "env"
                         const [4]: "env"
                         * upvalues:
1BA3  00000000           sizeupvalues (0)
                         * functions:
1BA7  00000000           sizep (0)
                         * lines:
1BAB  00000000           sizelineinfo (0)
                         [pc] (line)
                         * locals:
1BAF  00000000           sizelocvars (0)
                         * upvalue names:
1BB3  00000000           size_upvalue_names (0)
                         ** end of function 0_35 **

                         
1BB7                     ** function [36] definition (level 2) 0_36
                         ** start of function 0_36 **
1BB7  00                 string size (0)
                         source name: (none)
1BB8  4D010000           line defined (333)
1BBC  51010000           last line defined (337)
1BC0  01                 numparams (1)
1BC1  00                 is_vararg (0)
1BC2  06                 maxstacksize (6)
                         * code:
1BC3  09000000           sizecode (9)
1BC7  47004000           [1] gettable  1   0   256  ; R1 := R0[K0(="stack")]
1BCB  4C40C000           [2] self      1   1   257  ; R2 := R1; R1 := R1[K1(="pop")]
1BCF  C1800000           [3] loadk     3   2        ; R3 := K2(=2)
1BD3  64C08001           [4] call      1   3   3    ; R1, R2 := R1(R2, R3)
1BD7  C7004000           [5] gettable  3   0   256  ; R3 := R0[K0(="stack")]
1BDB  CCC0C001           [6] self      3   3   259  ; R4 := R3; R3 := R3[K3(="push")]
1BDF  4D818000           [7] add       5   1   2    ; R5 := R1 + R2
1BE3  E4408001           [8] call      3   3   1    ;  := R3(R4, R5)
1BE7  26008000           [9] return    0   1        ; return 
                         * constants:
1BEB  04000000           sizek (4)
1BEF  04                 const type LUA_TSHRSTR
1BF0  06                 string size (6)
1BF1  737461636B         "stack"
                         const [0]: "stack"
1BF6  04                 const type LUA_TSHRSTR
1BF7  04                 string size (4)
1BF8  706F70             "pop"
                         const [1]: "pop"
1BFB  13                 const type LUA_TNUMINT
1BFC  0200000000000000   const [2]: (2)
1C04  04                 const type LUA_TSHRSTR
1C05  05                 string size (5)
1C06  70757368           "push"
                         const [3]: "push"
                         * upvalues:
1C0A  00000000           sizeupvalues (0)
                         * functions:
1C0E  00000000           sizep (0)
                         * lines:
1C12  00000000           sizelineinfo (0)
                         [pc] (line)
                         * locals:
1C16  00000000           sizelocvars (0)
                         * upvalue names:
1C1A  00000000           size_upvalue_names (0)
                         ** end of function 0_36 **

                         
1C1E                     ** function [37] definition (level 2) 0_37
                         ** start of function 0_37 **
1C1E  00                 string size (0)
                         source name: (none)
1C1F  54010000           line defined (340)
1C23  58010000           last line defined (344)
1C27  01                 numparams (1)
1C28  00                 is_vararg (0)
1C29  06                 maxstacksize (6)
                         * code:
1C2A  09000000           sizecode (9)
1C2E  47004000           [1] gettable  1   0   256  ; R1 := R0[K0(="stack")]
1C32  4C40C000           [2] self      1   1   257  ; R2 := R1; R1 := R1[K1(="pop")]
1C36  C1800000           [3] loadk     3   2        ; R3 := K2(=2)
1C3A  64C08001           [4] call      1   3   3    ; R1, R2 := R1(R2, R3)
1C3E  C7004000           [5] gettable  3   0   256  ; R3 := R0[K0(="stack")]
1C42  CCC0C001           [6] self      3   3   259  ; R4 := R3; R3 := R3[K3(="push")]
1C46  4E410001           [7] sub       5   2   1    ; R5 := R2 - R1
1C4A  E4408001           [8] call      3   3   1    ;  := R3(R4, R5)
1C4E  26008000           [9] return    0   1        ; return 
                         * constants:
1C52  04000000           sizek (4)
1C56  04                 const type LUA_TSHRSTR
1C57  06                 string size (6)
1C58  737461636B         "stack"
                         const [0]: "stack"
1C5D  04                 const type LUA_TSHRSTR
1C5E  04                 string size (4)
1C5F  706F70             "pop"
                         const [1]: "pop"
1C62  13                 const type LUA_TNUMINT
1C63  0200000000000000   const [2]: (2)
1C6B  04                 const type LUA_TSHRSTR
1C6C  05                 string size (5)
1C6D  70757368           "push"
                         const [3]: "push"
                         * upvalues:
1C71  00000000           sizeupvalues (0)
                         * functions:
1C75  00000000           sizep (0)
                         * lines:
1C79  00000000           sizelineinfo (0)
                         [pc] (line)
                         * locals:
1C7D  00000000           sizelocvars (0)
                         * upvalue names:
1C81  00000000           size_upvalue_names (0)
                         ** end of function 0_37 **

                         
1C85                     ** function [38] definition (level 2) 0_38
                         ** start of function 0_38 **
1C85  00                 string size (0)
                         source name: (none)
1C86  5B010000           line defined (347)
1C8A  5F010000           last line defined (351)
1C8E  01                 numparams (1)
1C8F  00                 is_vararg (0)
1C90  06                 maxstacksize (6)
                         * code:
1C91  09000000           sizecode (9)
1C95  47004000           [1] gettable  1   0   256  ; R1 := R0[K0(="stack")]
1C99  4C40C000           [2] self      1   1   257  ; R2 := R1; R1 := R1[K1(="pop")]
1C9D  C1800000           [3] loadk     3   2        ; R3 := K2(=2)
1CA1  64C08001           [4] call      1   3   3    ; R1, R2 := R1(R2, R3)
1CA5  C7004000           [5] gettable  3   0   256  ; R3 := R0[K0(="stack")]
1CA9  CCC0C001           [6] self      3   3   259  ; R4 := R3; R3 := R3[K3(="push")]
1CAD  4F818000           [7] mul       5   1   2    ; R5 := R1 * R2
1CB1  E4408001           [8] call      3   3   1    ;  := R3(R4, R5)
1CB5  26008000           [9] return    0   1        ; return 
                         * constants:
1CB9  04000000           sizek (4)
1CBD  04                 const type LUA_TSHRSTR
1CBE  06                 string size (6)
1CBF  737461636B         "stack"
                         const [0]: "stack"
1CC4  04                 const type LUA_TSHRSTR
1CC5  04                 string size (4)
1CC6  706F70             "pop"
                         const [1]: "pop"
1CC9  13                 const type LUA_TNUMINT
1CCA  0200000000000000   const [2]: (2)
1CD2  04                 const type LUA_TSHRSTR
1CD3  05                 string size (5)
1CD4  70757368           "push"
                         const [3]: "push"
                         * upvalues:
1CD8  00000000           sizeupvalues (0)
                         * functions:
1CDC  00000000           sizep (0)
                         * lines:
1CE0  00000000           sizelineinfo (0)
                         [pc] (line)
                         * locals:
1CE4  00000000           sizelocvars (0)
                         * upvalue names:
1CE8  00000000           size_upvalue_names (0)
                         ** end of function 0_38 **

                         
1CEC                     ** function [39] definition (level 2) 0_39
                         ** start of function 0_39 **
1CEC  00                 string size (0)
                         source name: (none)
1CED  62010000           line defined (354)
1CF1  66010000           last line defined (358)
1CF5  01                 numparams (1)
1CF6  00                 is_vararg (0)
1CF7  06                 maxstacksize (6)
                         * code:
1CF8  09000000           sizecode (9)
1CFC  47004000           [1] gettable  1   0   256  ; R1 := R0[K0(="stack")]
1D00  4C40C000           [2] self      1   1   257  ; R2 := R1; R1 := R1[K1(="pop")]
1D04  C1800000           [3] loadk     3   2        ; R3 := K2(=2)
1D08  64C08001           [4] call      1   3   3    ; R1, R2 := R1(R2, R3)
1D0C  C7004000           [5] gettable  3   0   256  ; R3 := R0[K0(="stack")]
1D10  CCC0C001           [6] self      3   3   259  ; R4 := R3; R3 := R3[K3(="push")]
1D14  52410001           [7] div       5   2   1    ; R5 := R2 / R1
1D18  E4408001           [8] call      3   3   1    ;  := R3(R4, R5)
1D1C  26008000           [9] return    0   1        ; return 
                         * constants:
1D20  04000000           sizek (4)
1D24  04                 const type LUA_TSHRSTR
1D25  06                 string size (6)
1D26  737461636B         "stack"
                         const [0]: "stack"
1D2B  04                 const type LUA_TSHRSTR
1D2C  04                 string size (4)
1D2D  706F70             "pop"
                         const [1]: "pop"
1D30  13                 const type LUA_TNUMINT
1D31  0200000000000000   const [2]: (2)
1D39  04                 const type LUA_TSHRSTR
1D3A  05                 string size (5)
1D3B  70757368           "push"
                         const [3]: "push"
                         * upvalues:
1D3F  00000000           sizeupvalues (0)
                         * functions:
1D43  00000000           sizep (0)
                         * lines:
1D47  00000000           sizelineinfo (0)
                         [pc] (line)
                         * locals:
1D4B  00000000           sizelocvars (0)
                         * upvalue names:
1D4F  00000000           size_upvalue_names (0)
                         ** end of function 0_39 **

                         
1D53                     ** function [40] definition (level 2) 0_40
                         ** start of function 0_40 **
1D53  00                 string size (0)
                         source name: (none)
1D54  69010000           line defined (361)
1D58  6E010000           last line defined (366)
1D5C  01                 numparams (1)
1D5D  00                 is_vararg (0)
1D5E  05                 maxstacksize (5)
                         * code:
1D5F  09000000           sizecode (9)
1D63  47004000           [1] gettable  1   0   256  ; R1 := R0[K0(="stack")]
1D67  4C40C000           [2] self      1   1   257  ; R2 := R1; R1 := R1[K1(="pop")]
1D6B  64800001           [3] call      1   2   2    ; R1 := R1(R2)
1D6F  87004000           [4] gettable  2   0   256  ; R2 := R0[K0(="stack")]
1D73  8C804001           [5] self      2   2   258  ; R3 := R2; R2 := R2[K2(="push")]
1D77  19018000           [6] unm       4   1        ; R4 := - R1
1D7B  A4408001           [7] call      2   3   1    ;  := R2(R3, R4)
1D7F  AE2F0313           [8] extraarg  4983998   ; K4983998(=nil)
1D83  26008000           [9] return    0   1        ; return 
                         * constants:
1D87  03000000           sizek (3)
1D8B  04                 const type LUA_TSHRSTR
1D8C  06                 string size (6)
1D8D  737461636B         "stack"
                         const [0]: "stack"
1D92  04                 const type LUA_TSHRSTR
1D93  04                 string size (4)
1D94  706F70             "pop"
                         const [1]: "pop"
1D97  04                 const type LUA_TSHRSTR
1D98  05                 string size (5)
1D99  70757368           "push"
                         const [2]: "push"
                         * upvalues:
1D9D  00000000           sizeupvalues (0)
                         * functions:
1DA1  00000000           sizep (0)
                         * lines:
1DA5  00000000           sizelineinfo (0)
                         [pc] (line)
                         * locals:
1DA9  00000000           sizelocvars (0)
                         * upvalue names:
1DAD  00000000           size_upvalue_names (0)
                         ** end of function 0_40 **

                         
1DB1                     ** function [41] definition (level 2) 0_41
                         ** start of function 0_41 **
1DB1  00                 string size (0)
                         source name: (none)
1DB2  70010000           line defined (368)
1DB6  77010000           last line defined (375)
1DBA  01                 numparams (1)
1DBB  00                 is_vararg (0)
1DBC  06                 maxstacksize (6)
                         * code:
1DBD  0F000000           sizecode (15)
1DC1  47004000           [01] gettable  1   0   256  ; R1 := R0[K0(="stack")]
1DC5  4C40C000           [02] self      1   1   257  ; R2 := R1; R1 := R1[K1(="pop")]
1DC9  64800001           [03] call      1   2   2    ; R1 := R1(R2)
1DCD  87804000           [04] gettable  2   0   258  ; R2 := R0[K2(="bs")]
1DD1  8CC04001           [05] self      2   2   259  ; R3 := R2; R2 := R2[K3(="readInt")]
1DD5  A4800001           [06] call      2   2   2    ; R2 := R2(R3)
1DD9  62000000           [07] test      1       0    ; if R1 then pc+=1 (goto [9])
1DDD  1E400080           [08] jmp       0   2        ; pc+=2 (goto [11])
1DE1  1F00C100           [09] eq        0   1   260  ; R1 == K4(=0), pc+=1 (goto [11]) if true
1DE5  1EC00080           [10] jmp       0   4        ; pc+=4 (goto [15])
1DE9  C7804000           [11] gettable  3   0   258  ; R3 := R0[K2(="bs")]
1DED  CC40C101           [12] self      3   3   261  ; R4 := R3; R3 := R3[K5(="move")]
1DF1  40010001           [13] move      5   2        ; R5 := R2
1DF5  E4408001           [14] call      3   3   1    ;  := R3(R4, R5)
1DF9  26008000           [15] return    0   1        ; return 
                         * constants:
1DFD  06000000           sizek (6)
1E01  04                 const type LUA_TSHRSTR
1E02  06                 string size (6)
1E03  737461636B         "stack"
                         const [0]: "stack"
1E08  04                 const type LUA_TSHRSTR
1E09  04                 string size (4)
1E0A  706F70             "pop"
                         const [1]: "pop"
1E0D  04                 const type LUA_TSHRSTR
1E0E  03                 string size (3)
1E0F  6273               "bs"
                         const [2]: "bs"
1E11  04                 const type LUA_TSHRSTR
1E12  08                 string size (8)
1E13  72656164496E74     "readInt"
                         const [3]: "readInt"
1E1A  13                 const type LUA_TNUMINT
1E1B  0000000000000000   const [4]: (0)
1E23  04                 const type LUA_TSHRSTR
1E24  05                 string size (5)
1E25  6D6F7665           "move"
                         const [5]: "move"
                         * upvalues:
1E29  00000000           sizeupvalues (0)
                         * functions:
1E2D  00000000           sizep (0)
                         * lines:
1E31  00000000           sizelineinfo (0)
                         [pc] (line)
                         * locals:
1E35  00000000           sizelocvars (0)
                         * upvalue names:
1E39  00000000           size_upvalue_names (0)
                         ** end of function 0_41 **

                         
1E3D                     ** function [42] definition (level 2) 0_42
                         ** start of function 0_42 **
1E3D  00                 string size (0)
                         source name: (none)
1E3E  79010000           line defined (377)
1E42  87010000           last line defined (391)
1E46  01                 numparams (1)
1E47  00                 is_vararg (0)
1E48  0B                 maxstacksize (11)
                         * code:
1E49  29000000           sizecode (41)
1E4D  47004000           [01] gettable  1   0   256  ; R1 := R0[K0(="bs")]
1E51  4C40C000           [02] self      1   1   257  ; R2 := R1; R1 := R1[K1(="readStr")]
1E55  64800001           [03] call      1   2   2    ; R1 := R1(R2)
1E59  87804000           [04] gettable  2   0   258  ; R2 := R0[K2(="env")]
1E5D  87400001           [05] gettable  2   2   1    ; R2 := R2[R1]
1E61  C6C04000           [06] gettabup  3   0   259  ; R3 := U0[K3(="type")]
1E65  00010001           [07] move      4   2        ; R4 := R2
1E69  E4800001           [08] call      3   2   2    ; R3 := R3(R4)
1E6D  1F00C101           [09] eq        0   3   260  ; R3 == K4(="function"), pc+=1 (goto [11]) if true
1E71  1E400780           [10] jmp       0   30       ; pc+=30 (goto [41])
1E75  C7804100           [11] gettable  3   0   262  ; R3 := R0[K6(="stack")]
1E79  CCC0C101           [12] self      3   3   263  ; R4 := R3; R3 := R3[K7(="pop")]
1E7D  E4800001           [13] call      3   2   2    ; R3 := R3(R4)
1E81  08C08082           [14] settabup  0   261 3    ; U0[K5(="argsn")] := R3
1E85  CB000000           [15] newtable  3   0   0    ; R3 := {} , array_size=0, hash_size=0
1E89  08C00084           [16] settabup  0   264 3    ; U0[K8(="args")] := R3
1E8D  C1400200           [17] loadk     3   9        ; R3 := K9(=1)
1E91  06414100           [18] gettabup  4   0   261  ; R4 := U0[K5(="argsn")]
1E95  41410200           [19] loadk     5   9        ; R5 := K9(=1)
1E99  E8000280           [20] forprep   3   9        ; R3 -= R5; pc+=9 (goto [30])
1E9D  C6014200           [21] gettabup  7   0   264  ; R7 := U0[K8(="args")]
1EA1  06024200           [22] gettabup  8   0   264  ; R8 := U0[K8(="args")]
1EA5  1C020004           [23] len       8   8        ; R8 := # R8
1EA9  0D424204           [24] add       8   8   265  ; R8 := R8 + K9(=1)
1EAD  47824100           [25] gettable  9   0   262  ; R9 := R0[K6(="stack")]
1EB1  4CC2C104           [26] self      9   9   263  ; R10 := R9; R9 := R9[K7(="pop")]
1EB5  64820001           [27] call      9   2   2    ; R9 := R9(R10)
1EB9  CA410204           [28] settable  7   8   9    ; R7[R8] := R9
1EBD  AE2B834A           [29] extraarg  19532974  ; K19532974(=nil)
1EC1  E740FD7F           [30] forloop   3   -10      ; R3 += R5; if R3 <= R4 then { R6 := R3; pc+=-10 (goto [21]) }
1EC5  C0000001           [31] move      3   2        ; R3 := R2
1EC9  06C14200           [32] gettabup  4   0   267  ; R4 := U0[K11(="unpack")]
1ECD  46014200           [33] gettabup  5   0   264  ; R5 := U0[K8(="args")]
1ED1  24010001           [34] call      4   2   0    ; R4 to top := R4(R5)
1ED5  E4800000           [35] call      3   0   2    ; R3 := R3(R4 to top)
1ED9  08C00085           [36] settabup  0   266 3    ; U0[K10(="res")] := R3
1EDD  C7804100           [37] gettable  3   0   262  ; R3 := R0[K6(="stack")]
1EE1  CC00C301           [38] self      3   3   268  ; R4 := R3; R3 := R3[K12(="push")]
1EE5  46814200           [39] gettabup  5   0   266  ; R5 := U0[K10(="res")]
1EE9  E4408001           [40] call      3   3   1    ;  := R3(R4, R5)
1EED  26008000           [41] return    0   1        ; return 
                         * constants:
1EF1  0D000000           sizek (13)
1EF5  04                 const type LUA_TSHRSTR
1EF6  03                 string size (3)
1EF7  6273               "bs"
                         const [0]: "bs"
1EF9  04                 const type LUA_TSHRSTR
1EFA  08                 string size (8)
1EFB  72656164537472     "readStr"
                         const [1]: "readStr"
1F02  04                 const type LUA_TSHRSTR
1F03  04                 string size (4)
1F04  656E76             "env"
                         const [2]: "env"
1F07  04                 const type LUA_TSHRSTR
1F08  05                 string size (5)
1F09  74797065           "type"
                         const [3]: "type"
1F0D  04                 const type LUA_TSHRSTR
1F0E  09                 string size (9)
1F0F  66756E6374696F6E   "function"
                         const [4]: "function"
1F17  04                 const type LUA_TSHRSTR
1F18  06                 string size (6)
1F19  617267736E         "argsn"
                         const [5]: "argsn"
1F1E  04                 const type LUA_TSHRSTR
1F1F  06                 string size (6)
1F20  737461636B         "stack"
                         const [6]: "stack"
1F25  04                 const type LUA_TSHRSTR
1F26  04                 string size (4)
1F27  706F70             "pop"
                         const [7]: "pop"
1F2A  04                 const type LUA_TSHRSTR
1F2B  05                 string size (5)
1F2C  61726773           "args"
                         const [8]: "args"
1F30  13                 const type LUA_TNUMINT
1F31  0100000000000000   const [9]: (1)
1F39  04                 const type LUA_TSHRSTR
1F3A  04                 string size (4)
1F3B  726573             "res"
                         const [10]: "res"
1F3E  04                 const type LUA_TSHRSTR
1F3F  07                 string size (7)
1F40  756E7061636B       "unpack"
                         const [11]: "unpack"
1F46  04                 const type LUA_TSHRSTR
1F47  05                 string size (5)
1F48  70757368           "push"
                         const [12]: "push"
                         * upvalues:
1F4C  01000000           sizeupvalues (1)
                         upvalue [0]: 
1F50  00                   instack (0)
1F51  00                   idx     (0)
                         * functions:
1F52  00000000           sizep (0)
                         * lines:
1F56  00000000           sizelineinfo (0)
                         [pc] (line)
                         * locals:
1F5A  00000000           sizelocvars (0)
                         * upvalue names:
1F5E  00000000           size_upvalue_names (0)
                         ** end of function 0_42 **

                         
1F62                     ** function [43] definition (level 2) 0_43
                         ** start of function 0_43 **
1F62  00                 string size (0)
                         source name: (none)
1F63  9E010000           line defined (414)
1F67  27020000           last line defined (551)
1F6B  01                 numparams (1)
1F6C  00                 is_vararg (0)
1F6D  34                 maxstacksize (52)
                         * code:
1F6E  11070000           sizecode (1809)
1F72  EE140350           [0001] extraarg  20974675  ; K20974675(=nil)
1F76  46404000           [0002] gettabup  1   0   257  ; R1 := U0[K1(="str2array")]
1F7A  80000000           [0003] move      2   0        ; R2 := R0
1F7E  64800001           [0004] call      1   2   2    ; R1 := R1(R2)
1F82  08400080           [0005] settabup  0   256 1    ; U0[K0(="s")] := R1
1F86  46C04000           [0006] gettabup  1   0   259  ; R1 := U0[K3(="bs")]
1F8A  4C00C100           [0007] self      1   1   260  ; R2 := R1; R1 := R1[K4(="new")]
1F8E  C6004000           [0008] gettabup  3   0   256  ; R3 := U0[K0(="s")]
1F92  64808001           [0009] call      1   3   2    ; R1 := R1(R2, R3)
1F96  08400081           [0010] settabup  0   258 1    ; U0[K2(="plainBs")] := R1
1F9A  4B000023           [0011] newtable  1   70  0    ; R1 := {} , array_size=1792, hash_size=0
// 1716 个
3AF6  6BC00808           [1762] setlist   1   16  35   ; R1[1 to 1716] := R2 to R1717
// 
3AFA  08400080           [1763] settabup  0   256 1    ; U0[K0(="s")] := R1
3AFE  46C04000           [1764] gettabup  1   0   259  ; R1 := U0[K3(="bs")]
3B02  4C00C100           [1765] self      1   1   260  ; R2 := R1; R1 := R1[K4(="new")]
3B06  C6004000           [1766] gettabup  3   0   256  ; R3 := U0[K0(="s")]
3B0A  64808001           [1767] call      1   3   2    ; R1 := R1(R2, R3)
3B0E  084080B0           [1768] settabup  0   353 1    ; U0[K97(="bss")] := R1
3B12  46C05800           [1769] gettabup  1   0   355  ; R1 := U0[K99(="vm")]
3B16  4C00C100           [1770] self      1   1   260  ; R2 := R1; R1 := R1[K4(="new")]
3B1A  C6405800           [1771] gettabup  3   0   353  ; R3 := U0[K97(="bss")]
3B1E  64808001           [1772] call      1   3   2    ; R1 := R1(R2, R3)
3B22  084000B1           [1773] settabup  0   354 1    ; U0[K98(="lvm")] := R1
3B26  46805800           [1774] gettabup  1   0   354  ; R1 := U0[K98(="lvm")]
3B2A  4C00D900           [1775] self      1   1   356  ; R2 := R1; R1 := R1[K100(="exe")]
3B2E  64400001           [1776] call      1   2   1    ;  := R1(R2)
3B32  0880D9B2           [1777] settabup  0   357 358  ; U0[K101(="dstRes")] := K102(="mCJ4lu/IDuuOVdLV8GvdlccdzuckNdckm/mddV90eXZylbLqJ75QdlZiMJ46rmL6k5gOlDY8uFZ0YG4EOrf0lEjN4bkMnF/X0mXWliucL5QHafQH1AEQlVQPTYkM58kMG3V3lik4WGlBFJiBOrf0lyLiWWZMcGi7Orf0lW/ViXWQVX/s1AEQlXkcd2Zi5rYiogfglF/ynF/ynF/y")
3B36  46C05900           [1778] gettabup  1   0   359  ; R1 := U0[K103(="pairs")]
3B3A  86005A00           [1779] gettabup  2   0   360  ; R2 := U0[K104(="encryptBs")]
3B3E  64000101           [1780] call      1   2   4    ; R1 to R3 := R1(R2)
3B42  1E000680           [1781] jmp       0   25       ; pc+=25 (goto [1807])
3B46  86415A00           [1782] gettabup  6   0   361  ; R6 := U0[K105(="string")]
3B4A  87815A03           [1783] gettable  6   6   362  ; R6 := R6[K106(="sub")]
3B4E  C6415900           [1784] gettabup  7   0   357  ; R7 := U0[K101(="dstRes")]
3B52  00020002           [1785] move      8   4        ; R8 := R4
3B56  40020002           [1786] move      9   4        ; R9 := R4
3B5A  A4810002           [1787] call      6   4   2    ; R6 := R6(R7 to R9)
3B5E  5F808102           [1788] eq        1   5   6    ; R5 == R6, pc+=1 (goto [1790]) if false
3B62  1E000180           [1789] jmp       0   5        ; pc+=5 (goto [1795])
3B66  86C15A00           [1790] gettabup  6   0   363  ; R6 := U0[K107(="LOGPH")]
3B6A  C1011B00           [1791] loadk     7   108      ; R7 := K108(="fail!")
3B6E  A4410001           [1792] call      6   2   1    ;  := R6(R7)
3B72  83010000           [1793] loadbool  6   0   0    ; R6 := false
3B76  A6010001           [1794] return    6   2        ; return R6
3B7A  2E228338           [1795] extraarg  14814344  ; K14814344(=nil)
3B7E  86415A00           [1796] gettabup  6   0   361  ; R6 := U0[K105(="string")]
3B82  87415B03           [1797] gettable  6   6   365  ; R6 := R6[K109(="len")]
3B86  C6415900           [1798] gettabup  7   0   357  ; R7 := U0[K101(="dstRes")]
3B8A  A4810001           [1799] call      6   2   2    ; R6 := R6(R7)
3B8E  1F800102           [1800] eq        0   4   6    ; R4 == R6, pc+=1 (goto [1802]) if true
3B92  1E000180           [1801] jmp       0   5        ; pc+=5 (goto [1807])
3B96  86C15A00           [1802] gettabup  6   0   363  ; R6 := U0[K107(="LOGPH")]
3B9A  C1811B00           [1803] loadk     7   110      ; R7 := K110(="success")
3B9E  A4410001           [1804] call      6   2   1    ;  := R6(R7)
3BA2  83018000           [1805] loadbool  6   1   0    ; R6 := true
3BA6  A6010001           [1806] return    6   2        ; return R6
3BAA  69800000           [1807] tforcall  1       2    ; R4, R5 := R1(R2,R3)
3BAE  EA00F97F           [1808] tforloop  3   -27      ; if R4 ~= nil then { R3 := R4; pc+=-27 (goto [1782])
3BB2  26008000           [1809] return    0   1        ; return 
                         * constants:
3BB6  6F000000           sizek (111)
3BBA  04                 const type LUA_TSHRSTR
3BBB  02                 string size (2)
3BBC  73                 "s"
                         const [0]: "s"
3BBD  04                 const type LUA_TSHRSTR
3BBE  0A                 string size (10)
3BBF  7374723261727261+  "str2arra"
3BC7  79                 "y"
                         const [1]: "str2array"
3BC8  04                 const type LUA_TSHRSTR
3BC9  08                 string size (8)
3BCA  706C61696E4273     "plainBs"
                         const [2]: "plainBs"
3BD1  04                 const type LUA_TSHRSTR
3BD2  03                 string size (3)
3BD3  6273               "bs"
                         const [3]: "bs"
3BD5  04                 const type LUA_TSHRSTR
3BD6  04                 string size (4)
3BD7  6E6577             "new"
                         const [4]: "new"
3BDA  13                 const type LUA_TNUMINT
3BDB  0000000000000000   const [5]: (0)
3BE3  13                 const type LUA_TNUMINT
3BE4  1000000000000000   const [6]: (16)
3BEC  13                 const type LUA_TNUMINT
3BED  0700000000000000   const [7]: (7)
3BF5  13                 const type LUA_TNUMINT
3BF6  6700000000000000   const [8]: (103)
3BFE  13                 const type LUA_TNUMINT
3BFF  6500000000000000   const [9]: (101)
3C07  13                 const type LUA_TNUMINT
3C08  7400000000000000   const [10]: (116)
3C10  13                 const type LUA_TNUMINT
3C11  4200000000000000   const [11]: (66)
3C19  13                 const type LUA_TNUMINT
3C1A  7900000000000000   const [12]: (121)
3C22  13                 const type LUA_TNUMINT
3C23  0200000000000000   const [13]: (2)
3C2B  13                 const type LUA_TNUMINT
3C2C  0300000000000000   const [14]: (3)
3C34  13                 const type LUA_TNUMINT
3C35  6300000000000000   const [15]: (99)
3C3D  13                 const type LUA_TNUMINT
3C3E  7500000000000000   const [16]: (117)
3C46  13                 const type LUA_TNUMINT
3C47  7200000000000000   const [17]: (114)
3C4F  13                 const type LUA_TNUMINT
3C50  1100000000000000   const [18]: (17)
3C58  13                 const type LUA_TNUMINT
3C59  4000000000000000   const [19]: (64)
3C61  13                 const type LUA_TNUMINT
3C62  6C00000000000000   const [20]: (108)
3C6A  13                 const type LUA_TNUMINT
3C6B  6400000000000000   const [21]: (100)
3C73  13                 const type LUA_TNUMINT
3C74  3400000000000000   const [22]: (52)
3C7C  13                 const type LUA_TNUMINT
3C7D  4C00000000000000   const [23]: (76)
3C85  13                 const type LUA_TNUMINT
3C86  6900000000000000   const [24]: (105)
3C8E  13                 const type LUA_TNUMINT
3C8F  4F00000000000000   const [25]: (79)
3C97  13                 const type LUA_TNUMINT
3C98  7A00000000000000   const [26]: (122)
3CA0  13                 const type LUA_TNUMINT
3CA1  3300000000000000   const [27]: (51)
3CA9  13                 const type LUA_TNUMINT
3CAA  4600000000000000   const [28]: (70)
3CB2  13                 const type LUA_TNUMINT
3CB3  3000000000000000   const [29]: (48)
3CBB  13                 const type LUA_TNUMINT
3CBC  6200000000000000   const [30]: (98)
3CC4  13                 const type LUA_TNUMINT
3CC5  7000000000000000   const [31]: (112)
3CCD  13                 const type LUA_TNUMINT
3CCE  4300000000000000   const [32]: (67)
3CD6  13                 const type LUA_TNUMINT
3CD7  4E00000000000000   const [33]: (78)
3CDF  13                 const type LUA_TNUMINT
3CE0  5700000000000000   const [34]: (87)
3CE8  13                 const type LUA_TNUMINT
3CE9  5100000000000000   const [35]: (81)
3CF1  13                 const type LUA_TNUMINT
3CF2  6B00000000000000   const [36]: (107)
3CFA  13                 const type LUA_TNUMINT
3CFB  3600000000000000   const [37]: (54)
3D03  13                 const type LUA_TNUMINT
3D04  4800000000000000   const [38]: (72)
3D0C  13                 const type LUA_TNUMINT
3D0D  6100000000000000   const [39]: (97)
3D15  13                 const type LUA_TNUMINT
3D16  6800000000000000   const [40]: (104)
3D1E  13                 const type LUA_TNUMINT
3D1F  4700000000000000   const [41]: (71)
3D27  13                 const type LUA_TNUMINT
3D28  4D00000000000000   const [42]: (77)
3D30  13                 const type LUA_TNUMINT
3D31  3100000000000000   const [43]: (49)
3D39  13                 const type LUA_TNUMINT
3D3A  6600000000000000   const [44]: (102)
3D42  13                 const type LUA_TNUMINT
3D43  3800000000000000   const [45]: (56)
3D4B  13                 const type LUA_TNUMINT
3D4C  3500000000000000   const [46]: (53)
3D54  13                 const type LUA_TNUMINT
3D55  6F00000000000000   const [47]: (111)
3D5D  13                 const type LUA_TNUMINT
3D5E  4A00000000000000   const [48]: (74)
3D66  13                 const type LUA_TNUMINT
3D67  3900000000000000   const [49]: (57)
3D6F  13                 const type LUA_TNUMINT
3D70  2F00000000000000   const [50]: (47)
3D78  13                 const type LUA_TNUMINT
3D79  5600000000000000   const [51]: (86)
3D81  13                 const type LUA_TNUMINT
3D82  5500000000000000   const [52]: (85)
3D8A  13                 const type LUA_TNUMINT
3D8B  5400000000000000   const [53]: (84)
3D93  13                 const type LUA_TNUMINT
3D94  4500000000000000   const [54]: (69)
3D9C  13                 const type LUA_TNUMINT
3D9D  6D00000000000000   const [55]: (109)
3DA5  13                 const type LUA_TNUMINT
3DA6  7700000000000000   const [56]: (119)
3DAE  13                 const type LUA_TNUMINT
3DAF  7100000000000000   const [57]: (113)
3DB7  13                 const type LUA_TNUMINT
3DB8  4400000000000000   const [58]: (68)
3DC0  13                 const type LUA_TNUMINT
3DC1  5000000000000000   const [59]: (80)
3DC9  13                 const type LUA_TNUMINT
3DCA  4900000000000000   const [60]: (73)
3DD2  13                 const type LUA_TNUMINT
3DD3  7300000000000000   const [61]: (115)
3DDB  13                 const type LUA_TNUMINT
3DDC  7600000000000000   const [62]: (118)
3DE4  13                 const type LUA_TNUMINT
3DE5  6E00000000000000   const [63]: (110)
3DED  13                 const type LUA_TNUMINT
3DEE  5A00000000000000   const [64]: (90)
3DF6  13                 const type LUA_TNUMINT
3DF7  5900000000000000   const [65]: (89)
3DFF  13                 const type LUA_TNUMINT
3E00  5200000000000000   const [66]: (82)
3E08  13                 const type LUA_TNUMINT
3E09  4B00000000000000   const [67]: (75)
3E11  13                 const type LUA_TNUMINT
3E12  6A00000000000000   const [68]: (106)
3E1A  13                 const type LUA_TNUMINT
3E1B  5800000000000000   const [69]: (88)
3E23  13                 const type LUA_TNUMINT
3E24  3700000000000000   const [70]: (55)
3E2C  13                 const type LUA_TNUMINT
3E2D  2B00000000000000   const [71]: (43)
3E35  13                 const type LUA_TNUMINT
3E36  4100000000000000   const [72]: (65)
3E3E  13                 const type LUA_TNUMINT
3E3F  5300000000000000   const [73]: (83)
3E47  13                 const type LUA_TNUMINT
3E48  3200000000000000   const [74]: (50)
3E50  13                 const type LUA_TNUMINT
3E51  7800000000000000   const [75]: (120)
3E59  13                 const type LUA_TNUMINT
3E5A  0100000000000000   const [76]: (1)
3E62  13                 const type LUA_TNUMINT
3E63  0E00000000000000   const [77]: (14)
3E6B  13                 const type LUA_TNUMINT
3E6C  0900000000000000   const [78]: (9)
3E74  13                 const type LUA_TNUMINT
3E75  3B00000000000000   const [79]: (59)
3E7D  13                 const type LUA_TNUMINT
3E7E  0600000000000000   const [80]: (6)
3E86  13                 const type LUA_TNUMINT
3E87  0500000000000000   const [81]: (5)
3E8F  13                 const type LUA_TNUMINT
3E90  0400000000000000   const [82]: (4)
3E98  13                 const type LUA_TNUMINT
3E99  0F00000000000000   const [83]: (15)
3EA1  13                 const type LUA_TNUMINT
3EA2  7D00000000000000   const [84]: (125)
3EAA  13                 const type LUA_TNUMINT
3EAB  0B00000000000000   const [85]: (11)
3EB3  13                 const type LUA_TNUMINT
3EB4  BF00000000000000   const [86]: (191)
3EBC  13                 const type LUA_TNUMINT
3EBD  3F00000000000000   const [87]: (63)
3EC5  13                 const type LUA_TNUMINT
3EC6  FF00000000000000   const [88]: (255)
3ECE  13                 const type LUA_TNUMINT
3ECF  0800000000000000   const [89]: (8)
3ED7  13                 const type LUA_TNUMINT
3ED8  9500000000000000   const [90]: (149)
3EE0  13                 const type LUA_TNUMINT
3EE1  D500000000000000   const [91]: (213)
3EE9  13                 const type LUA_TNUMINT
3EEA  8E00000000000000   const [92]: (142)
3EF2  13                 const type LUA_TNUMINT
3EF3  8F00000000000000   const [93]: (143)
3EFB  13                 const type LUA_TNUMINT
3EFC  F200000000000000   const [94]: (242)
3F04  13                 const type LUA_TNUMINT
3F05  B200000000000000   const [95]: (178)
3F0D  13                 const type LUA_TNUMINT
3F0E  F900000000000000   const [96]: (249)
3F16  04                 const type LUA_TSHRSTR
3F17  04                 string size (4)
3F18  627373             "bss"
                         const [97]: "bss"
3F1B  04                 const type LUA_TSHRSTR
3F1C  04                 string size (4)
3F1D  6C766D             "lvm"
                         const [98]: "lvm"
3F20  04                 const type LUA_TSHRSTR
3F21  03                 string size (3)
3F22  766D               "vm"
                         const [99]: "vm"
3F24  04                 const type LUA_TSHRSTR
3F25  04                 string size (4)
3F26  657865             "exe"
                         const [100]: "exe"
3F29  04                 const type LUA_TSHRSTR
3F2A  07                 string size (7)
3F2B  647374526573       "dstRes"
                         const [101]: "dstRes"
3F31  14                 const type LUA_TLNGSTR
3F32  D1                 string size (209)
3F33  6D434A346C752F49+  "mCJ4lu/I"
3F3B  4475754F56644C56+  "DuuOVdLV"
3F43  384776646C636364+  "8Gvdlccd"
3F4B  7A75636B4E64636B+  "zuckNdck"
3F53  6D2F6D6464563930+  "m/mddV90"
3F5B  65585A796C624C71+  "eXZylbLq"
3F63  4A373551646C5A69+  "J75QdlZi"
3F6B  4D4A3436726D4C36+  "MJ46rmL6"
3F73  6B35674F6C445938+  "k5gOlDY8"
3F7B  75465A3059473445+  "uFZ0YG4E"
3F83  4F7266306C456A4E+  "Orf0lEjN"
3F8B  34626B4D6E462F58+  "4bkMnF/X"
3F93  306D58576C697563+  "0mXWliuc"
3F9B  4C35514861665148+  "L5QHafQH"
3FA3  314145516C565150+  "1AEQlVQP"
3FAB  54596B4D35386B4D+  "TYkM58kM"
3FB3  473356336C696B34+  "G3V3lik4"
3FBB  57476C42464A6942+  "WGlBFJiB"
3FC3  4F7266306C794C69+  "Orf0lyLi"
3FCB  57575A4D63476937+  "WWZMcGi7"
3FD3  4F7266306C572F56+  "Orf0lW/V"
3FDB  6958575156582F73+  "iXWQVX/s"
3FE3  314145516C586B63+  "1AEQlXkc"
3FEB  64325A6935725969+  "d2Zi5rYi"
3FF3  6F6766676C462F79+  "ogfglF/y"
3FFB  6E462F796E462F79   "nF/ynF/y"
                         const [102]: "mCJ4lu/IDuuOVdLV8GvdlccdzuckNdckm/mddV90eXZylbLqJ75QdlZiMJ46rmL6k5gOlDY8uFZ0YG4EOrf0lEjN4bkMnF/X0mXWliucL5QHafQH1AEQlVQPTYkM58kMG3V3lik4WGlBFJiBOrf0lyLiWWZMcGi7Orf0lW/ViXWQVX/s1AEQlXkcd2Zi5rYiogfglF/ynF/ynF/y"
4003  04                 const type LUA_TSHRSTR
4004  06                 string size (6)
4005  7061697273         "pairs"
                         const [103]: "pairs"
400A  04                 const type LUA_TSHRSTR
400B  0A                 string size (10)
400C  656E637279707442+  "encryptB"
4014  73                 "s"
                         const [104]: "encryptBs"
4015  04                 const type LUA_TSHRSTR
4016  07                 string size (7)
4017  737472696E67       "string"
                         const [105]: "string"
401D  04                 const type LUA_TSHRSTR
401E  04                 string size (4)
401F  737562             "sub"
                         const [106]: "sub"
4022  04                 const type LUA_TSHRSTR
4023  06                 string size (6)
4024  4C4F475048         "LOGPH"
                         const [107]: "LOGPH"
4029  04                 const type LUA_TSHRSTR
402A  06                 string size (6)
402B  6661696C21         "fail!"
                         const [108]: "fail!"
4030  04                 const type LUA_TSHRSTR
4031  04                 string size (4)
4032  6C656E             "len"
                         const [109]: "len"
4035  04                 const type LUA_TSHRSTR
4036  08                 string size (8)
4037  73756363657373     "success"
                         const [110]: "success"
                         * upvalues:
403E  01000000           sizeupvalues (1)
                         upvalue [0]: 
4042  00                   instack (0)
4043  00                   idx     (0)
                         * functions:
4044  00000000           sizep (0)
                         * lines:
4048  00000000           sizelineinfo (0)
                         [pc] (line)
                         * locals:
404C  00000000           sizelocvars (0)
                         * upvalue names:
4050  00000000           size_upvalue_names (0)
                         ** end of function 0_43 **

                         * lines:
4054  00000000           sizelineinfo (0)
                         [pc] (line)
                         * locals:
4058  00000000           sizelocvars (0)
                         * upvalue names:
405C  00000000           size_upvalue_names (0)
                         ** end of function 0 **

4060                     ** end of chunk **
