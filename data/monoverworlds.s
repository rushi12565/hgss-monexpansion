.nds
.thumb

.include "include/constants.s"
.include "include/macros.s"
.include "include/monnums.s"
.include "asm/overworlds.s"

.if (NUM_OF_MONS - 1) > SPECIES_ARCEUS
    .if fileexists("a028_0.bin") == 1
        .open "a028_0.bin", 0x023C8000
    .else
        .create "a028_0.bin", 0x023C8000
    .endif
.else
    .open "arm9.bin", 0x02000000

    .orga 0xFF088 // begin mon ow num table
.endif

.area NUM_OF_MONS * 2, 0xFF

// the mon ow num table maps each species to the overworld file that represents it (after 297)
// this number is primarily used for narc a141 access (specific bits determining whether or not a pokemon can be inside, etc.)

.align

gSpeciesToOWNum:
/* SPECIES_NONE            */ .halfword 0
/* SPECIES_BULBASAUR       */ .halfword 0
/* SPECIES_IVYSAUR         */ .halfword 1
/* SPECIES_VENUSAUR        */ .halfword 2
/* SPECIES_CHARMANDER      */ .halfword 4
/* SPECIES_CHARMELEON      */ .halfword 5
/* SPECIES_CHARIZARD       */ .halfword 6
/* SPECIES_SQUIRTLE        */ .halfword 7
/* SPECIES_WARTORTLE       */ .halfword 8
/* SPECIES_BLASTOISE       */ .halfword 9
/* SPECIES_CATERPIE        */ .halfword 10
/* SPECIES_METAPOD         */ .halfword 11
/* SPECIES_BUTTERFREE      */ .halfword 12
/* SPECIES_WEEDLE          */ .halfword 13
/* SPECIES_KAKUNA          */ .halfword 14
/* SPECIES_BEEDRILL        */ .halfword 15
/* SPECIES_PIDGEY          */ .halfword 16
/* SPECIES_PIDGEOTTO       */ .halfword 17
/* SPECIES_PIDGEOT         */ .halfword 18
/* SPECIES_RATTATA         */ .halfword 19
/* SPECIES_RATICATE        */ .halfword 20
/* SPECIES_SPEAROW         */ .halfword 21
/* SPECIES_FEAROW          */ .halfword 22
/* SPECIES_EKANS           */ .halfword 23
/* SPECIES_ARBOK           */ .halfword 24
/* SPECIES_PIKACHU         */ .halfword 25
/* SPECIES_RAICHU          */ .halfword 27
/* SPECIES_SANDSHREW       */ .halfword 28
/* SPECIES_SANDSLASH       */ .halfword 29
/* SPECIES_NIDORAN_F       */ .halfword 30
/* SPECIES_NIDORINA        */ .halfword 31
/* SPECIES_NIDOQUEEN       */ .halfword 32
/* SPECIES_NIDORAN_M       */ .halfword 33
/* SPECIES_NIDORINO        */ .halfword 34
/* SPECIES_NIDOKING        */ .halfword 35
/* SPECIES_CLEFAIRY        */ .halfword 36
/* SPECIES_CLEFABLE        */ .halfword 37
/* SPECIES_VULPIX          */ .halfword 38
/* SPECIES_NINETALES       */ .halfword 39
/* SPECIES_JIGGLYPUFF      */ .halfword 40
/* SPECIES_WIGGLYTUFF      */ .halfword 41
/* SPECIES_ZUBAT           */ .halfword 42
/* SPECIES_GOLBAT          */ .halfword 43
/* SPECIES_ODDISH          */ .halfword 44
/* SPECIES_GLOOM           */ .halfword 45
/* SPECIES_VILEPLUME       */ .halfword 46
/* SPECIES_PARAS           */ .halfword 47
/* SPECIES_PARASECT        */ .halfword 48
/* SPECIES_VENONAT         */ .halfword 49
/* SPECIES_VENOMOTH        */ .halfword 50
/* SPECIES_DIGLETT         */ .halfword 51
/* SPECIES_DUGTRIO         */ .halfword 52
/* SPECIES_MEOWTH          */ .halfword 53
/* SPECIES_PERSIAN         */ .halfword 54
/* SPECIES_PSYDUCK         */ .halfword 55
/* SPECIES_GOLDUCK         */ .halfword 56
/* SPECIES_MANKEY          */ .halfword 57
/* SPECIES_PRIMEAPE        */ .halfword 58
/* SPECIES_GROWLITHE       */ .halfword 59
/* SPECIES_ARCANINE        */ .halfword 60
/* SPECIES_POLIWAG         */ .halfword 61
/* SPECIES_POLIWHIRL       */ .halfword 62
/* SPECIES_POLIWRATH       */ .halfword 63
/* SPECIES_ABRA            */ .halfword 64
/* SPECIES_KADABRA         */ .halfword 65
/* SPECIES_ALAKAZAM        */ .halfword 66
/* SPECIES_MACHOP          */ .halfword 67
/* SPECIES_MACHOKE         */ .halfword 68
/* SPECIES_MACHAMP         */ .halfword 69
/* SPECIES_BELLSPROUT      */ .halfword 70
/* SPECIES_WEEPINBELL      */ .halfword 71
/* SPECIES_VICTREEBEL      */ .halfword 72
/* SPECIES_TENTACOOL       */ .halfword 73
/* SPECIES_TENTACRUEL      */ .halfword 74
/* SPECIES_GEODUDE         */ .halfword 75
/* SPECIES_GRAVELER        */ .halfword 76
/* SPECIES_GOLEM           */ .halfword 77
/* SPECIES_PONYTA          */ .halfword 78
/* SPECIES_RAPIDASH        */ .halfword 79
/* SPECIES_SLOWPOKE        */ .halfword 80
/* SPECIES_SLOWBRO         */ .halfword 81
/* SPECIES_MAGNEMITE       */ .halfword 82
/* SPECIES_MAGNETON        */ .halfword 83
/* SPECIES_FARFETCHD       */ .halfword 84
/* SPECIES_DODUO           */ .halfword 85
/* SPECIES_DODRIO          */ .halfword 86
/* SPECIES_SEEL            */ .halfword 87
/* SPECIES_DEWGONG         */ .halfword 88
/* SPECIES_GRIMER          */ .halfword 89
/* SPECIES_MUK             */ .halfword 90
/* SPECIES_SHELLDER        */ .halfword 91
/* SPECIES_CLOYSTER        */ .halfword 92
/* SPECIES_GASTLY          */ .halfword 93
/* SPECIES_HAUNTER         */ .halfword 94
/* SPECIES_GENGAR          */ .halfword 95
/* SPECIES_ONIX            */ .halfword 96
/* SPECIES_DROWZEE         */ .halfword 97
/* SPECIES_HYPNO           */ .halfword 98
/* SPECIES_KRABBY          */ .halfword 99
/* SPECIES_KINGLER         */ .halfword 100
/* SPECIES_VOLTORB         */ .halfword 101
/* SPECIES_ELECTRODE       */ .halfword 102
/* SPECIES_EXEGGCUTE       */ .halfword 103
/* SPECIES_EXEGGUTOR       */ .halfword 104
/* SPECIES_CUBONE          */ .halfword 105
/* SPECIES_MAROWAK         */ .halfword 106
/* SPECIES_HITMONLEE       */ .halfword 107
/* SPECIES_HITMONCHAN      */ .halfword 108
/* SPECIES_LICKITUNG       */ .halfword 109
/* SPECIES_KOFFING         */ .halfword 110
/* SPECIES_WEEZING         */ .halfword 111
/* SPECIES_RHYHORN         */ .halfword 112
/* SPECIES_RHYDON          */ .halfword 113
/* SPECIES_CHANSEY         */ .halfword 114
/* SPECIES_TANGELA         */ .halfword 115
/* SPECIES_KANGASKHAN      */ .halfword 116
/* SPECIES_HORSEA          */ .halfword 117
/* SPECIES_SEADRA          */ .halfword 118
/* SPECIES_GOLDEEN         */ .halfword 119
/* SPECIES_SEAKING         */ .halfword 120
/* SPECIES_STARYU          */ .halfword 121
/* SPECIES_STARMIE         */ .halfword 122
/* SPECIES_MR_MIME         */ .halfword 123
/* SPECIES_SCYTHER         */ .halfword 124
/* SPECIES_JYNX            */ .halfword 125
/* SPECIES_ELECTABUZZ      */ .halfword 126
/* SPECIES_MAGMAR          */ .halfword 127
/* SPECIES_PINSIR          */ .halfword 128
/* SPECIES_TAUROS          */ .halfword 129
/* SPECIES_MAGIKARP        */ .halfword 130
/* SPECIES_GYARADOS        */ .halfword 131
/* SPECIES_LAPRAS          */ .halfword 132
/* SPECIES_DITTO           */ .halfword 133
/* SPECIES_EEVEE           */ .halfword 134
/* SPECIES_VAPOREON        */ .halfword 135
/* SPECIES_JOLTEON         */ .halfword 136
/* SPECIES_FLAREON         */ .halfword 137
/* SPECIES_PORYGON         */ .halfword 138
/* SPECIES_OMANYTE         */ .halfword 139
/* SPECIES_OMASTAR         */ .halfword 140
/* SPECIES_KABUTO          */ .halfword 141
/* SPECIES_KABUTOPS        */ .halfword 142
/* SPECIES_AERODACTYL      */ .halfword 143
/* SPECIES_SNORLAX         */ .halfword 144
/* SPECIES_ARTICUNO        */ .halfword 145
/* SPECIES_ZAPDOS          */ .halfword 146
/* SPECIES_MOLTRES         */ .halfword 147
/* SPECIES_DRATINI         */ .halfword 148
/* SPECIES_DRAGONAIR       */ .halfword 149
/* SPECIES_DRAGONITE       */ .halfword 150
/* SPECIES_MEWTWO          */ .halfword 151
/* SPECIES_MEW             */ .halfword 152
/* SPECIES_CHIKORITA       */ .halfword 153
/* SPECIES_BAYLEEF         */ .halfword 154
/* SPECIES_MEGANIUM        */ .halfword 155
/* SPECIES_CYNDAQUIL       */ .halfword 157
/* SPECIES_QUILAVA         */ .halfword 158
/* SPECIES_TYPHLOSION      */ .halfword 159
/* SPECIES_TOTODILE        */ .halfword 160
/* SPECIES_CROCONAW        */ .halfword 161
/* SPECIES_FERALIGATR      */ .halfword 162
/* SPECIES_SENTRET         */ .halfword 163
/* SPECIES_FURRET          */ .halfword 164
/* SPECIES_HOOTHOOT        */ .halfword 165
/* SPECIES_NOCTOWL         */ .halfword 166
/* SPECIES_LEDYBA          */ .halfword 167
/* SPECIES_LEDIAN          */ .halfword 168
/* SPECIES_SPINARAK        */ .halfword 169
/* SPECIES_ARIADOS         */ .halfword 170
/* SPECIES_CROBAT          */ .halfword 171
/* SPECIES_CHINCHOU        */ .halfword 172
/* SPECIES_LANTURN         */ .halfword 173
/* SPECIES_PICHU           */ .halfword 174
/* SPECIES_CLEFFA          */ .halfword 176
/* SPECIES_IGGLYBUFF       */ .halfword 177
/* SPECIES_TOGEPI          */ .halfword 178
/* SPECIES_TOGETIC         */ .halfword 179
/* SPECIES_NATU            */ .halfword 180
/* SPECIES_XATU            */ .halfword 181
/* SPECIES_MAREEP          */ .halfword 182
/* SPECIES_FLAAFFY         */ .halfword 183
/* SPECIES_AMPHAROS        */ .halfword 184
/* SPECIES_BELLOSSOM       */ .halfword 185
/* SPECIES_MARILL          */ .halfword 186
/* SPECIES_AZUMARILL       */ .halfword 187
/* SPECIES_SUDOWOODO       */ .halfword 188
/* SPECIES_POLITOED        */ .halfword 189
/* SPECIES_HOPPIP          */ .halfword 190
/* SPECIES_SKIPLOOM        */ .halfword 191
/* SPECIES_JUMPLUFF        */ .halfword 192
/* SPECIES_AIPOM           */ .halfword 193
/* SPECIES_SUNKERN         */ .halfword 194
/* SPECIES_SUNFLORA        */ .halfword 195
/* SPECIES_YANMA           */ .halfword 196
/* SPECIES_WOOPER          */ .halfword 197
/* SPECIES_QUAGSIRE        */ .halfword 198
/* SPECIES_ESPEON          */ .halfword 199
/* SPECIES_UMBREON         */ .halfword 200
/* SPECIES_MURKROW         */ .halfword 201
/* SPECIES_SLOWKING        */ .halfword 202
/* SPECIES_MISDREAVUS      */ .halfword 203
/* SPECIES_UNOWN           */ .halfword 204
/* SPECIES_WOBBUFFET       */ .halfword 232
/* SPECIES_GIRAFARIG       */ .halfword 234
/* SPECIES_PINECO          */ .halfword 235
/* SPECIES_FORRETRESS      */ .halfword 236
/* SPECIES_DUNSPARCE       */ .halfword 237
/* SPECIES_GLIGAR          */ .halfword 238
/* SPECIES_STEELIX         */ .halfword 239
/* SPECIES_SNUBBULL        */ .halfword 241
/* SPECIES_GRANBULL        */ .halfword 242
/* SPECIES_QWILFISH        */ .halfword 243
/* SPECIES_SCIZOR          */ .halfword 244
/* SPECIES_SHUCKLE         */ .halfword 245
/* SPECIES_HERACROSS       */ .halfword 246
/* SPECIES_SNEASEL         */ .halfword 248
/* SPECIES_TEDDIURSA       */ .halfword 249
/* SPECIES_URSARING        */ .halfword 250
/* SPECIES_SLUGMA          */ .halfword 251
/* SPECIES_MAGCARGO        */ .halfword 252
/* SPECIES_SWINUB          */ .halfword 253
/* SPECIES_PILOSWINE       */ .halfword 254
/* SPECIES_CORSOLA         */ .halfword 255
/* SPECIES_REMORAID        */ .halfword 256
/* SPECIES_OCTILLERY       */ .halfword 257
/* SPECIES_DELIBIRD        */ .halfword 258
/* SPECIES_MANTINE         */ .halfword 259
/* SPECIES_SKARMORY        */ .halfword 260
/* SPECIES_HOUNDOUR        */ .halfword 261
/* SPECIES_HOUNDOOM        */ .halfword 262
/* SPECIES_KINGDRA         */ .halfword 263
/* SPECIES_PHANPY          */ .halfword 264
/* SPECIES_DONPHAN         */ .halfword 265
/* SPECIES_PORYGON2        */ .halfword 266
/* SPECIES_STANTLER        */ .halfword 267
/* SPECIES_SMEARGLE        */ .halfword 268
/* SPECIES_TYROGUE         */ .halfword 269
/* SPECIES_HITMONTOP       */ .halfword 270
/* SPECIES_SMOOCHUM        */ .halfword 271
/* SPECIES_ELEKID          */ .halfword 272
/* SPECIES_MAGBY           */ .halfword 273
/* SPECIES_MILTANK         */ .halfword 274
/* SPECIES_BLISSEY         */ .halfword 275
/* SPECIES_RAIKOU          */ .halfword 276
/* SPECIES_ENTEI           */ .halfword 277
/* SPECIES_SUICUNE         */ .halfword 278
/* SPECIES_LARVITAR        */ .halfword 279
/* SPECIES_PUPITAR         */ .halfword 280
/* SPECIES_TYRANITAR       */ .halfword 281
/* SPECIES_LUGIA           */ .halfword 282
/* SPECIES_HO_OH           */ .halfword 283
/* SPECIES_CELEBI          */ .halfword 284
/* SPECIES_TREECKO         */ .halfword 285
/* SPECIES_GROVYLE         */ .halfword 286
/* SPECIES_SCEPTILE        */ .halfword 287
/* SPECIES_TORCHIC         */ .halfword 288
/* SPECIES_COMBUSKEN       */ .halfword 289
/* SPECIES_BLAZIKEN        */ .halfword 290
/* SPECIES_MUDKIP          */ .halfword 291
/* SPECIES_MARSHTOMP       */ .halfword 292
/* SPECIES_SWAMPERT        */ .halfword 293
/* SPECIES_POOCHYENA       */ .halfword 294
/* SPECIES_MIGHTYENA       */ .halfword 295
/* SPECIES_ZIGZAGOON       */ .halfword 296
/* SPECIES_LINOONE         */ .halfword 297
/* SPECIES_WURMPLE         */ .halfword 298
/* SPECIES_SILCOON         */ .halfword 299
/* SPECIES_BEAUTIFLY       */ .halfword 300
/* SPECIES_CASCOON         */ .halfword 301
/* SPECIES_DUSTOX          */ .halfword 302
/* SPECIES_LOTAD           */ .halfword 303
/* SPECIES_LOMBRE          */ .halfword 304
/* SPECIES_LUDICOLO        */ .halfword 305
/* SPECIES_SEEDOT          */ .halfword 306
/* SPECIES_NUZLEAF         */ .halfword 307
/* SPECIES_SHIFTRY         */ .halfword 308
/* SPECIES_TAILLOW         */ .halfword 309
/* SPECIES_SWELLOW         */ .halfword 310
/* SPECIES_WINGULL         */ .halfword 311
/* SPECIES_PELIPPER        */ .halfword 312
/* SPECIES_RALTS           */ .halfword 313
/* SPECIES_KIRLIA          */ .halfword 314
/* SPECIES_GARDEVOIR       */ .halfword 315
/* SPECIES_SURSKIT         */ .halfword 316
/* SPECIES_MASQUERAIN      */ .halfword 317
/* SPECIES_SHROOMISH       */ .halfword 318
/* SPECIES_BRELOOM         */ .halfword 319
/* SPECIES_SLAKOTH         */ .halfword 320
/* SPECIES_VIGOROTH        */ .halfword 321
/* SPECIES_SLAKING         */ .halfword 322
/* SPECIES_NINCADA         */ .halfword 323
/* SPECIES_NINJASK         */ .halfword 324
/* SPECIES_SHEDINJA        */ .halfword 325
/* SPECIES_WHISMUR         */ .halfword 326
/* SPECIES_LOUDRED         */ .halfword 327
/* SPECIES_EXPLOUD         */ .halfword 328
/* SPECIES_MAKUHITA        */ .halfword 329
/* SPECIES_HARIYAMA        */ .halfword 330
/* SPECIES_AZURILL         */ .halfword 331
/* SPECIES_NOSEPASS        */ .halfword 332
/* SPECIES_SKITTY          */ .halfword 333
/* SPECIES_DELCATTY        */ .halfword 334
/* SPECIES_SABLEYE         */ .halfword 335
/* SPECIES_MAWILE          */ .halfword 336
/* SPECIES_ARON            */ .halfword 337
/* SPECIES_LAIRON          */ .halfword 338
/* SPECIES_AGGRON          */ .halfword 339
/* SPECIES_MEDITITE        */ .halfword 340
/* SPECIES_MEDICHAM        */ .halfword 341
/* SPECIES_ELECTRIKE       */ .halfword 342
/* SPECIES_MANECTRIC       */ .halfword 343
/* SPECIES_PLUSLE          */ .halfword 344
/* SPECIES_MINUN           */ .halfword 345
/* SPECIES_VOLBEAT         */ .halfword 346
/* SPECIES_ILLUMISE        */ .halfword 347
/* SPECIES_ROSELIA         */ .halfword 348
/* SPECIES_GULPIN          */ .halfword 349
/* SPECIES_SWALOT          */ .halfword 350
/* SPECIES_CARVANHA        */ .halfword 351
/* SPECIES_SHARPEDO        */ .halfword 352
/* SPECIES_WAILMER         */ .halfword 353
/* SPECIES_WAILORD         */ .halfword 354
/* SPECIES_NUMEL           */ .halfword 355
/* SPECIES_CAMERUPT        */ .halfword 356
/* SPECIES_TORKOAL         */ .halfword 357
/* SPECIES_SPOINK          */ .halfword 358
/* SPECIES_GRUMPIG         */ .halfword 359
/* SPECIES_SPINDA          */ .halfword 360
/* SPECIES_TRAPINCH        */ .halfword 361
/* SPECIES_VIBRAVA         */ .halfword 362
/* SPECIES_FLYGON          */ .halfword 363
/* SPECIES_CACNEA          */ .halfword 364
/* SPECIES_CACTURNE        */ .halfword 365
/* SPECIES_SWABLU          */ .halfword 366
/* SPECIES_ALTARIA         */ .halfword 367
/* SPECIES_ZANGOOSE        */ .halfword 368
/* SPECIES_SEVIPER         */ .halfword 369
/* SPECIES_LUNATONE        */ .halfword 370
/* SPECIES_SOLROCK         */ .halfword 371
/* SPECIES_BARBOACH        */ .halfword 372
/* SPECIES_WHISCASH        */ .halfword 373
/* SPECIES_CORPHISH        */ .halfword 374
/* SPECIES_CRAWDAUNT       */ .halfword 375
/* SPECIES_BALTOY          */ .halfword 376
/* SPECIES_CLAYDOL         */ .halfword 377
/* SPECIES_LILEEP          */ .halfword 378
/* SPECIES_CRADILY         */ .halfword 379
/* SPECIES_ANORITH         */ .halfword 380
/* SPECIES_ARMALDO         */ .halfword 381
/* SPECIES_FEEBAS          */ .halfword 382
/* SPECIES_MILOTIC         */ .halfword 383
/* SPECIES_CASTFORM        */ .halfword 384
/* SPECIES_KECLEON         */ .halfword 385
/* SPECIES_SHUPPET         */ .halfword 386
/* SPECIES_BANETTE         */ .halfword 387
/* SPECIES_DUSKULL         */ .halfword 388
/* SPECIES_DUSCLOPS        */ .halfword 389
/* SPECIES_TROPIUS         */ .halfword 390
/* SPECIES_CHIMECHO        */ .halfword 391
/* SPECIES_ABSOL           */ .halfword 392
/* SPECIES_WYNAUT          */ .halfword 393
/* SPECIES_SNORUNT         */ .halfword 394
/* SPECIES_GLALIE          */ .halfword 395
/* SPECIES_SPHEAL          */ .halfword 396
/* SPECIES_SEALEO          */ .halfword 397
/* SPECIES_WALREIN         */ .halfword 398
/* SPECIES_CLAMPERL        */ .halfword 399
/* SPECIES_HUNTAIL         */ .halfword 400
/* SPECIES_GOREBYSS        */ .halfword 401
/* SPECIES_RELICANTH       */ .halfword 402
/* SPECIES_LUVDISC         */ .halfword 403
/* SPECIES_BAGON           */ .halfword 404
/* SPECIES_SHELGON         */ .halfword 405
/* SPECIES_SALAMENCE       */ .halfword 406
/* SPECIES_BELDUM          */ .halfword 407
/* SPECIES_METANG          */ .halfword 408
/* SPECIES_METAGROSS       */ .halfword 409
/* SPECIES_REGIROCK        */ .halfword 410
/* SPECIES_REGICE          */ .halfword 411
/* SPECIES_REGISTEEL       */ .halfword 412
/* SPECIES_LATIAS          */ .halfword 413
/* SPECIES_LATIOS          */ .halfword 414
/* SPECIES_KYOGRE          */ .halfword 415
/* SPECIES_GROUDON         */ .halfword 416
/* SPECIES_RAYQUAZA        */ .halfword 417
/* SPECIES_JIRACHI         */ .halfword 418
/* SPECIES_DEOXYS          */ .halfword 419
/* SPECIES_TURTWIG         */ .halfword 423
/* SPECIES_GROTLE          */ .halfword 424
/* SPECIES_TORTERRA        */ .halfword 425
/* SPECIES_CHIMCHAR        */ .halfword 426
/* SPECIES_MONFERNO        */ .halfword 427
/* SPECIES_INFERNAPE       */ .halfword 428
/* SPECIES_PIPLUP          */ .halfword 429
/* SPECIES_PRINPLUP        */ .halfword 430
/* SPECIES_EMPOLEON        */ .halfword 431
/* SPECIES_STARLY          */ .halfword 432
/* SPECIES_STARAVIA        */ .halfword 433
/* SPECIES_STARAPTOR       */ .halfword 434
/* SPECIES_BIDOOF          */ .halfword 435
/* SPECIES_BIBAREL         */ .halfword 436
/* SPECIES_KRICKETOT       */ .halfword 437
/* SPECIES_KRICKETUNE      */ .halfword 438
/* SPECIES_SHINX           */ .halfword 439
/* SPECIES_LUXIO           */ .halfword 440
/* SPECIES_LUXRAY          */ .halfword 441
/* SPECIES_BUDEW           */ .halfword 442
/* SPECIES_ROSERADE        */ .halfword 443
/* SPECIES_CRANIDOS        */ .halfword 444
/* SPECIES_RAMPARDOS       */ .halfword 445
/* SPECIES_SHIELDON        */ .halfword 446
/* SPECIES_BASTIODON       */ .halfword 447
/* SPECIES_BURMY           */ .halfword 448
/* SPECIES_WORMADAM        */ .halfword 451
/* SPECIES_MOTHIM          */ .halfword 454
/* SPECIES_COMBEE          */ .halfword 455
/* SPECIES_VESPIQUEN       */ .halfword 457
/* SPECIES_PACHIRISU       */ .halfword 458
/* SPECIES_BUIZEL          */ .halfword 459
/* SPECIES_FLOATZEL        */ .halfword 460
/* SPECIES_CHERUBI         */ .halfword 461
/* SPECIES_CHERRIM         */ .halfword 462
/* SPECIES_SHELLOS         */ .halfword 463
/* SPECIES_GASTRODON       */ .halfword 465
/* SPECIES_AMBIPOM         */ .halfword 467
/* SPECIES_DRIFLOON        */ .halfword 468
/* SPECIES_DRIFBLIM        */ .halfword 469
/* SPECIES_BUNEARY         */ .halfword 470
/* SPECIES_LOPUNNY         */ .halfword 471
/* SPECIES_MISMAGIUS       */ .halfword 472
/* SPECIES_HONCHKROW       */ .halfword 473
/* SPECIES_GLAMEOW         */ .halfword 474
/* SPECIES_PURUGLY         */ .halfword 475
/* SPECIES_CHINGLING       */ .halfword 476
/* SPECIES_STUNKY          */ .halfword 477
/* SPECIES_SKUNTANK        */ .halfword 478
/* SPECIES_BRONZOR         */ .halfword 479
/* SPECIES_BRONZONG        */ .halfword 480
/* SPECIES_BONSLY          */ .halfword 481
/* SPECIES_MIMEJR          */ .halfword 482
/* SPECIES_HAPPINY         */ .halfword 483
/* SPECIES_CHATOT          */ .halfword 484
/* SPECIES_SPIRITOMB       */ .halfword 485
/* SPECIES_GIBLE           */ .halfword 486
/* SPECIES_GABITE          */ .halfword 488
/* SPECIES_GARCHOMP        */ .halfword 490
/* SPECIES_MUNCHLAX        */ .halfword 492
/* SPECIES_RIOLU           */ .halfword 493
/* SPECIES_LUCARIO         */ .halfword 494
/* SPECIES_HIPPOPOTAS      */ .halfword 495
/* SPECIES_HIPPOWDON       */ .halfword 497
/* SPECIES_SKORUPI         */ .halfword 499
/* SPECIES_DRAPION         */ .halfword 500
/* SPECIES_CROAGUNK        */ .halfword 501
/* SPECIES_TOXICROAK       */ .halfword 502
/* SPECIES_CARNIVINE       */ .halfword 503
/* SPECIES_FINNEON         */ .halfword 504
/* SPECIES_LUMINEON        */ .halfword 505
/* SPECIES_MANTYKE         */ .halfword 506
/* SPECIES_SNOVER          */ .halfword 507
/* SPECIES_ABOMASNOW       */ .halfword 508
/* SPECIES_WEAVILE         */ .halfword 509
/* SPECIES_MAGNEZONE       */ .halfword 510
/* SPECIES_LICKILICKY      */ .halfword 511
/* SPECIES_RHYPERIOR       */ .halfword 512
/* SPECIES_TANGROWTH       */ .halfword 513
/* SPECIES_ELECTIVIRE      */ .halfword 514
/* SPECIES_MAGMORTAR       */ .halfword 515
/* SPECIES_TOGEKISS        */ .halfword 516
/* SPECIES_YANMEGA         */ .halfword 517
/* SPECIES_LEAFEON         */ .halfword 518
/* SPECIES_GLACEON         */ .halfword 519
/* SPECIES_GLISCOR         */ .halfword 520
/* SPECIES_MAMOSWINE       */ .halfword 521
/* SPECIES_PORYGON_Z       */ .halfword 522
/* SPECIES_GALLADE         */ .halfword 523
/* SPECIES_PROBOPASS       */ .halfword 524
/* SPECIES_DUSKNOIR        */ .halfword 525
/* SPECIES_FROSLASS        */ .halfword 526
/* SPECIES_ROTOM           */ .halfword 527
/* SPECIES_UXIE            */ .halfword 533
/* SPECIES_MESPRIT         */ .halfword 534
/* SPECIES_AZELF           */ .halfword 535
/* SPECIES_DIALGA          */ .halfword 536
/* SPECIES_PALKIA          */ .halfword 537
/* SPECIES_HEATRAN         */ .halfword 538
/* SPECIES_REGIGIGAS       */ .halfword 539
/* SPECIES_GIRATINA        */ .halfword 540
/* SPECIES_CRESSELIA       */ .halfword 542
/* SPECIES_PHIONE          */ .halfword 543
/* SPECIES_MANAPHY         */ .halfword 544
/* SPECIES_DARKRAI         */ .halfword 545
/* SPECIES_SHAYMIN         */ .halfword 546
/* SPECIES_ARCEUS          */ .halfword 548
/* SPECIES_EGG             */ .halfword 0
/* SPECIES_BAD_EGG         */ .halfword 0
/* SPECIES_DEOXYS_ATTACK   */ .halfword 0
/* SPECIES_DEOXYS_DEFENSE  */ .halfword 0
/* SPECIES_DEOXYS_SPEED    */ .halfword 0
/* SPECIES_WORMADAM_SANDY  */ .halfword 0
/* SPECIES_WORMADAM_TRASHY */ .halfword 0
/* SPECIES_GIRATINA_ORIGIN */ .halfword 0
/* SPECIES_SHAYMIN_SKY     */ .halfword 0
/* SPECIES_ROTOM_HEAT      */ .halfword 0
/* SPECIES_ROTOM_WASH      */ .halfword 0
/* SPECIES_ROTOM_FROST     */ .halfword 0
/* SPECIES_ROTOM_FAN       */ .halfword 0
/* SPECIES_ROTOM_MOW       */ .halfword 0
/* SPECIES_508             */ .halfword 0
/* SPECIES_509             */ .halfword 0
/* SPECIES_510             */ .halfword 0
/* SPECIES_511             */ .halfword 0
/* SPECIES_512             */ .halfword 0
/* SPECIES_513             */ .halfword 0
/* SPECIES_514             */ .halfword 0
/* SPECIES_515             */ .halfword 0
/* SPECIES_516             */ .halfword 0
/* SPECIES_517             */ .halfword 0
/* SPECIES_518             */ .halfword 0
/* SPECIES_519             */ .halfword 0
/* SPECIES_520             */ .halfword 0
/* SPECIES_521             */ .halfword 0
/* SPECIES_522             */ .halfword 0
/* SPECIES_523             */ .halfword 0
/* SPECIES_524             */ .halfword 0
/* SPECIES_525             */ .halfword 0
/* SPECIES_526             */ .halfword 0
/* SPECIES_527             */ .halfword 0
/* SPECIES_528             */ .halfword 0
/* SPECIES_529             */ .halfword 0
/* SPECIES_530             */ .halfword 0
/* SPECIES_531             */ .halfword 0
/* SPECIES_532             */ .halfword 0
/* SPECIES_533             */ .halfword 0
/* SPECIES_534             */ .halfword 0
/* SPECIES_535             */ .halfword 0
/* SPECIES_536             */ .halfword 0
/* SPECIES_537             */ .halfword 0
/* SPECIES_538             */ .halfword 0
/* SPECIES_539             */ .halfword 0
/* SPECIES_540             */ .halfword 0
/* SPECIES_541             */ .halfword 0
/* SPECIES_542             */ .halfword 0
/* SPECIES_543             */ .halfword 0
/* SPECIES_VICTINI         */ .halfword 566

.endarea



// gOWTagToFileNum maps each overworld tag to its file number in a081.


.if (NUM_OF_MONS - 1) <= SPECIES_ARCEUS
    .close

    .open "overlay9_0001.bin", 0x021E5900

    .orga 0x21BA8 // begin mon ow num table
.endif

.align

.area (NUM_OF_MON_OVERWORLDS + 300) * 6, 0xFF // 205 to account for initial overworld amount
// rearranged to include all the tags in their normal order.  not liking the bullshit organization that game freak made.

gOWTagToFileNum:  // skip down a bit to see the parts that are specifically for pokémon
.halfword    0,  69, 0x1C60
.halfword 1   , 0  , 0x0000
.halfword 2   , 1  , 0x0000
.halfword 3   , 2  , 0x0000
.halfword 4   , 3  , 0x0000
.halfword 5   , 4  , 0x0000
.halfword 6   , 5  , 0x0000
.halfword 7   , 6  , 0x0000
.halfword 8   , 7  , 0x0000
.halfword 9   , 8  , 0x0000
.halfword 10  , 9  , 0x0000
.halfword 11  , 10 , 0x0000
.halfword 12  , 12 , 0x0000
.halfword 13  , 13 , 0x0000
.halfword 14  , 14 , 0x0000
.halfword 15  , 16 , 0x0000
.halfword 16  , 17 , 0x0000
.halfword 17  , 18 , 0x0000
.halfword 18  , 19 , 0x0000
.halfword 19  , 34 , 0x0000
.halfword 20  , 35 , 0x0000
.halfword 21  , 71 , 0x1881
.halfword 22  , 31 , 0x0000
.halfword 23  , 32 , 0x0000
.halfword 24  , 23 , 0x0000
.halfword 25  , 24 , 0x0000
.halfword 29  , 25 , 0x0000
.halfword 30  , 26 , 0x0000
.halfword 31  , 36 , 0x0000
.halfword 33  , 22 , 0x0000
.halfword 34  , 37 , 0x0000
.halfword 35  , 38 , 0x0000
.halfword 36  , 39 , 0x0000
.halfword 37  , 40 , 0x0000
.halfword 38  , 20 , 0x0001
.halfword 39  , 21 , 0x0001
.halfword 40  , 41 , 0x0000
.halfword 41  , 42 , 0x0000
.halfword 42  , 43 , 0x0000
.halfword 43  , 44 , 0x0000
.halfword 44  , 45 , 0x0000
.halfword 45  , 46 , 0x0000
.halfword 50  , 47 , 0x0000
.halfword 51  , 48 , 0x0000
.halfword 52  , 49 , 0x0000
.halfword 53  , 50 , 0x0000
.halfword 54  , 51 , 0x0000
.halfword 55  , 52 , 0x0000
.halfword 56  , 53 , 0x0000
.halfword 59  , 29 , 0x0000
.halfword 60  , 30 , 0x0000
.halfword 62  , 27 , 0x0000
.halfword 63  , 28 , 0x0000
.halfword 68  , 11 , 0x0000
.halfword 69  , 15 , 0x0000
.halfword 70  , 33 , 0x0000
.halfword 71  , 68 , 0x0000
.halfword 84  , 91 , 0x0420
.halfword 85  , 92 , 0x0820
.halfword 86  , 93 , 0x0020
.halfword 87  , 94 , 0x0420
.halfword 97  , 70 , 0x1C60
.halfword 98  , 72 , 0x1881
.halfword 99  , 54 , 0x0000
.halfword  126, 215, 0x0000
.halfword  127, 216, 0x0000
.halfword  128, 217, 0x0000
.halfword  129, 218, 0x0000
.halfword  130, 219, 0x0000
.halfword  131, 220, 0x0000
.halfword  132, 221, 0x0000
.halfword  133, 222, 0x0000
.halfword 141 , 62 , 0x0000
.halfword 142 , 63 , 0x0000
.halfword 143 , 64 , 0x0000
.halfword 144 , 65 , 0x0000
.halfword 145 , 66 , 0x0000
.halfword 146 , 67 , 0x0000
.halfword 148 , 58 , 0x0000
.halfword 168 , 57 , 0x0000
.halfword 169 , 61 , 0x0000
.halfword 175 , 55 , 0x0000
.halfword 176 , 75 , 0x20A0
.halfword 177 , 76 , 0x20A0
.halfword 180 , 77 , 0x28C0
.halfword 181 , 78 , 0x28C0
.halfword 178 , 73 , 0x24E0
.halfword 179 , 74 , 0x24E0
.halfword 183 , 0  , 0xFDE2
.halfword 188 , 79 , 0x2D00
.halfword 189 , 80 , 0x2D00
.halfword 248 , 81 , 0x3120
.halfword 249 , 82 , 0x3120
.halfword 193 , 56 , 0x0000
.halfword 8192, 0  , 0xFC03
.halfword 196 , 85 , 0x3D60
.halfword 197 , 86 , 0x3D60
.halfword 198 , 87 , 0x40A0
.halfword 199 , 88 , 0x40A0
.halfword 200 , 89 , 0x3540
.halfword 201 , 90 , 0x3540
.halfword 211 , 170, 0x0000
.halfword 218 , 171, 0x0000
.halfword 219 , 83 , 0x0000
.halfword 220 , 172, 0x0000
.halfword 221 , 173, 0x0000
.halfword 222 , 174, 0x0000
.halfword 223 , 175, 0x0000
.halfword 224 , 176, 0x0000
.halfword 293 , 244, 0x0000
.halfword 294 , 245, 0x0000
.halfword 225 , 177, 0x0000
.halfword 227 , 178, 0x0000
.halfword 229 , 179, 0x0000
.halfword 232 , 180, 0x0000
.halfword  233, 223, 0x0000
.halfword 235 , 181, 0x0000
.halfword 236 , 182, 0x0000
.halfword 237 , 183, 0x0000
.halfword 238 , 213, 0x1C60
.halfword 239 , 214, 0x1C60
.halfword 250 , 84 , 0x0C00
.halfword 251 , 0  , 0xFDE4
.halfword 252 , 0  , 0xFDE4
.halfword 253 , 0  , 0xFDE4
.halfword 254 , 0  , 0xFDE4
.halfword 255 , 0  , 0xFDE4
.halfword 256 , 0  , 0xFDE4
.halfword 257 , 0  , 0xFDE4
.halfword  258,  95, 0x1C60
.halfword  259,  96, 0x1C60
.halfword  260,  97, 0x3540
.halfword  261,  98, 0x3540
.halfword  262, 251, 0x5647
.halfword  263, 255, 0x5647
.halfword  264, 258, 0x5647
.halfword  265, 252, 0x5647
.halfword  266, 254, 0x5647
.halfword  267, 257, 0x5647
.halfword  268, 256, 0x5647
.halfword  269, 253, 0x5647
.halfword  270, 262, 0x5826
.halfword  271, 265, 0x5826
.halfword  272, 259, 0x5826
.halfword  273, 261, 0x5826
.halfword  274, 264, 0x5826
.halfword  275, 263, 0x5826
.halfword  276, 260, 0x5826
.halfword  277, 103, 0x0000
.halfword  278, 104, 0x0000
.halfword  279, 105, 0x0000
.halfword  280, 106, 0x0000
.halfword  281, 107, 0x0000
.halfword  282, 108, 0x0000
.halfword  283, 109, 0x0000
.halfword  284, 110, 0x0000
.halfword  285, 101, 0x0000
.halfword  286, 102, 0x0000
.halfword  287, 111, 0x0006
.halfword 288 , 0  , 0xFDE4
.halfword 289 , 0  , 0xFDE4
.halfword 290 , 112, 0x1025
.halfword 291 , 0  , 0xFDE4
.halfword 292 , 0  , 0xFDE4
.halfword 295 , 246, 0x1C60
.halfword 296 , 247, 0x1C60
.halfword  297, 248, 0x40A0
.halfword  298, 249, 0x40A0
.halfword  299, 250, 0x0000
.halfword 315 , 113, 0x0000
.halfword 316 , 114, 0x0000
.halfword 317 , 115, 0x0000
.halfword 318 , 116, 0x0000
.halfword 319 , 117, 0x0000
.halfword 320 , 118, 0x0000
.halfword 321 , 119, 0x0000
.halfword 322 , 120, 0x0000
.halfword 323 , 121, 0x0000
.halfword 324 , 122, 0x0000
.halfword 325 , 123, 0x0000
.halfword 326 , 124, 0x0000
.halfword 327 , 125, 0x0000
.halfword 328 , 126, 0x0000
.halfword 329 , 127, 0x0000
.halfword 330 , 128, 0x0000
.halfword 331 , 129, 0x0000
.halfword 332 , 130, 0x0000
.halfword 333 , 131, 0x0000
.halfword 334 , 132, 0x0000
.halfword 335 , 133, 0x1580
.halfword 336 , 134, 0x0000
.halfword 337 , 135, 0x0000
.halfword 338 , 136, 0x0000
.halfword 341 , 137, 0x0000
.halfword 342 , 138, 0x0000
.halfword 343 , 139, 0x0000
.halfword 344 , 140, 0x0000
.halfword 345 , 141, 0x0000
.halfword 346 , 142, 0x0000
.halfword 347 , 143, 0x0000
.halfword 348 , 144, 0x0000
.halfword 351 , 145, 0x0000
.halfword 352 , 146, 0x0000
.halfword 353 , 147, 0x0000
.halfword 354 , 148, 0x0000
.halfword 355 , 149, 0x0000
.halfword 356 , 150, 0x0000
.halfword 357 , 151, 0x0000
.halfword 358 , 152, 0x0000
.halfword 359 , 153, 0x0000
.halfword 360 , 154, 0x0000
.halfword 361 , 155, 0x0000
.halfword 362 , 156, 0x0000
.halfword 363 , 157, 0x0000
.halfword 364 , 158, 0x0000
.halfword 365 , 159, 0x0000
.halfword 366 , 160, 0x0000
.halfword 367 , 161, 0x0000
.halfword 368 , 162, 0x0000
.halfword 369 , 163, 0x0000
.halfword 370 , 164, 0x0000
.halfword 371 , 165, 0x0000
.halfword 372 , 166, 0x0000
.halfword 373 , 167, 0x0000
.halfword 374 , 168, 0x0000
.halfword 375 , 169, 0x0000
.halfword 377 , 184, 0x0000
.halfword 378 , 185, 0x0000
.halfword  380, 224, 0x0000
.halfword 381 , 186, 0x0000
.halfword 382 , 187, 0x0000
.halfword 383 , 188, 0x0000
.halfword 384 , 189, 0x0000
.halfword  385, 225, 0x0000
.halfword  386, 226, 0x0000
.halfword  387, 227, 0x0000
.halfword 389 , 190, 0x0000
.halfword  390, 228, 0x0000
.halfword 392 , 191, 0x0000
.halfword 393 , 192, 0x0000
.halfword 394 , 193, 0x0000
.halfword 395 , 194, 0x5C06
.halfword 406 , 195, 0x0006
.halfword 409 , 200, 0x0000
.halfword 410 , 198, 0x0000
.halfword 411 , 197, 0x0000
.halfword 412 , 199, 0x0000
.halfword 413 , 196, 0x0000
.halfword 349 , 243, 0x5C00
.halfword 234 , 242, 0x0024
.halfword 350 , 229, 0x0024
.halfword 376 , 230, 0x0024
.halfword 379 , 231, 0x0024
.halfword 210 , 239, 0x5C24
.halfword 396 , 241, 0x5C24
.halfword 397 , 240, 0x0024
.halfword 398 , 237, 0x0024
.halfword 399 , 234, 0x0024
.halfword 400 , 235, 0x5C24
.halfword 401 , 236, 0x0024
.halfword 402 , 238, 0x0024
.halfword 403 , 232, 0x0024
.halfword 404 , 233, 0x0024

.halfword  407,  99, 0x1C60
.halfword  408, 100, 0x1C60

.halfword  414, 209, 0x0000
.halfword  415, 201, 0x4E25
.halfword  416, 202, 0x4E25
.halfword  417, 203, 0x4E25
.halfword  418, 204, 0x5225
.halfword  419, 205, 0x5225
.halfword  420, 206, 0x5225
.halfword  421,  59, 0x0000
.halfword  422,  60, 0x0000
.halfword  423, 207, 0x3A60
.halfword  424, 208, 0x3A60
.halfword  425, 210, 0x45A5
.halfword  426, 211, 0x49A5
.halfword  427, 212, 0x0000

// pokémon specific overworlds start here

.halfword 428, 297, OVERWORLD_SIZE_SMALL
.halfword 429, 298, OVERWORLD_SIZE_SMALL
.halfword 430, 299, OVERWORLD_SIZE_SMALL
.halfword 431, 300, OVERWORLD_SIZE_SMALL
.halfword 432, 301, OVERWORLD_SIZE_SMALL
.halfword 433, 302, OVERWORLD_SIZE_SMALL
.halfword 434, 303, OVERWORLD_SIZE_SMALL
.halfword 435, 304, OVERWORLD_SIZE_SMALL
.halfword 436, 305, OVERWORLD_SIZE_SMALL
.halfword 437, 306, OVERWORLD_SIZE_SMALL
.halfword 438, 307, OVERWORLD_SIZE_SMALL
.halfword 439, 308, OVERWORLD_SIZE_SMALL
.halfword 440, 309, OVERWORLD_SIZE_SMALL
.halfword 441, 310, OVERWORLD_SIZE_SMALL
.halfword 442, 311, OVERWORLD_SIZE_SMALL
.halfword 443, 312, OVERWORLD_SIZE_SMALL
.halfword 444, 313, OVERWORLD_SIZE_SMALL
.halfword 445, 314, OVERWORLD_SIZE_SMALL
.halfword 446, 315, OVERWORLD_SIZE_SMALL
.halfword 447, 316, OVERWORLD_SIZE_SMALL
.halfword 448, 317, OVERWORLD_SIZE_SMALL
.halfword 449, 318, OVERWORLD_SIZE_SMALL
.halfword 450, 319, OVERWORLD_SIZE_SMALL
.halfword 451, 320, OVERWORLD_SIZE_SMALL
.halfword 452, 321, OVERWORLD_SIZE_SMALL
.halfword 453, 322, OVERWORLD_SIZE_SMALL
.halfword 454, 323, OVERWORLD_SIZE_SMALL
.halfword 455, 324, OVERWORLD_SIZE_SMALL
.halfword 456, 325, OVERWORLD_SIZE_SMALL
.halfword 457, 326, OVERWORLD_SIZE_SMALL
.halfword 458, 327, OVERWORLD_SIZE_SMALL
.halfword 459, 328, OVERWORLD_SIZE_SMALL
.halfword 460, 329, OVERWORLD_SIZE_SMALL
.halfword 461, 330, OVERWORLD_SIZE_SMALL
.halfword 462, 331, OVERWORLD_SIZE_SMALL
.halfword 463, 332, OVERWORLD_SIZE_SMALL
.halfword 464, 333, OVERWORLD_SIZE_SMALL
.halfword 465, 334, OVERWORLD_SIZE_SMALL
.halfword 466, 335, OVERWORLD_SIZE_SMALL
.halfword 467, 336, OVERWORLD_SIZE_SMALL
.halfword 468, 337, OVERWORLD_SIZE_SMALL
.halfword 469, 338, OVERWORLD_SIZE_SMALL
.halfword 470, 339, OVERWORLD_SIZE_SMALL
.halfword 471, 340, OVERWORLD_SIZE_SMALL
.halfword 472, 341, OVERWORLD_SIZE_SMALL
.halfword 473, 342, OVERWORLD_SIZE_SMALL
.halfword 474, 343, OVERWORLD_SIZE_SMALL
.halfword 475, 344, OVERWORLD_SIZE_SMALL
.halfword 476, 345, OVERWORLD_SIZE_SMALL
.halfword 477, 346, OVERWORLD_SIZE_SMALL
.halfword 478, 347, OVERWORLD_SIZE_SMALL
.halfword 479, 348, OVERWORLD_SIZE_SMALL_NO_SHADOW
.halfword 480, 349, OVERWORLD_SIZE_SMALL_NO_SHADOW
.halfword 481, 350, OVERWORLD_SIZE_SMALL
.halfword 482, 351, OVERWORLD_SIZE_SMALL
.halfword 483, 352, OVERWORLD_SIZE_SMALL
.halfword 484, 353, OVERWORLD_SIZE_SMALL
.halfword 485, 354, OVERWORLD_SIZE_SMALL
.halfword 486, 355, OVERWORLD_SIZE_SMALL
.halfword 487, 356, OVERWORLD_SIZE_SMALL
.halfword 488, 357, OVERWORLD_SIZE_SMALL
.halfword 489, 358, OVERWORLD_SIZE_SMALL
.halfword 490, 359, OVERWORLD_SIZE_SMALL
.halfword 491, 360, OVERWORLD_SIZE_SMALL
.halfword 492, 361, OVERWORLD_SIZE_SMALL
.halfword 493, 362, OVERWORLD_SIZE_SMALL
.halfword 494, 363, OVERWORLD_SIZE_SMALL
.halfword 495, 364, OVERWORLD_SIZE_SMALL
.halfword 496, 365, OVERWORLD_SIZE_SMALL
.halfword 497, 366, OVERWORLD_SIZE_SMALL
.halfword 498, 367, OVERWORLD_SIZE_SMALL
.halfword 499, 368, OVERWORLD_SIZE_SMALL
.halfword 500, 369, OVERWORLD_SIZE_SMALL
.halfword 501, 370, OVERWORLD_SIZE_SMALL
.halfword 502, 371, OVERWORLD_SIZE_SMALL
.halfword 503, 372, OVERWORLD_SIZE_SMALL
.halfword 504, 373, OVERWORLD_SIZE_SMALL
.halfword 505, 374, OVERWORLD_SIZE_SMALL
.halfword 506, 375, OVERWORLD_SIZE_SMALL
.halfword 507, 376, OVERWORLD_SIZE_SMALL
.halfword 508, 377, OVERWORLD_SIZE_SMALL
.halfword 509, 378, OVERWORLD_SIZE_SMALL
.halfword 510, 379, OVERWORLD_SIZE_SMALL
.halfword 511, 380, OVERWORLD_SIZE_SMALL
.halfword 512, 381, OVERWORLD_SIZE_SMALL
.halfword 513, 382, OVERWORLD_SIZE_SMALL
.halfword 514, 383, OVERWORLD_SIZE_SMALL
.halfword 515, 384, OVERWORLD_SIZE_SMALL
.halfword 516, 385, OVERWORLD_SIZE_SMALL
.halfword 517, 386, OVERWORLD_SIZE_SMALL
.halfword 518, 387, OVERWORLD_SIZE_SMALL
.halfword 519, 388, OVERWORLD_SIZE_SMALL
.halfword 520, 389, OVERWORLD_SIZE_SMALL
.halfword 521, 390, OVERWORLD_SIZE_SMALL
.halfword 522, 391, OVERWORLD_SIZE_SMALL
.halfword 523, 392, OVERWORLD_SIZE_SMALL
.halfword 524, 393, OVERWORLD_SIZE_SMALL
.halfword 525, 394, OVERWORLD_SIZE_SMALL
.halfword 526, 395, OVERWORLD_SIZE_SMALL
.halfword 527, 396, OVERWORLD_SIZE_SMALL
.halfword 528, 397, OVERWORLD_SIZE_SMALL
.halfword 529, 398, OVERWORLD_SIZE_SMALL
.halfword 530, 399, OVERWORLD_SIZE_SMALL
.halfword 531, 400, OVERWORLD_SIZE_SMALL
.halfword 532, 401, OVERWORLD_SIZE_SMALL
.halfword 533, 402, OVERWORLD_SIZE_SMALL
.halfword 534, 403, OVERWORLD_SIZE_SMALL
.halfword 535, 404, OVERWORLD_SIZE_SMALL
.halfword 536, 405, OVERWORLD_SIZE_SMALL
.halfword 537, 406, OVERWORLD_SIZE_SMALL
.halfword 538, 407, OVERWORLD_SIZE_SMALL
.halfword 539, 408, OVERWORLD_SIZE_SMALL
.halfword 540, 409, OVERWORLD_SIZE_SMALL
.halfword 541, 410, OVERWORLD_SIZE_SMALL
.halfword 542, 411, OVERWORLD_SIZE_SMALL
.halfword 543, 412, OVERWORLD_SIZE_SMALL
.halfword 544, 413, OVERWORLD_SIZE_SMALL
.halfword 545, 414, OVERWORLD_SIZE_SMALL
.halfword 546, 415, OVERWORLD_SIZE_SMALL
.halfword 547, 416, OVERWORLD_SIZE_SMALL
.halfword 548, 417, OVERWORLD_SIZE_SMALL
.halfword 549, 418, OVERWORLD_SIZE_SMALL
.halfword 550, 419, OVERWORLD_SIZE_SMALL
.halfword 551, 420, OVERWORLD_SIZE_SMALL
.halfword 552, 421, OVERWORLD_SIZE_SMALL
.halfword 553, 422, OVERWORLD_SIZE_SMALL
.halfword 554, 423, OVERWORLD_SIZE_SMALL
.halfword 555, 424, OVERWORLD_SIZE_SMALL
.halfword 556, 425, OVERWORLD_SIZE_SMALL
.halfword 557, 426, OVERWORLD_SIZE_SMALL
.halfword 558, 427, OVERWORLD_SIZE_SMALL
.halfword 559, 428, OVERWORLD_SIZE_SMALL
.halfword 560, 429, OVERWORLD_SIZE_SMALL
.halfword 561, 430, OVERWORLD_SIZE_SMALL
.halfword 562, 431, OVERWORLD_SIZE_SMALL
.halfword 563, 432, OVERWORLD_SIZE_SMALL
.halfword 564, 433, OVERWORLD_SIZE_SMALL
.halfword 565, 434, OVERWORLD_SIZE_SMALL
.halfword 566, 435, OVERWORLD_SIZE_SMALL
.halfword 567, 436, OVERWORLD_SIZE_SMALL
.halfword 568, 437, OVERWORLD_SIZE_SMALL
.halfword 569, 438, OVERWORLD_SIZE_SMALL
.halfword 570, 439, OVERWORLD_SIZE_SMALL
.halfword 571, 440, OVERWORLD_SIZE_SMALL
.halfword 572, 441, OVERWORLD_SIZE_SMALL
.halfword 573, 442, OVERWORLD_SIZE_SMALL
.halfword 574, 443, OVERWORLD_SIZE_SMALL
.halfword 575, 444, OVERWORLD_SIZE_SMALL
.halfword 576, 445, OVERWORLD_SIZE_SMALL
.halfword 577, 446, OVERWORLD_SIZE_SMALL
.halfword 578, 447, OVERWORLD_SIZE_SMALL
.halfword 579, 448, OVERWORLD_SIZE_SMALL
.halfword 580, 449, OVERWORLD_SIZE_SMALL
.halfword 581, 450, OVERWORLD_SIZE_SMALL
.halfword 582, 451, OVERWORLD_SIZE_SMALL
.halfword 583, 452, OVERWORLD_SIZE_SMALL
.halfword 584, 453, OVERWORLD_SIZE_SMALL
.halfword 585, 454, OVERWORLD_SIZE_SMALL
.halfword 586, 455, OVERWORLD_SIZE_SMALL
.halfword 587, 456, OVERWORLD_SIZE_SMALL
.halfword 588, 457, OVERWORLD_SIZE_SMALL
.halfword 589, 458, OVERWORLD_SIZE_SMALL
.halfword 590, 459, OVERWORLD_SIZE_SMALL
.halfword 591, 460, OVERWORLD_SIZE_SMALL
.halfword 592, 461, OVERWORLD_SIZE_SMALL
.halfword 593, 462, OVERWORLD_SIZE_SMALL
.halfword 594, 463, OVERWORLD_SIZE_SMALL
.halfword 595, 464, OVERWORLD_SIZE_SMALL
.halfword 596, 465, OVERWORLD_SIZE_SMALL
.halfword 597, 466, OVERWORLD_SIZE_SMALL
.halfword 598, 467, OVERWORLD_SIZE_SMALL
.halfword 599, 468, OVERWORLD_SIZE_SMALL
.halfword 600, 469, OVERWORLD_SIZE_SMALL
.halfword 601, 470, OVERWORLD_SIZE_SMALL
.halfword 602, 471, OVERWORLD_SIZE_SMALL
.halfword 603, 472, OVERWORLD_SIZE_SMALL
.halfword 604, 473, OVERWORLD_SIZE_SMALL
.halfword 605, 474, OVERWORLD_SIZE_SMALL
.halfword 606, 475, OVERWORLD_SIZE_SMALL
.halfword 607, 476, OVERWORLD_SIZE_SMALL
.halfword 608, 477, OVERWORLD_SIZE_SMALL
.halfword 609, 478, OVERWORLD_SIZE_SMALL
.halfword 610, 479, OVERWORLD_SIZE_SMALL
.halfword 611, 480, OVERWORLD_SIZE_SMALL
.halfword 612, 481, OVERWORLD_SIZE_SMALL
.halfword 613, 482, OVERWORLD_SIZE_SMALL
.halfword 614, 483, OVERWORLD_SIZE_SMALL
.halfword 615, 484, OVERWORLD_SIZE_SMALL
.halfword 616, 485, OVERWORLD_SIZE_SMALL
.halfword 617, 486, OVERWORLD_SIZE_SMALL
.halfword 618, 487, OVERWORLD_SIZE_SMALL
.halfword 619, 488, OVERWORLD_SIZE_SMALL
.halfword 620, 489, OVERWORLD_SIZE_SMALL
.halfword 621, 490, OVERWORLD_SIZE_SMALL
.halfword 622, 491, OVERWORLD_SIZE_SMALL
.halfword 623, 492, OVERWORLD_SIZE_SMALL
.halfword 624, 493, OVERWORLD_SIZE_SMALL
.halfword 625, 494, OVERWORLD_SIZE_SMALL
.halfword 626, 495, OVERWORLD_SIZE_SMALL
.halfword 627, 496, OVERWORLD_SIZE_SMALL
.halfword 628, 497, OVERWORLD_SIZE_SMALL
.halfword 629, 498, OVERWORLD_SIZE_SMALL
.halfword 630, 499, OVERWORLD_SIZE_SMALL
.halfword 631, 500, OVERWORLD_SIZE_SMALL
.halfword 632, 501, OVERWORLD_SIZE_SMALL
.halfword 633, 502, OVERWORLD_SIZE_SMALL
.halfword 634, 503, OVERWORLD_SIZE_SMALL
.halfword 635, 504, OVERWORLD_SIZE_SMALL
.halfword 636, 505, OVERWORLD_SIZE_SMALL
.halfword 637, 506, OVERWORLD_SIZE_SMALL
.halfword 638, 507, OVERWORLD_SIZE_SMALL
.halfword 639, 508, OVERWORLD_SIZE_SMALL
.halfword 640, 509, OVERWORLD_SIZE_SMALL
.halfword 641, 510, OVERWORLD_SIZE_SMALL
.halfword 642, 511, OVERWORLD_SIZE_SMALL
.halfword 643, 512, OVERWORLD_SIZE_SMALL
.halfword 644, 513, OVERWORLD_SIZE_SMALL
.halfword 645, 514, OVERWORLD_SIZE_SMALL
.halfword 646, 515, OVERWORLD_SIZE_SMALL
.halfword 647, 516, OVERWORLD_SIZE_SMALL
.halfword 648, 517, OVERWORLD_SIZE_SMALL
.halfword 649, 518, OVERWORLD_SIZE_SMALL
.halfword 650, 519, OVERWORLD_SIZE_SMALL
.halfword 651, 520, OVERWORLD_SIZE_SMALL
.halfword 652, 521, OVERWORLD_SIZE_SMALL
.halfword 653, 522, OVERWORLD_SIZE_SMALL
.halfword 654, 523, OVERWORLD_SIZE_SMALL
.halfword 655, 524, OVERWORLD_SIZE_SMALL
.halfword 656, 525, OVERWORLD_SIZE_SMALL
.halfword 657, 526, OVERWORLD_SIZE_SMALL
.halfword 658, 527, OVERWORLD_SIZE_SMALL
.halfword 659, 528, OVERWORLD_SIZE_SMALL
.halfword 660, 529, OVERWORLD_SIZE_SMALL
.halfword 661, 530, OVERWORLD_SIZE_SMALL
.halfword 662, 531, OVERWORLD_SIZE_SMALL
.halfword 663, 532, OVERWORLD_SIZE_SMALL
.halfword 664, 533, OVERWORLD_SIZE_SMALL
.halfword 665, 534, OVERWORLD_SIZE_SMALL
.halfword 666, 535, OVERWORLD_SIZE_SMALL
.halfword 667, 536, OVERWORLD_SIZE_LARGE
.halfword 668, 537, OVERWORLD_SIZE_LARGE
.halfword 669, 538, OVERWORLD_SIZE_SMALL
.halfword 670, 539, OVERWORLD_SIZE_SMALL
.halfword 671, 540, OVERWORLD_SIZE_SMALL
.halfword 672, 541, OVERWORLD_SIZE_SMALL
.halfword 673, 542, OVERWORLD_SIZE_SMALL
.halfword 674, 543, OVERWORLD_SIZE_SMALL
.halfword 675, 544, OVERWORLD_SIZE_SMALL
.halfword 676, 545, OVERWORLD_SIZE_SMALL
.halfword 677, 546, OVERWORLD_SIZE_SMALL
.halfword 678, 547, OVERWORLD_SIZE_SMALL
.halfword 679, 548, OVERWORLD_SIZE_SMALL
.halfword 680, 549, OVERWORLD_SIZE_SMALL
.halfword 681, 550, OVERWORLD_SIZE_SMALL
.halfword 682, 551, OVERWORLD_SIZE_SMALL
.halfword 683, 552, OVERWORLD_SIZE_SMALL
.halfword 684, 553, OVERWORLD_SIZE_SMALL
.halfword 685, 554, OVERWORLD_SIZE_SMALL
.halfword 686, 555, OVERWORLD_SIZE_SMALL
.halfword 687, 556, OVERWORLD_SIZE_SMALL
.halfword 688, 557, OVERWORLD_SIZE_SMALL
.halfword 689, 558, OVERWORLD_SIZE_SMALL
.halfword 690, 559, OVERWORLD_SIZE_SMALL
.halfword 691, 560, OVERWORLD_SIZE_SMALL
.halfword 692, 561, OVERWORLD_SIZE_SMALL
.halfword 693, 562, OVERWORLD_SIZE_SMALL
.halfword 694, 563, OVERWORLD_SIZE_SMALL
.halfword 695, 564, OVERWORLD_SIZE_SMALL
.halfword 696, 565, OVERWORLD_SIZE_SMALL
.halfword 697, 566, OVERWORLD_SIZE_SMALL
.halfword 698, 567, OVERWORLD_SIZE_SMALL
.halfword 699, 568, OVERWORLD_SIZE_SMALL
.halfword 700, 569, OVERWORLD_SIZE_SMALL
.halfword 701, 570, OVERWORLD_SIZE_SMALL
.halfword 702, 571, OVERWORLD_SIZE_SMALL
.halfword 703, 572, OVERWORLD_SIZE_SMALL
.halfword 704, 573, OVERWORLD_SIZE_SMALL
.halfword 705, 574, OVERWORLD_SIZE_SMALL
.halfword 706, 575, OVERWORLD_SIZE_SMALL
.halfword 707, 576, OVERWORLD_SIZE_SMALL
.halfword 708, 577, OVERWORLD_SIZE_SMALL
.halfword 709, 578, OVERWORLD_SIZE_SMALL
.halfword 710, 579, OVERWORLD_SIZE_LARGE
.halfword 711, 580, OVERWORLD_SIZE_LARGE
.halfword 712, 581, OVERWORLD_SIZE_SMALL
.halfword 713, 582, OVERWORLD_SIZE_SMALL
.halfword 714, 583, OVERWORLD_SIZE_SMALL
.halfword 715, 584, OVERWORLD_SIZE_SMALL
.halfword 716, 585, OVERWORLD_SIZE_SMALL
.halfword 717, 586, OVERWORLD_SIZE_SMALL
.halfword 718, 587, OVERWORLD_SIZE_SMALL
.halfword 719, 588, OVERWORLD_SIZE_SMALL
.halfword 720, 589, OVERWORLD_SIZE_SMALL
.halfword 721, 590, OVERWORLD_SIZE_SMALL
.halfword 722, 591, OVERWORLD_SIZE_SMALL
.halfword 723, 592, OVERWORLD_SIZE_SMALL
.halfword 724, 593, OVERWORLD_SIZE_SMALL
.halfword 725, 594, OVERWORLD_SIZE_SMALL
.halfword 726, 595, OVERWORLD_SIZE_SMALL
.halfword 727, 596, OVERWORLD_SIZE_SMALL
.halfword 728, 597, OVERWORLD_SIZE_SMALL
.halfword 729, 598, OVERWORLD_SIZE_SMALL
.halfword 730, 599, OVERWORLD_SIZE_SMALL
.halfword 731, 600, OVERWORLD_SIZE_SMALL
.halfword 732, 601, OVERWORLD_SIZE_SMALL
.halfword 733, 602, OVERWORLD_SIZE_SMALL
.halfword 734, 603, OVERWORLD_SIZE_SMALL
.halfword 735, 604, OVERWORLD_SIZE_SMALL
.halfword 736, 605, OVERWORLD_SIZE_SMALL
.halfword 737, 606, OVERWORLD_SIZE_SMALL
.halfword 738, 607, OVERWORLD_SIZE_SMALL
.halfword 739, 608, OVERWORLD_SIZE_SMALL
.halfword 740, 609, OVERWORLD_SIZE_SMALL
.halfword 741, 610, OVERWORLD_SIZE_SMALL
.halfword 742, 611, OVERWORLD_SIZE_SMALL
.halfword 743, 612, OVERWORLD_SIZE_SMALL
.halfword 744, 613, OVERWORLD_SIZE_SMALL
.halfword 745, 614, OVERWORLD_SIZE_SMALL
.halfword 746, 615, OVERWORLD_SIZE_SMALL
.halfword 747, 616, OVERWORLD_SIZE_SMALL
.halfword 748, 617, OVERWORLD_SIZE_SMALL
.halfword 749, 618, OVERWORLD_SIZE_SMALL
.halfword 750, 619, OVERWORLD_SIZE_SMALL
.halfword 751, 620, OVERWORLD_SIZE_SMALL
.halfword 752, 621, OVERWORLD_SIZE_SMALL
.halfword 753, 622, OVERWORLD_SIZE_SMALL
.halfword 754, 623, OVERWORLD_SIZE_SMALL
.halfword 755, 624, OVERWORLD_SIZE_SMALL
.halfword 756, 625, OVERWORLD_SIZE_SMALL
.halfword 757, 626, OVERWORLD_SIZE_SMALL
.halfword 758, 627, OVERWORLD_SIZE_SMALL
.halfword 759, 628, OVERWORLD_SIZE_SMALL
.halfword 760, 629, OVERWORLD_SIZE_SMALL
.halfword 761, 630, OVERWORLD_SIZE_SMALL
.halfword 762, 631, OVERWORLD_SIZE_SMALL
.halfword 763, 632, OVERWORLD_SIZE_SMALL
.halfword 764, 633, OVERWORLD_SIZE_SMALL
.halfword 765, 634, OVERWORLD_SIZE_SMALL
.halfword 766, 635, OVERWORLD_SIZE_SMALL
.halfword 767, 636, OVERWORLD_SIZE_SMALL
.halfword 768, 637, OVERWORLD_SIZE_SMALL
.halfword 769, 638, OVERWORLD_SIZE_SMALL
.halfword 770, 639, OVERWORLD_SIZE_SMALL
.halfword 771, 640, OVERWORLD_SIZE_SMALL
.halfword 772, 641, OVERWORLD_SIZE_SMALL
.halfword 773, 642, OVERWORLD_SIZE_SMALL
.halfword 774, 643, OVERWORLD_SIZE_SMALL
.halfword 775, 644, OVERWORLD_SIZE_SMALL
.halfword 776, 645, OVERWORLD_SIZE_SMALL
.halfword 777, 646, OVERWORLD_SIZE_SMALL
.halfword 778, 647, OVERWORLD_SIZE_SMALL
.halfword 779, 648, OVERWORLD_SIZE_SMALL
.halfword 780, 649, OVERWORLD_SIZE_SMALL
.halfword 781, 650, OVERWORLD_SIZE_SMALL
.halfword 782, 651, OVERWORLD_SIZE_LARGE
.halfword 783, 652, OVERWORLD_SIZE_SMALL
.halfword 784, 653, OVERWORLD_SIZE_SMALL
.halfword 785, 654, OVERWORLD_SIZE_SMALL
.halfword 786, 655, OVERWORLD_SIZE_SMALL
.halfword 787, 656, OVERWORLD_SIZE_SMALL
.halfword 788, 657, OVERWORLD_SIZE_SMALL
.halfword 789, 658, OVERWORLD_SIZE_SMALL
.halfword 790, 659, OVERWORLD_SIZE_SMALL
.halfword 791, 660, OVERWORLD_SIZE_SMALL
.halfword 792, 661, OVERWORLD_SIZE_SMALL
.halfword 793, 662, OVERWORLD_SIZE_SMALL
.halfword 794, 663, OVERWORLD_SIZE_SMALL
.halfword 795, 664, OVERWORLD_SIZE_SMALL
.halfword 796, 665, OVERWORLD_SIZE_SMALL
.halfword 797, 666, OVERWORLD_SIZE_SMALL
.halfword 798, 667, OVERWORLD_SIZE_SMALL
.halfword 799, 668, OVERWORLD_SIZE_SMALL
.halfword 800, 669, OVERWORLD_SIZE_SMALL
.halfword 801, 670, OVERWORLD_SIZE_SMALL
.halfword 802, 671, OVERWORLD_SIZE_SMALL
.halfword 803, 672, OVERWORLD_SIZE_SMALL
.halfword 804, 673, OVERWORLD_SIZE_SMALL
.halfword 805, 674, OVERWORLD_SIZE_SMALL
.halfword 806, 675, OVERWORLD_SIZE_SMALL
.halfword 807, 676, OVERWORLD_SIZE_SMALL
.halfword 808, 677, OVERWORLD_SIZE_SMALL
.halfword 809, 678, OVERWORLD_SIZE_SMALL
.halfword 810, 679, OVERWORLD_SIZE_SMALL
.halfword 811, 680, OVERWORLD_SIZE_SMALL
.halfword 812, 681, OVERWORLD_SIZE_SMALL
.halfword 813, 682, OVERWORLD_SIZE_SMALL
.halfword 814, 683, OVERWORLD_SIZE_SMALL
.halfword 815, 684, OVERWORLD_SIZE_SMALL
.halfword 816, 685, OVERWORLD_SIZE_SMALL
.halfword 817, 686, OVERWORLD_SIZE_SMALL
.halfword 818, 687, OVERWORLD_SIZE_SMALL
.halfword 819, 688, OVERWORLD_SIZE_SMALL
.halfword 820, 689, OVERWORLD_SIZE_SMALL
.halfword 821, 690, OVERWORLD_SIZE_SMALL
.halfword 822, 691, OVERWORLD_SIZE_SMALL
.halfword 823, 692, OVERWORLD_SIZE_SMALL
.halfword 824, 693, OVERWORLD_SIZE_SMALL
.halfword 825, 694, OVERWORLD_SIZE_SMALL
.halfword 826, 695, OVERWORLD_SIZE_SMALL
.halfword 827, 696, OVERWORLD_SIZE_SMALL
.halfword 828, 697, OVERWORLD_SIZE_SMALL
.halfword 829, 698, OVERWORLD_SIZE_SMALL
.halfword 830, 699, OVERWORLD_SIZE_SMALL
.halfword 831, 700, OVERWORLD_SIZE_SMALL
.halfword 832, 701, OVERWORLD_SIZE_SMALL
.halfword 833, 702, OVERWORLD_SIZE_SMALL
.halfword 834, 703, OVERWORLD_SIZE_SMALL
.halfword 835, 704, OVERWORLD_SIZE_SMALL
.halfword 836, 705, OVERWORLD_SIZE_SMALL
.halfword 837, 706, OVERWORLD_SIZE_SMALL
.halfword 838, 707, OVERWORLD_SIZE_SMALL
.halfword 839, 708, OVERWORLD_SIZE_SMALL
.halfword 840, 709, OVERWORLD_SIZE_SMALL
.halfword 841, 710, OVERWORLD_SIZE_SMALL
.halfword 842, 711, OVERWORLD_SIZE_SMALL
.halfword 843, 712, OVERWORLD_SIZE_LARGE
.halfword 844, 713, OVERWORLD_SIZE_LARGE
.halfword 845, 714, OVERWORLD_SIZE_LARGE
.halfword 846, 715, OVERWORLD_SIZE_SMALL
.halfword 847, 716, OVERWORLD_SIZE_SMALL
.halfword 848, 717, OVERWORLD_SIZE_SMALL
.halfword 849, 718, OVERWORLD_SIZE_SMALL
.halfword 850, 719, OVERWORLD_SIZE_SMALL
.halfword 851, 720, OVERWORLD_SIZE_SMALL
.halfword 852, 721, OVERWORLD_SIZE_SMALL
.halfword 853, 722, OVERWORLD_SIZE_SMALL
.halfword 854, 723, OVERWORLD_SIZE_SMALL
.halfword 855, 724, OVERWORLD_SIZE_SMALL
.halfword 856, 725, OVERWORLD_SIZE_SMALL
.halfword 857, 726, OVERWORLD_SIZE_SMALL
.halfword 858, 727, OVERWORLD_SIZE_SMALL
.halfword 859, 728, OVERWORLD_SIZE_SMALL
.halfword 860, 729, OVERWORLD_SIZE_SMALL
.halfword 861, 730, OVERWORLD_SIZE_SMALL
.halfword 862, 731, OVERWORLD_SIZE_SMALL
.halfword 863, 732, OVERWORLD_SIZE_SMALL
.halfword 864, 733, OVERWORLD_SIZE_SMALL
.halfword 865, 734, OVERWORLD_SIZE_SMALL
.halfword 866, 735, OVERWORLD_SIZE_SMALL
.halfword 867, 736, OVERWORLD_SIZE_SMALL
.halfword 868, 737, OVERWORLD_SIZE_SMALL
.halfword 869, 738, OVERWORLD_SIZE_SMALL
.halfword 870, 739, OVERWORLD_SIZE_SMALL
.halfword 871, 740, OVERWORLD_SIZE_SMALL
.halfword 872, 741, OVERWORLD_SIZE_SMALL
.halfword 873, 742, OVERWORLD_SIZE_SMALL
.halfword 874, 743, OVERWORLD_SIZE_SMALL
.halfword 875, 744, OVERWORLD_SIZE_SMALL
.halfword 876, 745, OVERWORLD_SIZE_SMALL
.halfword 877, 746, OVERWORLD_SIZE_SMALL
.halfword 878, 747, OVERWORLD_SIZE_SMALL
.halfword 879, 748, OVERWORLD_SIZE_SMALL
.halfword 880, 749, OVERWORLD_SIZE_SMALL
.halfword 881, 750, OVERWORLD_SIZE_SMALL
.halfword 882, 751, OVERWORLD_SIZE_SMALL
.halfword 883, 752, OVERWORLD_SIZE_SMALL
.halfword 884, 753, OVERWORLD_SIZE_SMALL
.halfword 885, 754, OVERWORLD_SIZE_SMALL
.halfword 886, 755, OVERWORLD_SIZE_SMALL
.halfword 887, 756, OVERWORLD_SIZE_SMALL
.halfword 888, 757, OVERWORLD_SIZE_SMALL
.halfword 889, 758, OVERWORLD_SIZE_SMALL
.halfword 890, 759, OVERWORLD_SIZE_SMALL
.halfword 891, 760, OVERWORLD_SIZE_SMALL
.halfword 892, 761, OVERWORLD_SIZE_SMALL
.halfword 893, 762, OVERWORLD_SIZE_SMALL
.halfword 894, 763, OVERWORLD_SIZE_SMALL
.halfword 895, 764, OVERWORLD_SIZE_SMALL
.halfword 896, 765, OVERWORLD_SIZE_SMALL
.halfword 897, 766, OVERWORLD_SIZE_SMALL
.halfword 898, 767, OVERWORLD_SIZE_SMALL
.halfword 899, 768, OVERWORLD_SIZE_SMALL
.halfword 900, 769, OVERWORLD_SIZE_SMALL
.halfword 901, 770, OVERWORLD_SIZE_SMALL
.halfword 902, 771, OVERWORLD_SIZE_SMALL
.halfword 903, 772, OVERWORLD_SIZE_SMALL
.halfword 904, 773, OVERWORLD_SIZE_SMALL
.halfword 905, 774, OVERWORLD_SIZE_SMALL
.halfword 906, 775, OVERWORLD_SIZE_SMALL
.halfword 907, 776, OVERWORLD_SIZE_SMALL
.halfword 908, 777, OVERWORLD_SIZE_SMALL
.halfword 909, 778, OVERWORLD_SIZE_SMALL
.halfword 910, 779, OVERWORLD_SIZE_SMALL
.halfword 911, 780, OVERWORLD_SIZE_SMALL
.halfword 912, 781, OVERWORLD_SIZE_SMALL
.halfword 913, 782, OVERWORLD_SIZE_SMALL
.halfword 914, 783, OVERWORLD_SIZE_SMALL
.halfword 915, 784, OVERWORLD_SIZE_SMALL
.halfword 916, 785, OVERWORLD_SIZE_SMALL
.halfword 917, 786, OVERWORLD_SIZE_SMALL
.halfword 918, 787, OVERWORLD_SIZE_SMALL
.halfword 919, 788, OVERWORLD_SIZE_SMALL
.halfword 920, 789, OVERWORLD_SIZE_SMALL
.halfword 921, 790, OVERWORLD_SIZE_SMALL
.halfword 922, 791, OVERWORLD_SIZE_SMALL
.halfword 923, 792, OVERWORLD_SIZE_SMALL
.halfword 924, 793, OVERWORLD_SIZE_SMALL
.halfword 925, 794, OVERWORLD_SIZE_SMALL
.halfword 926, 795, OVERWORLD_SIZE_SMALL
.halfword 927, 796, OVERWORLD_SIZE_SMALL
.halfword 928, 797, OVERWORLD_SIZE_SMALL
.halfword 929, 798, OVERWORLD_SIZE_SMALL
.halfword 930, 799, OVERWORLD_SIZE_SMALL
.halfword 931, 800, OVERWORLD_SIZE_SMALL
.halfword 932, 801, OVERWORLD_SIZE_SMALL
.halfword 933, 802, OVERWORLD_SIZE_SMALL
.halfword 934, 803, OVERWORLD_SIZE_SMALL
.halfword 935, 804, OVERWORLD_SIZE_SMALL
.halfword 936, 805, OVERWORLD_SIZE_SMALL
.halfword 937, 806, OVERWORLD_SIZE_SMALL
.halfword 938, 807, OVERWORLD_SIZE_SMALL
.halfword 939, 808, OVERWORLD_SIZE_SMALL
.halfword 940, 809, OVERWORLD_SIZE_SMALL
.halfword 941, 810, OVERWORLD_SIZE_SMALL
.halfword 942, 811, OVERWORLD_SIZE_SMALL
.halfword 943, 812, OVERWORLD_SIZE_SMALL
.halfword 944, 813, OVERWORLD_SIZE_SMALL
.halfword 945, 814, OVERWORLD_SIZE_SMALL
.halfword 946, 815, OVERWORLD_SIZE_SMALL
.halfword 947, 816, OVERWORLD_SIZE_SMALL
.halfword 948, 817, OVERWORLD_SIZE_SMALL
.halfword 949, 818, OVERWORLD_SIZE_SMALL
.halfword 950, 819, OVERWORLD_SIZE_SMALL
.halfword 951, 820, OVERWORLD_SIZE_SMALL
.halfword 952, 821, OVERWORLD_SIZE_SMALL
.halfword 953, 822, OVERWORLD_SIZE_SMALL
.halfword 954, 823, OVERWORLD_SIZE_SMALL
.halfword 955, 824, OVERWORLD_SIZE_SMALL
.halfword 956, 825, OVERWORLD_SIZE_SMALL
.halfword 957, 826, OVERWORLD_SIZE_SMALL
.halfword 958, 827, OVERWORLD_SIZE_SMALL
.halfword 959, 828, OVERWORLD_SIZE_SMALL
.halfword 960, 829, OVERWORLD_SIZE_SMALL
.halfword 961, 830, OVERWORLD_SIZE_SMALL
.halfword 962, 831, OVERWORLD_SIZE_SMALL
.halfword 963, 832, OVERWORLD_SIZE_SMALL
.halfword 964, 833, OVERWORLD_SIZE_LARGE
.halfword 965, 834, OVERWORLD_SIZE_LARGE
.halfword 966, 835, OVERWORLD_SIZE_SMALL
.halfword 967, 836, OVERWORLD_SIZE_LARGE
.halfword 968, 837, OVERWORLD_SIZE_LARGE
.halfword 969, 838, OVERWORLD_SIZE_LARGE
.halfword 970, 839, OVERWORLD_SIZE_SMALL
.halfword 971, 840, OVERWORLD_SIZE_SMALL
.halfword 972, 841, OVERWORLD_SIZE_SMALL
.halfword 973, 842, OVERWORLD_SIZE_SMALL
.halfword 974, 843, OVERWORLD_SIZE_SMALL
.halfword 975, 844, OVERWORLD_SIZE_SMALL
.halfword 976, 845, OVERWORLD_SIZE_LARGE
.halfword 977, 846, OVERWORLD_SIZE_LARGE
.halfword 978, 847, OVERWORLD_SIZE_LARGE
.halfword 979, 848, OVERWORLD_SIZE_LARGE
.halfword 980, 849, OVERWORLD_SIZE_LARGE
.halfword 981, 850, OVERWORLD_SIZE_LARGE
.halfword 982, 851, OVERWORLD_SIZE_LARGE
.halfword 983, 852, OVERWORLD_SIZE_LARGE
.halfword 984, 853, OVERWORLD_SIZE_LARGE
.halfword 985, 854, OVERWORLD_SIZE_LARGE
.halfword 986, 855, OVERWORLD_SIZE_LARGE
.halfword 987, 856, OVERWORLD_SIZE_LARGE
.halfword 988, 857, OVERWORLD_SIZE_LARGE
.halfword 989, 858, OVERWORLD_SIZE_LARGE
.halfword 990, 859, OVERWORLD_SIZE_LARGE
.halfword 991, 860, OVERWORLD_SIZE_LARGE
.halfword 992, 861, OVERWORLD_SIZE_LARGE
.halfword 993, 862, OVERWORLD_SIZE_LARGE
.halfword 994, 863, OVERWORLD_SIZE_SMALL // new tag for victini (will probably just rearrange around the npc mons)

// there are a bunch of tags over 993 for pokemon above my paygrade.  npc mons/pokeathlon mons? might be wrecked

.endarea

.halfword 0xFFFF

.close


// now there is one final thing to take care of:  narc a141.
// personal suspicion is that the OVERWORLD_BOUNCE field does not purely handle overworld bounce

overworlddata   0, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata   1, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata   2, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata   3, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata   4, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata   5, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata   6, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata   7, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata   8, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata   9, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata  10, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata  11, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata  12, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata  13, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata  14, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata  15, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata  16, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata  17, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata  18, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata  19, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata  20, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata  21, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata  22, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata  23, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata  24, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata  25, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata  26, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata  27, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata  28, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata  29, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata  30, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata  31, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata  32, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata  33, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata  34, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata  35, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata  36, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata  37, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata  38, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata  39, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata  40, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata  41, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata  42, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata  43, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata  44, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata  45, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata  46, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata  47, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata  48, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata  49, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata  50, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata  51, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata  52, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata  53, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata  54, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata  55, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata  56, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata  57, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata  58, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata  59, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata  60, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata  61, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata  62, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata  63, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata  64, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata  65, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata  66, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata  67, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata  68, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata  69, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata  70, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata  71, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata  72, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata  73, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata  74, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata  75, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata  76, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata  77, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata  78, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata  79, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata  80, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata  81, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata  82, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata  83, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata  84, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata  85, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata  86, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata  87, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata  88, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata  89, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata  90, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata  91, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata  92, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata  93, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata  94, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata  95, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata  96, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata  97, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata  98, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata  99, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 100, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 101, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 102, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 103, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 104, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 105, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 106, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 107, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 108, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 109, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 110, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata 111, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata 112, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 113, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 114, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 115, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 116, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 117, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata 118, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata 119, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata 120, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata 121, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 122, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 123, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 124, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 125, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 126, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 127, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 128, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 129, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 130, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 131, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata 132, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata 133, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 134, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 135, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 136, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 137, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 138, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata 139, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 140, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 141, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata 142, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 143, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata 144, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 145, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata 146, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata 147, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata 148, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 149, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 150, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata 151, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 152, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata 153, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 154, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 155, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 156, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 157, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 158, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 159, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 160, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 161, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 162, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 163, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 164, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 165, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 166, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata 167, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata 168, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata 169, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 170, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 171, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata 172, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata 173, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata 174, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 175, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 176, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 177, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 178, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 179, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata 180, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 181, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 182, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 183, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 184, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 185, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 186, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 187, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 188, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 189, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 190, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata 191, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata 192, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata 193, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 194, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 195, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 196, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata 197, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 198, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 199, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 200, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 201, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 202, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 203, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata 204, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata 205, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata 206, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata 207, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata 208, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata 209, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata 210, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata 211, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata 212, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata 213, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata 214, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata 215, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata 216, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata 217, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata 218, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata 219, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata 220, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata 221, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata 222, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata 223, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata 224, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata 225, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata 226, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata 227, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata 228, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata 229, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata 230, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata 231, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata 232, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 233, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 234, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 235, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 236, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 237, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 238, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata 239,  OVERWORLD_NO_ENTRY,                    01
overworlddata 240,  OVERWORLD_NO_ENTRY,                    01
overworlddata 241, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 242, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 243, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata 244, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 245, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 246, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 247, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 248, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 249, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 250, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 251, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 252, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 253, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 254, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 255, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 256, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata 257, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 258, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 259, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata 260, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata 261, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 262, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 263, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata 264, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 265, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 266, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata 267, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 268, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 269, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 270, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 271, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 272, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 273, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 274, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 275, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 276, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 277, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 278, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 279, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 280, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 281, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 282,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW
overworlddata 283,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW
overworlddata 284, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata 285, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 286, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 287, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 288, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 289, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 290, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 291, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 292, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 293, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 294, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 295, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 296, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 297, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 298, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 299, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 300, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata 301, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 302, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata 303, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 304, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 305, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 306, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 307, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 308, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 309, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 310, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata 311, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata 312, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata 313, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 314, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 315, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 316, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata 317, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata 318, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 319, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 320, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 321, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 322, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 323, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 324, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata 325, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata 326, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 327, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 328, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 329, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 330, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 331, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 332, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 333, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 334, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 335, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 336, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 337, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 338, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 339, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 340, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata 341, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 342, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 343, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 344, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 345, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 346, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata 347, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata 348, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 349, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 350, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 351, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata 352, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata 353, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata 354,  OVERWORLD_NO_ENTRY,  OVERWORLD_BOUNCE_MED
overworlddata 355, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 356, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 357, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 358, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 359, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 360, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 361, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 362, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata 363, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata 364, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 365, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 366, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata 367, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata 368, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 369, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 370, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata 371, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata 372, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 373, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata 374, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 375, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 376, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata 377, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata 378, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 379, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 380, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata 381, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 382, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata 383, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata 384, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata 385, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 386, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata 387, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 388, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata 389, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 390, OVERWORLD_CAN_ENTER,                    01
overworlddata 391, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata 392, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 393, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 394, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 395, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 396, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 397, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 398, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 399, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata 400, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata 401, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata 402, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata 403, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata 404, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 405, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 406, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 407, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata 408, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata 409, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 410, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 411, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 412, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 413, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata 414, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata 415,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW
overworlddata 416,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_FAST
overworlddata 417,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW
overworlddata 418, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata 419, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata 420, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata 421, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata 422, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata 423, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 424, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 425, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 426, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 427, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 428, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 429, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 430, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 431, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 432, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 433, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata 434, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata 435, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 436, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 437, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 438, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 439, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 440, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 441, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 442, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 443, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 444, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 445, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 446, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 447, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 448, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 449, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 450, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 451, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 452, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 453, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 454, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata 455, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata 456, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata 457, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata 458, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 459, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 460, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 461, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 462, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 463, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 464, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 465, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 466, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 467, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 468, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata 469, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata 470, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 471, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 472, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata 473, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 474, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 475, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 476, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 477, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 478, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 479, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata 480, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata 481, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 482, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 483, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 484, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 485, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata 486, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 487, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 488, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 489, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 490, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 491, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 492, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 493, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 494, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 495, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 496, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 497, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 498, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 499, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 500, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 501, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 502, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 503, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata 504, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata 505, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata 506, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata 507, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 508, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 509, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 510, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata 511, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 512, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 513, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 514, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 515, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 516, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata 517, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata 518, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 519, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 520, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata 521, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 522, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata 523, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 524, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 525, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 526, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata 527, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata 528, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 529, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 530, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 531, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 532, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 533, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata 534, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata 535, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata 536,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_FAST
overworlddata 537,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_FAST
overworlddata 538, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 539,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_FAST
overworlddata 540,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_FAST
overworlddata 541,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW
overworlddata 542, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata 543, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 544, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 545, OVERWORLD_CAN_ENTER,  OVERWORLD_BOUNCE_MED
overworlddata 546, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST
overworlddata 547, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_SLOW
overworlddata 548,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW
overworlddata 549,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW
overworlddata 550,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW
overworlddata 551,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW
overworlddata 552,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW
overworlddata 553,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW
overworlddata 554,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW
overworlddata 555,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW
overworlddata 556,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW
overworlddata 557,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW
overworlddata 558,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW
overworlddata 559,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW
overworlddata 560,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW
overworlddata 561,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW
overworlddata 562,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW
overworlddata 563,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW
overworlddata 564,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW
overworlddata 565,  OVERWORLD_NO_ENTRY, OVERWORLD_BOUNCE_SLOW
overworlddata 566, OVERWORLD_CAN_ENTER, OVERWORLD_BOUNCE_FAST // new file for victini
