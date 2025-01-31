.nds
.thumb

.include "include/config.s"
.include "include/constants.s"
.include "include/monnums.s"
.include "asm/icons.s"

.if (fileexists("a028/8_0"))
    .open "a028/8_0", 0x023C8000
.else
    .create "a028/8_0", 0x023C8000
.endif

.orga START_ADDRESS + ((NUM_OF_MONS+1) * 2) + ((NUM_OF_MON_OVERWORLDS + 450) * 6)

// the icon palette table maps each icon to which of the 3 icon palettes

.align

.area (NUM_OF_MONS+1), 0xFF // +1 to account for SPECIES_NONE

gIconPalTable:
/* SPECIES_NONE            */ .byte 00
/* SPECIES_BULBASAUR       */ .byte 01
/* SPECIES_IVYSAUR         */ .byte 01
/* SPECIES_VENUSAUR        */ .byte 01
/* SPECIES_CHARMANDER      */ .byte 00
/* SPECIES_CHARMELEON      */ .byte 00
/* SPECIES_CHARIZARD       */ .byte 00
/* SPECIES_SQUIRTLE        */ .byte 00
/* SPECIES_WARTORTLE       */ .byte 02
/* SPECIES_BLASTOISE       */ .byte 02
/* SPECIES_CATERPIE        */ .byte 01
/* SPECIES_METAPOD         */ .byte 01
/* SPECIES_BUTTERFREE      */ .byte 00
/* SPECIES_WEEDLE          */ .byte 01
/* SPECIES_KAKUNA          */ .byte 02
/* SPECIES_BEEDRILL        */ .byte 02
/* SPECIES_PIDGEY          */ .byte 00
/* SPECIES_PIDGEOTTO       */ .byte 00
/* SPECIES_PIDGEOT         */ .byte 00
/* SPECIES_RATTATA         */ .byte 02
/* SPECIES_RATICATE        */ .byte 01
/* SPECIES_SPEAROW         */ .byte 00
/* SPECIES_FEAROW          */ .byte 00
/* SPECIES_EKANS           */ .byte 02
/* SPECIES_ARBOK           */ .byte 02
/* SPECIES_PIKACHU         */ .byte 02
/* SPECIES_RAICHU          */ .byte 00
/* SPECIES_SANDSHREW       */ .byte 02
/* SPECIES_SANDSLASH       */ .byte 02
/* SPECIES_NIDORAN_F       */ .byte 02
/* SPECIES_NIDORINA        */ .byte 02
/* SPECIES_NIDOQUEEN       */ .byte 02
/* SPECIES_NIDORAN_M       */ .byte 02
/* SPECIES_NIDORINO        */ .byte 02
/* SPECIES_NIDOKING        */ .byte 02
/* SPECIES_CLEFAIRY        */ .byte 00
/* SPECIES_CLEFABLE        */ .byte 00
/* SPECIES_VULPIX          */ .byte 02
/* SPECIES_NINETALES       */ .byte 01
/* SPECIES_JIGGLYPUFF      */ .byte 00
/* SPECIES_WIGGLYTUFF      */ .byte 00
/* SPECIES_ZUBAT           */ .byte 02
/* SPECIES_GOLBAT          */ .byte 02
/* SPECIES_ODDISH          */ .byte 01
/* SPECIES_GLOOM           */ .byte 00
/* SPECIES_VILEPLUME       */ .byte 00
/* SPECIES_PARAS           */ .byte 00
/* SPECIES_PARASECT        */ .byte 00
/* SPECIES_VENONAT         */ .byte 00
/* SPECIES_VENOMOTH        */ .byte 02
/* SPECIES_DIGLETT         */ .byte 02
/* SPECIES_DUGTRIO         */ .byte 02
/* SPECIES_MEOWTH          */ .byte 01
/* SPECIES_PERSIAN         */ .byte 01
/* SPECIES_PSYDUCK         */ .byte 01
/* SPECIES_GOLDUCK         */ .byte 02
/* SPECIES_MANKEY          */ .byte 01
/* SPECIES_PRIMEAPE        */ .byte 02
/* SPECIES_GROWLITHE       */ .byte 00
/* SPECIES_ARCANINE        */ .byte 00
/* SPECIES_POLIWAG         */ .byte 00
/* SPECIES_POLIWHIRL       */ .byte 00
/* SPECIES_POLIWRATH       */ .byte 00
/* SPECIES_ABRA            */ .byte 02
/* SPECIES_KADABRA         */ .byte 02
/* SPECIES_ALAKAZAM        */ .byte 02
/* SPECIES_MACHOP          */ .byte 00
/* SPECIES_MACHOKE         */ .byte 02
/* SPECIES_MACHAMP         */ .byte 00
/* SPECIES_BELLSPROUT      */ .byte 01
/* SPECIES_WEEPINBELL      */ .byte 01
/* SPECIES_VICTREEBEL      */ .byte 01
/* SPECIES_TENTACOOL       */ .byte 02
/* SPECIES_TENTACRUEL      */ .byte 02
/* SPECIES_GEODUDE         */ .byte 01
/* SPECIES_GRAVELER        */ .byte 01
/* SPECIES_GOLEM           */ .byte 01
/* SPECIES_PONYTA          */ .byte 00
/* SPECIES_RAPIDASH        */ .byte 00
/* SPECIES_SLOWPOKE        */ .byte 00
/* SPECIES_SLOWBRO         */ .byte 00
/* SPECIES_MAGNEMITE       */ .byte 00
/* SPECIES_MAGNETON        */ .byte 00
/* SPECIES_FARFETCHD       */ .byte 01
/* SPECIES_DODUO           */ .byte 02
/* SPECIES_DODRIO          */ .byte 02
/* SPECIES_SEEL            */ .byte 02
/* SPECIES_DEWGONG         */ .byte 02
/* SPECIES_GRIMER          */ .byte 02
/* SPECIES_MUK             */ .byte 02
/* SPECIES_SHELLDER        */ .byte 02
/* SPECIES_CLOYSTER        */ .byte 02
/* SPECIES_GASTLY          */ .byte 02
/* SPECIES_HAUNTER         */ .byte 02
/* SPECIES_GENGAR          */ .byte 02
/* SPECIES_ONIX            */ .byte 02
/* SPECIES_DROWZEE         */ .byte 02
/* SPECIES_HYPNO           */ .byte 01
/* SPECIES_KRABBY          */ .byte 02
/* SPECIES_KINGLER         */ .byte 02
/* SPECIES_VOLTORB         */ .byte 00
/* SPECIES_ELECTRODE       */ .byte 00
/* SPECIES_EXEGGCUTE       */ .byte 00
/* SPECIES_EXEGGUTOR       */ .byte 01
/* SPECIES_CUBONE          */ .byte 01
/* SPECIES_MAROWAK         */ .byte 01
/* SPECIES_HITMONLEE       */ .byte 02
/* SPECIES_HITMONCHAN      */ .byte 02
/* SPECIES_LICKITUNG       */ .byte 01
/* SPECIES_KOFFING         */ .byte 02
/* SPECIES_WEEZING         */ .byte 02
/* SPECIES_RHYHORN         */ .byte 01
/* SPECIES_RHYDON          */ .byte 01
/* SPECIES_CHANSEY         */ .byte 00
/* SPECIES_TANGELA         */ .byte 00
/* SPECIES_KANGASKHAN      */ .byte 01
/* SPECIES_HORSEA          */ .byte 00
/* SPECIES_SEADRA          */ .byte 00
/* SPECIES_GOLDEEN         */ .byte 00
/* SPECIES_SEAKING         */ .byte 00
/* SPECIES_STARYU          */ .byte 02
/* SPECIES_STARMIE         */ .byte 02
/* SPECIES_MR_MIME         */ .byte 00
/* SPECIES_SCYTHER         */ .byte 01
/* SPECIES_JYNX            */ .byte 02
/* SPECIES_ELECTABUZZ      */ .byte 01
/* SPECIES_MAGMAR          */ .byte 00
/* SPECIES_PINSIR          */ .byte 02
/* SPECIES_TAUROS          */ .byte 02
/* SPECIES_MAGIKARP        */ .byte 00
/* SPECIES_GYARADOS        */ .byte 00
/* SPECIES_LAPRAS          */ .byte 02
/* SPECIES_DITTO           */ .byte 02
/* SPECIES_EEVEE           */ .byte 02
/* SPECIES_VAPOREON        */ .byte 00
/* SPECIES_JOLTEON         */ .byte 00
/* SPECIES_FLAREON         */ .byte 00
/* SPECIES_PORYGON         */ .byte 00
/* SPECIES_OMANYTE         */ .byte 00
/* SPECIES_OMASTAR         */ .byte 00
/* SPECIES_KABUTO          */ .byte 02
/* SPECIES_KABUTOPS        */ .byte 02
/* SPECIES_AERODACTYL      */ .byte 00
/* SPECIES_SNORLAX         */ .byte 01
/* SPECIES_ARTICUNO        */ .byte 00
/* SPECIES_ZAPDOS          */ .byte 00
/* SPECIES_MOLTRES         */ .byte 00
/* SPECIES_DRATINI         */ .byte 00
/* SPECIES_DRAGONAIR       */ .byte 00
/* SPECIES_DRAGONITE       */ .byte 02
/* SPECIES_MEWTWO          */ .byte 02
/* SPECIES_MEW             */ .byte 00
/* SPECIES_CHIKORITA       */ .byte 01
/* SPECIES_BAYLEEF         */ .byte 01
/* SPECIES_MEGANIUM        */ .byte 01
/* SPECIES_CYNDAQUIL       */ .byte 01
/* SPECIES_QUILAVA         */ .byte 01
/* SPECIES_TYPHLOSION      */ .byte 01
/* SPECIES_TOTODILE        */ .byte 02
/* SPECIES_CROCONAW        */ .byte 02
/* SPECIES_FERALIGATR      */ .byte 02
/* SPECIES_SENTRET         */ .byte 02
/* SPECIES_FURRET          */ .byte 02
/* SPECIES_HOOTHOOT        */ .byte 02
/* SPECIES_NOCTOWL         */ .byte 02
/* SPECIES_LEDYBA          */ .byte 00
/* SPECIES_LEDIAN          */ .byte 00
/* SPECIES_SPINARAK        */ .byte 01
/* SPECIES_ARIADOS         */ .byte 00
/* SPECIES_CROBAT          */ .byte 02
/* SPECIES_CHINCHOU        */ .byte 02
/* SPECIES_LANTURN         */ .byte 00
/* SPECIES_PICHU           */ .byte 00
/* SPECIES_CLEFFA          */ .byte 00
/* SPECIES_IGGLYBUFF       */ .byte 01
/* SPECIES_TOGEPI          */ .byte 02
/* SPECIES_TOGETIC         */ .byte 02
/* SPECIES_NATU            */ .byte 00
/* SPECIES_XATU            */ .byte 00
/* SPECIES_MAREEP          */ .byte 02
/* SPECIES_FLAAFFY         */ .byte 00
/* SPECIES_AMPHAROS        */ .byte 00
/* SPECIES_BELLOSSOM       */ .byte 01
/* SPECIES_MARILL          */ .byte 02
/* SPECIES_AZUMARILL       */ .byte 02
/* SPECIES_SUDOWOODO       */ .byte 01
/* SPECIES_POLITOED        */ .byte 01
/* SPECIES_HOPPIP          */ .byte 01
/* SPECIES_SKIPLOOM        */ .byte 01
/* SPECIES_JUMPLUFF        */ .byte 02
/* SPECIES_AIPOM           */ .byte 02
/* SPECIES_SUNKERN         */ .byte 01
/* SPECIES_SUNFLORA        */ .byte 01
/* SPECIES_YANMA           */ .byte 01
/* SPECIES_WOOPER          */ .byte 00
/* SPECIES_QUAGSIRE        */ .byte 00
/* SPECIES_ESPEON          */ .byte 02
/* SPECIES_UMBREON         */ .byte 02
/* SPECIES_MURKROW         */ .byte 02
/* SPECIES_SLOWKING        */ .byte 00
/* SPECIES_MISDREAVUS      */ .byte 00
/* SPECIES_UNOWN           */ .byte 00
/* SPECIES_WOBBUFFET       */ .byte 00
/* SPECIES_GIRAFARIG       */ .byte 01
/* SPECIES_PINECO          */ .byte 00
/* SPECIES_FORRETRESS      */ .byte 02
/* SPECIES_DUNSPARCE       */ .byte 02
/* SPECIES_GLIGAR          */ .byte 02
/* SPECIES_STEELIX         */ .byte 00
/* SPECIES_SNUBBULL        */ .byte 00
/* SPECIES_GRANBULL        */ .byte 02
/* SPECIES_QWILFISH        */ .byte 00
/* SPECIES_SCIZOR          */ .byte 00
/* SPECIES_SHUCKLE         */ .byte 01
/* SPECIES_HERACROSS       */ .byte 02
/* SPECIES_SNEASEL         */ .byte 00
/* SPECIES_TEDDIURSA       */ .byte 00
/* SPECIES_URSARING        */ .byte 02
/* SPECIES_SLUGMA          */ .byte 00
/* SPECIES_MAGCARGO        */ .byte 00
/* SPECIES_SWINUB          */ .byte 02
/* SPECIES_PILOSWINE       */ .byte 02
/* SPECIES_CORSOLA         */ .byte 00
/* SPECIES_REMORAID        */ .byte 00
/* SPECIES_OCTILLERY       */ .byte 00
/* SPECIES_DELIBIRD        */ .byte 00
/* SPECIES_MANTINE         */ .byte 02
/* SPECIES_SKARMORY        */ .byte 00
/* SPECIES_HOUNDOUR        */ .byte 00
/* SPECIES_HOUNDOOM        */ .byte 00
/* SPECIES_KINGDRA         */ .byte 00
/* SPECIES_PHANPY          */ .byte 00
/* SPECIES_DONPHAN         */ .byte 00
/* SPECIES_PORYGON2        */ .byte 00
/* SPECIES_STANTLER        */ .byte 02
/* SPECIES_SMEARGLE        */ .byte 01
/* SPECIES_TYROGUE         */ .byte 02
/* SPECIES_HITMONTOP       */ .byte 02
/* SPECIES_SMOOCHUM        */ .byte 01
/* SPECIES_ELEKID          */ .byte 01
/* SPECIES_MAGBY           */ .byte 01
/* SPECIES_MILTANK         */ .byte 01
/* SPECIES_BLISSEY         */ .byte 01
/* SPECIES_RAIKOU          */ .byte 00
/* SPECIES_ENTEI           */ .byte 02
/* SPECIES_SUICUNE         */ .byte 00
/* SPECIES_LARVITAR        */ .byte 01
/* SPECIES_PUPITAR         */ .byte 00
/* SPECIES_TYRANITAR       */ .byte 01
/* SPECIES_LUGIA           */ .byte 00
/* SPECIES_HO_OH           */ .byte 01
/* SPECIES_CELEBI          */ .byte 01
/* SPECIES_TREECKO         */ .byte 01
/* SPECIES_GROVYLE         */ .byte 00
/* SPECIES_SCEPTILE        */ .byte 01
/* SPECIES_TORCHIC         */ .byte 00
/* SPECIES_COMBUSKEN       */ .byte 00
/* SPECIES_BLAZIKEN        */ .byte 00
/* SPECIES_MUDKIP          */ .byte 00
/* SPECIES_MARSHTOMP       */ .byte 00
/* SPECIES_SWAMPERT        */ .byte 00
/* SPECIES_POOCHYENA       */ .byte 02
/* SPECIES_MIGHTYENA       */ .byte 02
/* SPECIES_ZIGZAGOON       */ .byte 02
/* SPECIES_LINOONE         */ .byte 02
/* SPECIES_WURMPLE         */ .byte 00
/* SPECIES_SILCOON         */ .byte 02
/* SPECIES_BEAUTIFLY       */ .byte 00
/* SPECIES_CASCOON         */ .byte 02
/* SPECIES_DUSTOX          */ .byte 01
/* SPECIES_LOTAD           */ .byte 01
/* SPECIES_LOMBRE          */ .byte 01
/* SPECIES_LUDICOLO        */ .byte 01
/* SPECIES_SEEDOT          */ .byte 01
/* SPECIES_NUZLEAF         */ .byte 01
/* SPECIES_SHIFTRY         */ .byte 00
/* SPECIES_TAILLOW         */ .byte 02
/* SPECIES_SWELLOW         */ .byte 02
/* SPECIES_WINGULL         */ .byte 00
/* SPECIES_PELIPPER        */ .byte 00
/* SPECIES_RALTS           */ .byte 01
/* SPECIES_KIRLIA          */ .byte 01
/* SPECIES_GARDEVOIR       */ .byte 01
/* SPECIES_SURSKIT         */ .byte 02
/* SPECIES_MASQUERAIN      */ .byte 00
/* SPECIES_SHROOMISH       */ .byte 01
/* SPECIES_BRELOOM         */ .byte 01
/* SPECIES_SLAKOTH         */ .byte 02
/* SPECIES_VIGOROTH        */ .byte 02
/* SPECIES_SLAKING         */ .byte 01
/* SPECIES_NINCADA         */ .byte 01
/* SPECIES_NINJASK         */ .byte 01
/* SPECIES_SHEDINJA        */ .byte 01
/* SPECIES_WHISMUR         */ .byte 00
/* SPECIES_LOUDRED         */ .byte 02
/* SPECIES_EXPLOUD         */ .byte 02
/* SPECIES_MAKUHITA        */ .byte 02
/* SPECIES_HARIYAMA        */ .byte 01
/* SPECIES_AZURILL         */ .byte 02
/* SPECIES_NOSEPASS        */ .byte 00
/* SPECIES_SKITTY          */ .byte 00
/* SPECIES_DELCATTY        */ .byte 02
/* SPECIES_SABLEYE         */ .byte 02
/* SPECIES_MAWILE          */ .byte 02
/* SPECIES_ARON            */ .byte 02
/* SPECIES_LAIRON          */ .byte 02
/* SPECIES_AGGRON          */ .byte 02
/* SPECIES_MEDITITE        */ .byte 00
/* SPECIES_MEDICHAM        */ .byte 00
/* SPECIES_ELECTRIKE       */ .byte 01
/* SPECIES_MANECTRIC       */ .byte 00
/* SPECIES_PLUSLE          */ .byte 00
/* SPECIES_MINUN           */ .byte 00
/* SPECIES_VOLBEAT         */ .byte 00
/* SPECIES_ILLUMISE        */ .byte 02
/* SPECIES_ROSELIA         */ .byte 00
/* SPECIES_GULPIN          */ .byte 01
/* SPECIES_SWALOT          */ .byte 02
/* SPECIES_CARVANHA        */ .byte 00
/* SPECIES_SHARPEDO        */ .byte 00
/* SPECIES_WAILMER         */ .byte 02
/* SPECIES_WAILORD         */ .byte 00
/* SPECIES_NUMEL           */ .byte 01
/* SPECIES_CAMERUPT        */ .byte 00
/* SPECIES_TORKOAL         */ .byte 01
/* SPECIES_SPOINK          */ .byte 00
/* SPECIES_GRUMPIG         */ .byte 02
/* SPECIES_SPINDA          */ .byte 01
/* SPECIES_TRAPINCH        */ .byte 01
/* SPECIES_VIBRAVA         */ .byte 01
/* SPECIES_FLYGON          */ .byte 01
/* SPECIES_CACNEA          */ .byte 01
/* SPECIES_CACTURNE        */ .byte 01
/* SPECIES_SWABLU          */ .byte 00
/* SPECIES_ALTARIA         */ .byte 00
/* SPECIES_ZANGOOSE        */ .byte 00
/* SPECIES_SEVIPER         */ .byte 02
/* SPECIES_LUNATONE        */ .byte 01
/* SPECIES_SOLROCK         */ .byte 00
/* SPECIES_BARBOACH        */ .byte 00
/* SPECIES_WHISCASH        */ .byte 00
/* SPECIES_CORPHISH        */ .byte 00
/* SPECIES_CRAWDAUNT       */ .byte 00
/* SPECIES_BALTOY          */ .byte 01
/* SPECIES_CLAYDOL         */ .byte 00
/* SPECIES_LILEEP          */ .byte 02
/* SPECIES_CRADILY         */ .byte 00
/* SPECIES_ANORITH         */ .byte 00
/* SPECIES_ARMALDO         */ .byte 00
/* SPECIES_FEEBAS          */ .byte 02
/* SPECIES_MILOTIC         */ .byte 00
/* SPECIES_CASTFORM        */ .byte 00
/* SPECIES_KECLEON         */ .byte 01
/* SPECIES_SHUPPET         */ .byte 00
/* SPECIES_BANETTE         */ .byte 00
/* SPECIES_DUSKULL         */ .byte 00
/* SPECIES_DUSCLOPS        */ .byte 00
/* SPECIES_TROPIUS         */ .byte 01
/* SPECIES_CHIMECHO        */ .byte 00
/* SPECIES_ABSOL           */ .byte 00
/* SPECIES_WYNAUT          */ .byte 00
/* SPECIES_SNORUNT         */ .byte 02
/* SPECIES_GLALIE          */ .byte 00
/* SPECIES_SPHEAL          */ .byte 02
/* SPECIES_SEALEO          */ .byte 02
/* SPECIES_WALREIN         */ .byte 00
/* SPECIES_CLAMPERL        */ .byte 00
/* SPECIES_HUNTAIL         */ .byte 00
/* SPECIES_GOREBYSS        */ .byte 00
/* SPECIES_RELICANTH       */ .byte 01
/* SPECIES_LUVDISC         */ .byte 00
/* SPECIES_BAGON           */ .byte 02
/* SPECIES_SHELGON         */ .byte 02
/* SPECIES_SALAMENCE       */ .byte 00
/* SPECIES_BELDUM          */ .byte 00
/* SPECIES_METANG          */ .byte 00
/* SPECIES_METAGROSS       */ .byte 00
/* SPECIES_REGIROCK        */ .byte 02
/* SPECIES_REGICE          */ .byte 02
/* SPECIES_REGISTEEL       */ .byte 00
/* SPECIES_LATIAS          */ .byte 00
/* SPECIES_LATIOS          */ .byte 02
/* SPECIES_KYOGRE          */ .byte 02
/* SPECIES_GROUDON         */ .byte 00
/* SPECIES_RAYQUAZA        */ .byte 01
/* SPECIES_JIRACHI         */ .byte 00
/* SPECIES_DEOXYS          */ .byte 00
/* SPECIES_TURTWIG         */ .byte 01
/* SPECIES_GROTLE          */ .byte 01
/* SPECIES_TORTERRA        */ .byte 01
/* SPECIES_CHIMCHAR        */ .byte 01
/* SPECIES_MONFERNO        */ .byte 00
/* SPECIES_INFERNAPE       */ .byte 00
/* SPECIES_PIPLUP          */ .byte 02
/* SPECIES_PRINPLUP        */ .byte 02
/* SPECIES_EMPOLEON        */ .byte 00
/* SPECIES_STARLY          */ .byte 00
/* SPECIES_STARAVIA        */ .byte 00
/* SPECIES_STARAPTOR       */ .byte 00
/* SPECIES_BIDOOF          */ .byte 02
/* SPECIES_BIBAREL         */ .byte 02
/* SPECIES_KRICKETOT       */ .byte 00
/* SPECIES_KRICKETUNE      */ .byte 00
/* SPECIES_SHINX           */ .byte 00
/* SPECIES_LUXIO           */ .byte 00
/* SPECIES_LUXRAY          */ .byte 00
/* SPECIES_BUDEW           */ .byte 01
/* SPECIES_ROSERADE        */ .byte 00
/* SPECIES_CRANIDOS        */ .byte 00
/* SPECIES_RAMPARDOS       */ .byte 00
/* SPECIES_SHIELDON        */ .byte 01
/* SPECIES_BASTIODON       */ .byte 01
/* SPECIES_BURMY           */ .byte 01
/* SPECIES_WORMADAM        */ .byte 01
/* SPECIES_MOTHIM          */ .byte 00
/* SPECIES_COMBEE          */ .byte 00
/* SPECIES_VESPIQUEN       */ .byte 00
/* SPECIES_PACHIRISU       */ .byte 00
/* SPECIES_BUIZEL          */ .byte 00
/* SPECIES_FLOATZEL        */ .byte 00
/* SPECIES_CHERUBI         */ .byte 01
/* SPECIES_CHERRIM         */ .byte 00
/* SPECIES_SHELLOS         */ .byte 00
/* SPECIES_GASTRODON       */ .byte 00
/* SPECIES_AMBIPOM         */ .byte 02
/* SPECIES_DRIFLOON        */ .byte 02
/* SPECIES_DRIFBLIM        */ .byte 02
/* SPECIES_BUNEARY         */ .byte 02
/* SPECIES_LOPUNNY         */ .byte 02
/* SPECIES_MISMAGIUS       */ .byte 00
/* SPECIES_HONCHKROW       */ .byte 01
/* SPECIES_GLAMEOW         */ .byte 00
/* SPECIES_PURUGLY         */ .byte 02
/* SPECIES_CHINGLING       */ .byte 00
/* SPECIES_STUNKY          */ .byte 02
/* SPECIES_SKUNTANK        */ .byte 02
/* SPECIES_BRONZOR         */ .byte 00
/* SPECIES_BRONZONG        */ .byte 00
/* SPECIES_BONSLY          */ .byte 01
/* SPECIES_MIMEJR          */ .byte 00
/* SPECIES_HAPPINY         */ .byte 00
/* SPECIES_CHATOT          */ .byte 00
/* SPECIES_SPIRITOMB       */ .byte 00
/* SPECIES_GIBLE           */ .byte 00
/* SPECIES_GABITE          */ .byte 00
/* SPECIES_GARCHOMP        */ .byte 00
/* SPECIES_MUNCHLAX        */ .byte 02
/* SPECIES_RIOLU           */ .byte 02
/* SPECIES_LUCARIO         */ .byte 02
/* SPECIES_HIPPOPOTAS      */ .byte 01
/* SPECIES_HIPPOWDON       */ .byte 01
/* SPECIES_SKORUPI         */ .byte 00
/* SPECIES_DRAPION         */ .byte 02
/* SPECIES_CROAGUNK        */ .byte 00
/* SPECIES_TOXICROAK       */ .byte 00
/* SPECIES_CARNIVINE       */ .byte 01
/* SPECIES_FINNEON         */ .byte 00
/* SPECIES_LUMINEON        */ .byte 00
/* SPECIES_MANTYKE         */ .byte 00
/* SPECIES_SNOVER          */ .byte 01
/* SPECIES_ABOMASNOW       */ .byte 01
/* SPECIES_WEAVILE         */ .byte 00
/* SPECIES_MAGNEZONE       */ .byte 00
/* SPECIES_LICKILICKY      */ .byte 01
/* SPECIES_RHYPERIOR       */ .byte 00
/* SPECIES_TANGROWTH       */ .byte 02
/* SPECIES_ELECTIVIRE      */ .byte 01
/* SPECIES_MAGMORTAR       */ .byte 00
/* SPECIES_TOGEKISS        */ .byte 02
/* SPECIES_YANMEGA         */ .byte 01
/* SPECIES_LEAFEON         */ .byte 01
/* SPECIES_GLACEON         */ .byte 00
/* SPECIES_GLISCOR         */ .byte 02
/* SPECIES_MAMOSWINE       */ .byte 02
/* SPECIES_PORYGON_Z       */ .byte 00
/* SPECIES_GALLADE         */ .byte 01
/* SPECIES_PROBOPASS       */ .byte 00
/* SPECIES_DUSKNOIR        */ .byte 02
/* SPECIES_FROSLASS        */ .byte 02
/* SPECIES_ROTOM           */ .byte 00
/* SPECIES_UXIE            */ .byte 00
/* SPECIES_MESPRIT         */ .byte 00
/* SPECIES_AZELF           */ .byte 00
/* SPECIES_DIALGA          */ .byte 02
/* SPECIES_PALKIA          */ .byte 02
/* SPECIES_HEATRAN         */ .byte 00
/* SPECIES_REGIGIGAS       */ .byte 00
/* SPECIES_GIRATINA        */ .byte 00
/* SPECIES_CRESSELIA       */ .byte 00
/* SPECIES_PHIONE          */ .byte 00
/* SPECIES_MANAPHY         */ .byte 00
/* SPECIES_DARKRAI         */ .byte 00
/* SPECIES_SHAYMIN         */ .byte 01
/* SPECIES_ARCEUS          */ .byte 00
/* SPECIES_EGG             */ .byte 01
/* manaphy egg             */ .byte 02
/* SPECIES_DEOXYS_ATTACK   */ .byte 00
/* SPECIES_DEOXYS_DEFENSE  */ .byte 00
/* SPECIES_DEOXYS_SPEED    */ .byte 00
/* unown a                 */ .byte 00
/* unown b                 */ .byte 00
/* unown c                 */ .byte 00
/* unown d                 */ .byte 00
/* unown e                 */ .byte 00
/* unown f                 */ .byte 00
/* unown g                 */ .byte 00
/* unown h                 */ .byte 00
/* unown i                 */ .byte 00
/* unown j                 */ .byte 00
/* unown k                 */ .byte 00
/* unown l                 */ .byte 00
/* unown m                 */ .byte 00
/* unown n                 */ .byte 00
/* unown o                 */ .byte 00
/* unown p                 */ .byte 00
/* unown q                 */ .byte 00
/* unown r                 */ .byte 00
/* unown s                 */ .byte 00
/* unown t                 */ .byte 00
/* unown u                 */ .byte 00
/* unown v                 */ .byte 00
/* unown w                 */ .byte 00
/* unown x                 */ .byte 00
/* unown y                 */ .byte 00
/* unown z                 */ .byte 00
/* unown !                 */ .byte 00
/* unown ?                 */ .byte 00
/* burmy sandy             */ .byte 01
/* burmy trash             */ .byte 00
/* wormadam sandy          */ .byte 01
/* wormadam trash          */ .byte 00
/* east shellos            */ .byte 00
/* east gastrodon          */ .byte 00
/* giratina origin         */ .byte 00
/* sky shaymin             */ .byte 01
/* rotom heat              */ .byte 00
/* rotom fridge            */ .byte 00
/* rotom wash              */ .byte 00
/* rotom fan               */ .byte 00
/* rotom lawnmower         */ .byte 00
/* castform sun            */ .byte 00
/* castform rain           */ .byte 00
/* castform ice            */ .byte 00
/* cherrim sun             */ .byte 01
/* SPECIES_VICTINI         */ .byte 00
/* SPECIES_SNIVY           */ .byte 01
/* SPECIES_SERVINE         */ .byte 01
/* SPECIES_SERPERIOR       */ .byte 01
/* SPECIES_TEPIG           */ .byte 00
/* SPECIES_PIGNITE         */ .byte 00
/* SPECIES_EMBOAR          */ .byte 00
/* SPECIES_OSHAWOTT        */ .byte 00
/* SPECIES_DEWOTT          */ .byte 00
/* SPECIES_SAMUROTT        */ .byte 02
/* SPECIES_PATRAT          */ .byte 02
/* SPECIES_WATCHOG         */ .byte 02
/* SPECIES_LILLIPUP        */ .byte 02
/* SPECIES_HERDIER         */ .byte 02
/* SPECIES_STOUTLAND       */ .byte 02
/* SPECIES_PURRLOIN        */ .byte 00
/* SPECIES_LIEPARD         */ .byte 00
/* SPECIES_PANSAGE         */ .byte 01
/* SPECIES_SIMISAGE        */ .byte 01
/* SPECIES_PANSEAR         */ .byte 02
/* SPECIES_SIMISEAR        */ .byte 02
/* SPECIES_PANPOUR         */ .byte 00
/* SPECIES_SIMIPOUR        */ .byte 00
/* SPECIES_MUNNA           */ .byte 00
/* SPECIES_MUSHARNA        */ .byte 00
/* SPECIES_PIDOVE          */ .byte 00
/* SPECIES_TRANQUILL       */ .byte 00
/* SPECIES_UNFEZANT        */ .byte 00 // both male and female
/* SPECIES_BLITZLE         */ .byte 00
/* SPECIES_ZEBSTRIKA       */ .byte 00
/* SPECIES_ROGGENROLA      */ .byte 00
/* SPECIES_BOLDORE         */ .byte 00
/* SPECIES_GIGALITH        */ .byte 00
/* SPECIES_WOOBAT          */ .byte 00
/* SPECIES_SWOOBAT         */ .byte 00
/* SPECIES_DRILBUR         */ .byte 00
/* SPECIES_EXCADRILL       */ .byte 00
/* SPECIES_AUDINO          */ .byte 00
/* SPECIES_TIMBURR         */ .byte 01
/* SPECIES_GURDURR         */ .byte 01
/* SPECIES_CONKELDURR      */ .byte 01
/* SPECIES_TYMPOLE         */ .byte 02
/* SPECIES_PALPITOAD       */ .byte 02
/* SPECIES_SEISMITOAD      */ .byte 00
/* SPECIES_THROH           */ .byte 01
/* SPECIES_SAWK            */ .byte 00
/* SPECIES_SEWADDLE        */ .byte 01
/* SPECIES_SWADLOON        */ .byte 01
/* SPECIES_LEAVANNY        */ .byte 01
/* SPECIES_VENIPEDE        */ .byte 01
/* SPECIES_WHIRLIPEDE      */ .byte 00
/* SPECIES_SCOLIPEDE       */ .byte 00
/* SPECIES_COTTONEE        */ .byte 01
/* SPECIES_WHIMSICOTT      */ .byte 01
/* SPECIES_PETILIL         */ .byte 01
/* SPECIES_LILLIGANT       */ .byte 01
/* SPECIES_BASCULIN        */ .byte 00
/* SPECIES_SANDILE         */ .byte 01
/* SPECIES_KROKOROK        */ .byte 01
/* SPECIES_KROOKODILE      */ .byte 00
/* SPECIES_DARUMAKA        */ .byte 00
/* SPECIES_DARMANITAN      */ .byte 00
/* SPECIES_MARACTUS        */ .byte 01
/* SPECIES_DWEBBLE         */ .byte 00
/* SPECIES_CRUSTLE         */ .byte 02
/* SPECIES_SCRAGGY         */ .byte 01
/* SPECIES_SCRAFTY         */ .byte 00
/* SPECIES_SIGILYPH        */ .byte 00
/* SPECIES_YAMASK          */ .byte 01
/* SPECIES_COFAGRIGUS      */ .byte 00
/* SPECIES_TIRTOUGA        */ .byte 02
/* SPECIES_CARRACOSTA      */ .byte 02
/* SPECIES_ARCHEN          */ .byte 00
/* SPECIES_ARCHEOPS        */ .byte 00
/* SPECIES_TRUBBISH        */ .byte 01
/* SPECIES_GARBODOR        */ .byte 01
/* SPECIES_ZORUA           */ .byte 00
/* SPECIES_ZOROARK         */ .byte 00
/* SPECIES_MINCCINO        */ .byte 00
/* SPECIES_CINCCINO        */ .byte 00
/* SPECIES_GOTHITA         */ .byte 02
/* SPECIES_GOTHORITA       */ .byte 02
/* SPECIES_GOTHITELLE      */ .byte 02
/* SPECIES_SOLOSIS         */ .byte 01
/* SPECIES_DUOSION         */ .byte 01
/* SPECIES_REUNICLUS       */ .byte 01
/* SPECIES_DUCKLETT        */ .byte 00
/* SPECIES_SWANNA          */ .byte 02
/* SPECIES_VANILLITE       */ .byte 00
/* SPECIES_VANILLISH       */ .byte 00
/* SPECIES_VANILLUXE       */ .byte 00
/* SPECIES_DEERLING        */ .byte 01
/* SPECIES_SAWSBUCK        */ .byte 01
/* SPECIES_EMOLGA          */ .byte 00
/* SPECIES_KARRABLAST      */ .byte 00
/* SPECIES_ESCAVALIER      */ .byte 00
/* SPECIES_FOONGUS         */ .byte 00
/* SPECIES_AMOONGUSS       */ .byte 00
/* SPECIES_FRILLISH        */ .byte 00 // but female is 1 + different icon picture.  will have to think about this
/* SPECIES_JELLICENT       */ .byte 00 // same as above
/* SPECIES_ALOMOMOLA       */ .byte 00
/* SPECIES_JOLTIK          */ .byte 00
/* SPECIES_GALVANTULA      */ .byte 00
/* SPECIES_FERROSEED       */ .byte 01
/* SPECIES_FERROTHORN      */ .byte 01
/* SPECIES_KLINK           */ .byte 00
/* SPECIES_KLANG           */ .byte 00
/* SPECIES_KLINKLANG       */ .byte 00
/* SPECIES_TYNAMO          */ .byte 00
/* SPECIES_EELEKTRIK       */ .byte 00
/* SPECIES_EELEKTROSS      */ .byte 00
/* SPECIES_ELGYEM          */ .byte 00
/* SPECIES_BEHEEYEM        */ .byte 02
/* SPECIES_LITWICK         */ .byte 02
/* SPECIES_LAMPENT         */ .byte 02
/* SPECIES_CHANDELURE      */ .byte 02
/* SPECIES_AXEW            */ .byte 01
/* SPECIES_FRAXURE         */ .byte 01
/* SPECIES_HAXORUS         */ .byte 02
/* SPECIES_CUBCHOO         */ .byte 00
/* SPECIES_BEARTIC         */ .byte 00
/* SPECIES_CRYOGONAL       */ .byte 00
/* SPECIES_SHELMET         */ .byte 00
/* SPECIES_ACCELGOR        */ .byte 01
/* SPECIES_STUNFISK        */ .byte 02
/* SPECIES_MIENFOO         */ .byte 00
/* SPECIES_MIENSHAO        */ .byte 02
/* SPECIES_DRUDDIGON       */ .byte 00
/* SPECIES_GOLETT          */ .byte 00
/* SPECIES_GOLURK          */ .byte 00
/* SPECIES_PAWNIARD        */ .byte 00
/* SPECIES_BISHARP         */ .byte 00
/* SPECIES_BOUFFALANT      */ .byte 00
/* SPECIES_RUFFLET         */ .byte 01
/* SPECIES_BRAVIARY        */ .byte 00
/* SPECIES_VULLABY         */ .byte 02
/* SPECIES_MANDIBUZZ       */ .byte 01
/* SPECIES_HEATMOR         */ .byte 02
/* SPECIES_DURANT          */ .byte 00
/* SPECIES_DEINO           */ .byte 02
/* SPECIES_ZWEILOUS        */ .byte 02
/* SPECIES_HYDREIGON       */ .byte 02
/* SPECIES_LARVESTA        */ .byte 00
/* SPECIES_VOLCARONA       */ .byte 00
/* SPECIES_COBALION        */ .byte 00
/* SPECIES_TERRAKION       */ .byte 02
/* SPECIES_VIRIZION        */ .byte 01
/* SPECIES_TORNADUS        */ .byte 01
/* SPECIES_THUNDURUS       */ .byte 00
/* SPECIES_RESHIRAM        */ .byte 02
/* SPECIES_ZEKROM          */ .byte 02
/* SPECIES_LANDORUS        */ .byte 00
/* SPECIES_KYUREM          */ .byte 02
/* SPECIES_KELDEO          */ .byte 00
/* SPECIES_MELOETTA        */ .byte 01
/* SPECIES_GENESECT        */ .byte 02

.endarea

.close
