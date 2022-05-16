import 'package:collection/collection.dart';

import 'country_code.dart';
import 'enum_country_code.dart';

/*
  ALPHA-2

**AD	Andorra	1974	.ad	ISO 3166-2:AD	
**AE	United Arab Emirates	1974	.ae	ISO 3166-2:AE	
**AF	Afghanistan	1974	.af	ISO 3166-2:AF	
**AG	Antigua and Barbuda	1974	.ag	ISO 3166-2:AG	
**AI	Anguilla	1985	.ai	ISO 3166-2:AI	AI previously represented French Afars and Issas
**AL	Albania	1974	.al	ISO 3166-2:AL	
**AM	Armenia	1992	.am	ISO 3166-2:AM	
**AO	Angola	1974	.ao	ISO 3166-2:AO	
**AQ	Antarctica	1974	.aq	ISO 3166-2:
**AR	Argentina	1974	.ar	ISO 3166-2:AR	
**AS	American Samoa	1974	.as	ISO 3166-2:AS	
**AT	Austria	1974	.at	ISO 3166-2:AT	
**AU	Australia	1974	.au	ISO 3166-2:AU	Includes the Ashmore and Cartier Islands and the Coral Sea Islands
**AW	Aruba	1986	.aw	ISO 3166-2:AW	
**AX	Åland Islands	2004	.ax	ISO 3166-2:AX	An autonomous province of Finland
**AZ	Azerbaijan	1992	.az	ISO 3166-2:AZ	
**BA	Bosnia and Herzegovina	1992	.ba	ISO 3166-2:BA	
**BB	Barbados	1974	.bb	ISO 3166-2:BB	
**BD	Bangladesh	1974	.bd	ISO 3166-2:BD	
**BE	Belgium	1974	.be	ISO 3166-2:BE	
**BF	Burkina Faso	1984	.bf	ISO 3166-2:BF	Name changed from Upper Volta (HV)
**BG	Bulgaria	1974	.bg	ISO 3166-2:BG	
**BH	Bahrain	1974	.bh	ISO 3166-2:BH	
**BI	Burundi	1974	.bi	ISO 3166-2:BI	
**BJ	Benin	1977	.bj	ISO 3166-2:BJ	Name changed from Dahomey (DY)
**BL	Saint Barthélemy	2007	.bl	ISO 3166-2:BL	
**BM	Bermuda	1974	.bm	ISO 3166-2:BM	
**BN	Brunei Darussalam	1974	.bn	ISO 3166-2:BN	Previous ISO country name: Brunei
**BO	Bolivia (Plurinational State of)	1974	.bo	ISO 3166-2:BO	Previous ISO country name: Bolivia
**BQ	Bonaire, Sint Eustatius and Saba	2010	.bq	ISO 3166-2:BQ	Consists of three Caribbean "special municipalities", which are part of the Netherlands proper: Bonaire, Sint Eustatius, and Saba (the BES Islands)
**BR	Brazil	1974	.br	ISO 3166-2:BR	
**BS	Bahamas	1974	.bs	ISO 3166-2:BS	
**BT	Bhutan	1974	.bt	ISO 3166-2:BT	
**BV	Bouvet Island	1974	.bv	ISO 3166-2:BV	Belongs to Norway
**BW	Botswana	1974	.bw	ISO 3166-2:BW	
**BY  Belarus
**BZ	Belize	1974	.bz	ISO 3166-2:BZ	
**CA	Canada	1974	.ca	ISO 3166-2:CA	
**CC	Cocos (Keeling) Islands	1974	.cc	ISO 3166-2:CC	
**CD	Congo, Democratic Republic of the	1997	.cd	ISO 3166-2:CD	Name changed from Zaire (ZR)
**CF	Central African Republic	1974	.cf	ISO 3166-2:CF	
**CG	Congo	1974	.cg	ISO 3166-2:CG	
**CH	Switzerland	1974	.ch	ISO 3166-2:CH	Code taken from name in Latin: Confoederatio Helvetica
**CI	Côte d'Ivoire	1974	.ci	ISO 3166-2:CI	ISO country name follows UN designation (common name and previous ISO country name: Ivory Coast)
**CK	Cook Islands	1974	.ck	ISO 3166-2:CK	
**CL	Chile	1974	.cl	ISO 3166-2:CL	
**CM	Cameroon	1974	.cm	ISO 3166-2:CM	Previous ISO country name: Cameroon, United Republic of
**CN	China	1974	.cn	ISO 3166-2:CN	
**CO	Colombia	1974	.co	ISO 3166-2:CO	
**CR	Costa Rica	1974	.cr	ISO 3166-2:CR	
**CU	Cuba	1974	.cu	ISO 3166-2:CU	
**CV	Cabo Verde	1974	.cv	ISO 3166-2:CV	ISO country name follows UN designation (common name and previous ISO country name: Cape Verde, another previous ISO country name: Cape Verde Islands)
**CW	Curaçao	2010	.cw	ISO 3166-2:CW	
**CX	Christmas Island	1974	.cx	ISO 3166-2:CX	
**CY	Cyprus	1974	.cy	ISO 3166-2:CY	
**CZ	Czechia	1993	.cz	ISO 3166-2:CZ	Previous ISO country name: Czech Republic
**DE	Germany	1974	.de	ISO 3166-2:DE	Code taken from name in German: Deutschland
**DJ	Djibouti	1977	.dj	ISO 3166-2:DJ	Name changed from French Afars and Issas (AI)
**DK	Denmark	1974	.dk	ISO 3166-2:DK	
**DM	Dominica	1974	.dm	ISO 3166-2:DM	
**DO	Dominican Republic	1974	.do	ISO 3166-2:DO	
**DY Benin
**DZ	Algeria	1974	.dz	ISO 3166-2:DZ	Code taken from name in Arabic الجزائر al-Djazā'ir, Algerian Arabic الدزاير al-Dzāyīr, or Berber ⴷⵣⴰⵢⵔ Dzayer
**EC	Ecuador	1974	.ec	ISO 3166-2:EC	
**EE	Estonia	1992	.ee	ISO 3166-2:EE	Code taken from name in Estonian: Eesti
**EG	Egypt	1974	.eg	ISO 3166-2:EG	
**EH	Western Sahara	1974		ISO 3166-2:EH	Previous ISO country name: Spanish Sahara (code taken from name in Spanish: Sahara español)
**ER	Eritrea	1993	.er	ISO 3166-2:ER	
**ES	Spain	1974	.es	ISO 3166-2:ES	Code taken from name in Spanish: España
**ET	Ethiopia	1974	.et	ISO 3166-2:ET	
**FI	Finland	1974	.fi	ISO 3166-2:FI	
**FJ	Fiji	1974	.fj	ISO 3166-2:FJ	
**FK	Falkland Islands (Malvinas)	1974	.fk	ISO 3166-2:FK	ISO country name follows UN designation due to the Falkland Islands sovereignty dispute (local common name: Falkland Islands)[16]
**FM	Micronesia (Federated States of)	1986	.fm	ISO 3166-2:FM	Previous ISO country name: Micronesia
**FO	Faroe Islands	1974	.fo	ISO 3166-2:FO	Code taken from name in Faroese: Føroyar
**FR	France	1974	.fr	ISO 3166-2:FR	Includes Clipperton Island
**GA	Gabon	1974	.ga	ISO 3166-2:GA	
**GB	United Kingdom of Great Britain and Northern Ireland	1974	.gb
**GD	Grenada	1974	.gd	ISO 3166-2:GD	
**GE	Georgia	1992	.ge	ISO 3166-2:GE	GE previously represented Gilbert and Ellice Islands
**GF	French Guiana	1974	.gf	ISO 3166-2:GF	Code taken from name in French: Guyane française
**GG	Guernsey	2006	.gg	ISO 3166-2:GG	A British Crown dependency
**GH	Ghana	1974	.gh	ISO 3166-2:GH	
**GI	Gibraltar	1974	.gi	ISO 3166-2:GI	
**GL	Greenland	1974	.gl	ISO 3166-2:GL	
**GM	Gambia	1974	.gm	ISO 3166-2:GM	
**GN	Guinea	1974	.gn	ISO 3166-2:GN	
**GP	Guadeloupe	1974	.gp	ISO 3166-2:GP	
**GQ	Equatorial Guinea	1974	.gq	ISO 3166-2:GQ	Code taken from name in French: Guinée équatoriale
**GR	Greece	1974	.gr	ISO 3166-2:GR	
**GS	South Georgia and the South Sandwich Islands	1993	.gs	ISO 3166-2:GS	
**GT	Guatemala	1974	.gt	ISO 3166-2:GT	
**GU	Guam	1974	.gu	ISO 3166-2:GU	
**GW	Guinea-Bissau	1974	.gw	ISO 3166-2:GW	
**GY	Guyana	1974	.gy	ISO 3166-2:GY	
**HK	Hong Kong	1974	.hk	ISO 3166-2:HK	
**HM	Heard Island and McDonald Islands	1974	.hm	ISO 3166-2:HM	
**HN	Honduras	1974	.hn	ISO 3166-2:HN	
**HR	Croatia	1992	.hr	ISO 3166-2:HR	Code taken from name in Croatian: Hrvatska
**HT	Haiti	1974	.ht	ISO 3166-2:HT	
**HU	Hungary	1974	.hu	ISO 3166-2:HU	
**ID	Indonesia	1974	.id	ISO 3166-2:ID	
**IE	Ireland	1974	.ie	ISO 3166-2:IE	
**IL	Israel	1974	.il	ISO 3166-2:IL	
**IM	Isle of Man	2006	.im	ISO 3166-2:IM	A British Crown dependency
**IN	India	1974	.in	ISO 3166-2:IN	
**IO	British Indian Ocean Territory	1974	.io	ISO 3166-2:IO	
**IQ	Iraq	1974	.iq	ISO 3166-2:IQ	
**IR	Iran (Islamic Republic of)	1974	.ir	ISO 3166-2:IR	Previous ISO country name: Iran
**IS	Iceland	1974	.is	ISO 3166-2:IS	Code taken from name in Icelandic: Ísland
**IT	Italy	1974	.it	ISO 3166-2:IT	
**JE	Jersey	2006	.je	ISO 3166-2:JE	A British Crown dependency
**JM	Jamaica	1974	.jm	ISO 3166-2:JM	
**JO	Jordan	1974	.jo	ISO 3166-2:JO	
**JP	Japan	1974	.jp	ISO 3166-2:JP	
**KE	Kenya	1974	.ke	ISO 3166-2:KE	
**KG	Kyrgyzstan	1992	.kg	ISO 3166-2:KG	
**KH	Cambodia	1974	.kh	ISO 3166-2:KH	Code taken from former name: Khmer Republic
**KI	Kiribati	1979	.ki	ISO 3166-2:KI	Name changed from Gilbert Islands (GE)
**KM	Comoros	1974	.km	ISO 3166-2:KM	Code taken from name in Comorian: Komori
**KN	Saint Kitts and Nevis	1974	.kn	ISO 3166-2:KN	Previous ISO country name: Saint Kitts-Nevis-Anguilla
**KP	Korea (Democratic People's Republic of)	1974	.kp	ISO 3166-2:KP	ISO country name follows UN designation (common name: North Korea)
**KR	Korea, Republic of	1974	.kr	ISO 3166-2:KR	ISO country name follows UN designation (common name: South Korea)
**KW	Kuwait	1974	.kw	ISO 3166-2:KW	
**KY	Cayman Islands	1974	.ky	ISO 3166-2:KY	
**KZ	Kazakhstan	1992	.kz	ISO 3166-2:KZ	Previous ISO country name: Kazakstan
**LA	Lao People's Democratic Republic	1974	.la	ISO 3166-2:LA	ISO country name follows UN designation (common name and previous ISO country name: Laos)
**LB	Lebanon	1974	.lb	ISO 3166-2:LB	
**LC	Saint Lucia	1974	.lc	ISO 3166-2:LC	
**LI	Liechtenstein	1974	.li	ISO 3166-2:LI	
**LK	Sri Lanka	1974	.lk	ISO 3166-2:LK	
**LR	Liberia	1974	.lr	ISO 3166-2:LR	
**LS	Lesotho	1974	.ls	ISO 3166-2:LS	
**LT	Lithuania	1992	.lt	ISO 3166-2:LT	
**LU	Luxembourg	1974	.lu	ISO 3166-2:LU	
**LV	Latvia	1992	.lv	ISO 3166-2:LV	
**LY	Libya	1974	.ly	ISO 3166-2:LY	Previous ISO country name: Libyan Arab Jamahiriya
**MA	Morocco	1974	.ma	ISO 3166-2:MA	Code taken from name in French: Maroc
**MC	Monaco	1974	.mc	ISO 3166-2:MC	
**MD	Moldova, Republic of	1992	.md	ISO 3166-2:MD	Previous ISO country name: Moldova (briefly from 2008 to 2009)
**ME	Montenegro	2006	.me	ISO 3166-2:ME	
**MF	Saint Martin (French part)	2007	.mf	ISO 3166-2:MF	The Dutch part of Saint Martin island is assigned code SX
**MG	Madagascar	1974	.mg	ISO 3166-2:MG	
**MH	Marshall Islands	1986	.mh	ISO 3166-2:MH	
**MK	North Macedonia	1993	.mk	ISO 3166-2:MK	Code taken from name in Macedonian: Severna Makedonija
**ML	Mali	1974	.ml	ISO 3166-2:ML	
**MM	Myanmar	1989	.mm	ISO 3166-2:MM	Name changed from Burma (BU)
**MN	Mongolia	1974	.mn	ISO 3166-2:MN	
**MO	Macao	1974	.mo	ISO 3166-2:MO	Previous ISO country name: Macau
**MP	Northern Mariana Islands	1986	.mp	ISO 3166-2:MP	
**MQ	Martinique	1974	.mq	ISO 3166-2:MQ	
**MR	Mauritania	1974	.mr	ISO 3166-2:MR	
**MS	Montserrat	1974	.ms	ISO 3166-2:MS	
**MT	Malta	1974	.mt	ISO 3166-2:MT	
**MU	Mauritius	1974	.mu	ISO 3166-2:MU	
**MV	Maldives	1974	.mv	ISO 3166-2:MV	
**MW	Malawi	1974	.mw	ISO 3166-2:MW	
**MX	Mexico	1974	.mx	ISO 3166-2:MX	
**MY	Malaysia	1974	.my	ISO 3166-2:MY	
**MZ	Mozambique	1974	.mz	ISO 3166-2:MZ	
**NA	Namibia	1974	.na	ISO 3166-2:NA	
**NC	New Caledonia	1974	.nc	ISO 3166-2:NC	
**NE	Niger	1974	.ne	ISO 3166-2:NE	
**NF	Norfolk Island	1974	.nf	ISO 3166-2:NF	
**NG	Nigeria	1974	.ng	ISO 3166-2:NG	
**NI	Nicaragua	1974	.ni	ISO 3166-2:NI	
**NL	Netherlands	1974	.nl	ISO 3166-2:NL	Officially includes the islands Bonaire, Saint Eustatius and Saba, which also have code BQ in ISO 3166-1. Within ISO 3166-2, Aruba (AW), Curaçao (CW), and Sint Maarten (SX) are also coded as subdivisions of NL.[18]
**NO	Norway	1974	.no	ISO 3166-2:NO	
**NP	Nepal	1974	.np	ISO 3166-2:NP	
**NR	Nauru	1974	.nr	ISO 3166-2:NR	
**NU	Niue	1974	.nu	ISO 3166-2:NU	Previous ISO country name: Niue Island
**NZ	New Zealand	1974	.nz	ISO 3166-2:NZ	
**OM	Oman	1974	.om	ISO 3166-2:OM	
**PA	Panama	1974	.pa	ISO 3166-2:PA	
**PE	Peru	1974	.pe	ISO 3166-2:PE	
**PF	French Polynesia	1974	.pf	ISO 3166-2:PF	Code taken from name in French: Polynésie française
**PG	Papua New Guinea	1974	.pg	ISO 3166-2:PG	
**PH	Philippines	1974	.ph	ISO 3166-2:PH	
**PK	Pakistan	1974	.pk	ISO 3166-2:PK	
**PL	Poland	1974	.pl	ISO 3166-2:PL	
**PM	Saint Pierre and Miquelon	1974	.pm	ISO 3166-2:PM	
**PN	Pitcairn	1974	.pn	ISO 3166-2:PN	Previous ISO country name: Pitcairn Islands
**PR	Puerto Rico	1974	.pr	ISO 3166-2:PR	
**PS	Palestine, State of	1999	.ps	ISO 3166-2:PS	Previous ISO country name: Palestinian Territory, Occupied
**PT	Portugal	1974	.pt	ISO 3166-2:PT	
**PW	Palau	1986	.pw	ISO 3166-2:PW	
**PY	Paraguay	1974	.py	ISO 3166-2:PY	
**QA	Qatar	1974	.qa	ISO 3166-2:QA	
**RE	Réunion	1974	.re	ISO 3166-2:RE	
**RO	Romania	1974	.ro	ISO 3166-2:RO	
**RS	Serbia	2006	.rs	ISO 3166-2:RS	Republic of Serbia
**RU	Russian Federation	1992	.ru	ISO 3166-2:RU	ISO country name follows UN designation (common name: Russia)
**RW	Rwanda	1974	.rw	ISO 3166-2:RW	
**SA	Saudi Arabia	1974	.sa	ISO 3166-2:SA	
**SB	Solomon Islands	1974	.sb	ISO 3166-2:SB	Code taken from former name: British Solomon Islands
**SC	Seychelles	1974	.sc	ISO 3166-2:SC	
**SD	Sudan	1974	.sd	ISO 3166-2:SD	
**SE	Sweden	1974	.se	ISO 3166-2:SE	
**SG	Singapore	1974	.sg	ISO 3166-2:SG	
**SH	Saint Helena, Ascension and Tristan da Cunha	1974	.sh	ISO 3166-2:SH	Previous ISO country name: Saint Helena
**SI	Slovenia	1992	.si	ISO 3166-2:SI	
**SJ	Svalbard and Jan Mayen	1974	.sj	ISO 3166-2:SJ	Previous ISO name: Svalbard and Jan Mayen Islands
**SK	Slovakia	1993	.sk	ISO 3166-2:SK	SK previously represented Sikkim
**SL	Sierra Leone	1974	.sl	ISO 3166-2:SL	
**SM	San Marino	1974	.sm	ISO 3166-2:SM	
**SN	Senegal	1974	.sn	ISO 3166-2:SN	
**SO	Somalia	1974	.so	ISO 3166-2:SO	
**SR	Suriname	1974	.sr	ISO 3166-2:SR	Previous ISO country name: Surinam
**SS	South Sudan	2011	.ss	ISO 3166-2:SS	
**ST	Sao Tome and Principe	1974	.st	ISO 3166-2:ST	
**SV	El Salvador	1974	.sv	ISO 3166-2:SV	
**SX	Sint Maarten (Dutch part)	2010	.sx	ISO 3166-2:SX	The French part of Saint Martin island is assigned code MF
**SY	Syrian Arab Republic	1974	.sy	ISO 3166-2:SY	ISO country name follows UN designation (common name and previous ISO country name: Syria)
**SZ	Eswatini	1974	.sz	ISO 3166-2:SZ	Previous ISO country name: Swaziland
**TC	Turks and Caicos Islands	1974	.tc	ISO 3166-2:TC	
**TD	Chad	1974	.td	ISO 3166-2:TD	Code taken from name in French: Tchad
**TF	French Southern Territories	1979	.tf	ISO 3166-2:TF	Covers the French Southern and Antarctic Lands except Adélie Land
**TG	Togo	1974	.tg	ISO 3166-2:TG	
**TH	Thailand	1974	.th	ISO 3166-2:TH	
**TJ	Tajikistan	1992	.tj	ISO 3166-2:TJ	
**TK	Tokelau	1974	.tk	ISO 3166-2:TK	Previous ISO country name: Tokelau Islands
**TL	Timor-Leste	2002	.tl	ISO 3166-2:TL	Name changed from East Timor (TP)
**TM	Turkmenistan	1992	.tm	ISO 3166-2:TM	
**TN	Tunisia	1974	.tn	ISO 3166-2:TN	
**TO	Tonga	1974	.to	ISO 3166-2:TO	
**TR	Turkey	1974	.tr	ISO 3166-2:TR	
**TT	Trinidad and Tobago	1974	.tt	ISO 3166-2:TT	
**TV	Tuvalu	1977	.tv	ISO 3166-2:TV	
**TW	Taiwan, Province of China	1974	.tw	ISO 3166-2:TW	Covers the current jurisdiction of the Republic of China
**TZ	Tanzania, United Republic of	1974	.tz	ISO 3166-2:TZ	
**UA	Ukraine	1974	.ua	ISO 3166-2:UA	Previous ISO country name: Ukrainian SSR
**UG	Uganda	1974	.ug	ISO 3166-2:UG	
**UM	United States Minor Outlying Islands	1986		ISO 3166-2:UM	Consists of nine minor insular areas of the United States: Baker Island, Howland Island, Jarvis Island, Johnston Atoll, Kingman Reef, Midway Islands, Navassa Island, Palmyra Atoll, and Wake Island
**US	United States of America	1974	.us	ISO 3166-2:US	Previous ISO country name: United States
**UY	Uruguay	1974	.uy	ISO 3166-2:UY	
**UZ	Uzbekistan	1992	.uz	ISO 3166-2:UZ	
**VA	Holy See	1974	.va	ISO 3166-2:VA	Covers Vatican City, territory of the Holy See
**VC	Saint Vincent and the Grenadines	1974	.vc	ISO 3166-2:VC	
**VE	Venezuela (Bolivarian Republic of)	1974	.ve	ISO 3166-2:VE	Previous ISO country name: Venezuela
**VG	Virgin Islands (British)	1974	.vg	ISO 3166-2:VG	
**VI	Virgin Islands (U.S.)	1974	.vi	ISO 3166-2:VI	
**VN	Viet Nam	1974	.vn	ISO 3166-2:VN	ISO country name follows UN designation (common name: Vietnam)
**VU	Vanuatu	1980	.vu	ISO 3166-2:VU	Name changed from New Hebrides (NH)
**WF	Wallis and Futuna	1974	.wf	ISO 3166-2:WF	Previous ISO country name: Wallis and Futuna Islands
**WS	Samoa	1974	.ws	ISO 3166-2:WS	Code taken from former name: Western Samoa
**YE	Yemen	1974	.ye	ISO 3166-2:YE	Previous ISO country name: Yemen, Republic of (for three years after the unification)
**YT	Mayotte	1993	.yt	ISO 3166-2:YT	
**ZA	South Africa	1974	.za	ISO 3166-2:ZA	Code taken from name in Dutch: Zuid-Afrika
**ZM	Zambia	1974	.zm	ISO 3166-2:ZM	
**ZW	Zimbabwe
 */

enum EnumCountryAlpha2 {
  AD,
  AE,
  AF,
  AG,
  AI,
  AL,
  AM,
  AO,
  AQ,
  AR,
  AS,
  AT,
  AU,
  AW,
  AX,
  AZ,
  BA,
  BB,
  BD,
  BE,
  BF,
  BG,
  BH,
  BI,
  BJ,
  BL,
  BM,
  BN,
  BO,
  BQ,
  BR,
  BS,
  BT,
  BV,
  BW,
  BY,
  BZ,
  CA,
  CC,
  CD,
  CF,
  CG,
  CH,
  CI,
  CK,
  CL,
  CM,
  CN,
  CO,
  CR,
  CU,
  CV,
  CW,
  CX,
  CY,
  CZ,
  DE,
  DJ,
  DK,
  DM,
  DO,
  DY,
  DZ,
  EC,
  EE,
  EG,
  EH,
  ER,
  ES,
  ET,
  FI,
  FJ,
  FK,
  FM,
  FO,
  FR,
  GA,
  GB,
  GD,
  GE,
  GF,
  GG,
  GH,
  GI,
  GL,
  GM,
  GN,
  GP,
  GQ,
  GR,
  GS,
  GT,
  GU,
  GW,
  GY,
  HK,
  HM,
  HN,
  HR,
  HT,
  HU,
  ID,
  IE,
  IL,
  IM,
  IN,
  IO,
  IQ,
  IR,
  IS,
  IT,
  JE,
  JM,
  JO,
  JP,
  KE,
  KG,
  KH,
  KI,
  KM,
  KN,
  KP,
  KR,
  KW,
  KY,
  KZ,
  LA,
  LB,
  LC,
  LI,
  LK,
  LR,
  LS,
  LT,
  LU,
  LV,
  LY,
  MA,
  MC,
  MD,
  ME,
  MF,
  MG,
  MH,
  MK,
  ML,
  MM,
  MN,
  MO,
  MP,
  MQ,
  MR,
  MS,
  MT,
  MU,
  MV,
  MW,
  MX,
  MY,
  MZ,
  NA,
  NC,
  NE,
  NF,
  NG,
  NI,
  NL,
  NO,
  NP,
  NR,
  NU,
  NZ,
  OM,
  PA,
  PE,
  PF,
  PG,
  PH,
  PK,
  PL,
  PM,
  PN,
  PR,
  PS,
  PT,
  PW,
  PY,
  QA,
  RE,
  RO,
  RS,
  RU,
  RW,
  SA,
  SB,
  SC,
  SD,
  SE,
  SG,
  SH,
  SI,
  SJ,
  SK,
  SL,
  SM,
  SN,
  SO,
  SR,
  SS,
  ST,
  SV,
  SX,
  SY,
  SZ,
  TC,
  TD,
  TF,
  TG,
  TH,
  TJ,
  TK,
  TL,
  TM,
  TN,
  TO,
  TR,
  TT,
  TV,
  TW,
  TZ,
  UA,
  UG,
  UK,
  UM,
  US,
  UY,
  UZ,
  VA,
  VC,
  VE,
  VG,
  VI,
  VN,
  VU,
  WF,
  WS,
  YE,
  YT,
  ZA,
  ZM,
  ZW;

  static EnumCountryAlpha2 byId(String id) {
    return EnumCountryAlpha2.values
      .firstWhere((element) => 
        element.code.id.toLowerCase() == id.toLowerCase());
  }

  static EnumCountryAlpha2 byAlpha2(String alpha2) {
    return EnumCountryAlpha2.values
      .firstWhere((element) => 
        element.code.alpha2.toLowerCase() == alpha2.toLowerCase());
  }

  static EnumCountryAlpha2 byAlpha3(String alpha3) {
    return EnumCountryAlpha2.values
      .firstWhere((element) => 
        element.code.alpha3.toLowerCase() == alpha3.toLowerCase());
  }

  static EnumCountryAlpha2? byIdOrNull(String id) {
    return EnumCountryAlpha2.values
      .firstWhereOrNull((element) => 
        element.code.id == id);
  }

  static EnumCountryAlpha2? byAlpha2OrNull(String alpha2) {
    return EnumCountryAlpha2.values
      .firstWhereOrNull((element) => 
        element.code.alpha2.toLowerCase() == alpha2.toLowerCase());
  }

  static EnumCountryAlpha2? byAlpha3OrNull(String alpha3) {
    return EnumCountryAlpha2.values
      .firstWhereOrNull((element) => 
        element.code.alpha3.toLowerCase() == alpha3.toLowerCase());
  }

  CountryCode get code {
    switch(this) {
      case EnumCountryAlpha2.AD: 
        return EnumCountryCode.id020.code;
      case EnumCountryAlpha2.AE: 
        return EnumCountryCode.id784.code;
      case EnumCountryAlpha2.AF: 
        return EnumCountryCode.id004.code;
      case EnumCountryAlpha2.AG: 
        return EnumCountryCode.id028.code;
      case EnumCountryAlpha2.AI: 
        return EnumCountryCode.id660.code;
      case EnumCountryAlpha2.AL: 
        return EnumCountryCode.id008.code;
      case EnumCountryAlpha2.AM: 
        return EnumCountryCode.id051.code;
      case EnumCountryAlpha2.AO: 
        return EnumCountryCode.id024.code;
      case EnumCountryAlpha2.AQ: 
        return EnumCountryCode.id010.code;
      case EnumCountryAlpha2.AR: 
        return EnumCountryCode.id032.code;
      case EnumCountryAlpha2.AS: 
        return EnumCountryCode.id016.code;
      case EnumCountryAlpha2.AT: 
        return EnumCountryCode.id040.code;
      case EnumCountryAlpha2.AU: 
        return EnumCountryCode.id036.code;
      case EnumCountryAlpha2.AW: 
        return EnumCountryCode.id533.code;
      case EnumCountryAlpha2.AX: 
        return EnumCountryCode.id248.code;
      case EnumCountryAlpha2.AZ: 
        return EnumCountryCode.id031.code;
      case EnumCountryAlpha2.BA: 
        return EnumCountryCode.id070.code;
      case EnumCountryAlpha2.BB: 
        return EnumCountryCode.id052.code;
      case EnumCountryAlpha2.BD: 
        return EnumCountryCode.id050.code;
      case EnumCountryAlpha2.BE: 
        return EnumCountryCode.id056.code;
      case EnumCountryAlpha2.BF: 
        return EnumCountryCode.id854.code;
      case EnumCountryAlpha2.BG: 
        return EnumCountryCode.id100.code;
      case EnumCountryAlpha2.BH: 
        return EnumCountryCode.id048.code;
      case EnumCountryAlpha2.BI: 
        return EnumCountryCode.id108.code;
      case EnumCountryAlpha2.BJ: 
        return EnumCountryCode.id204.code;
      case EnumCountryAlpha2.BL: 
        return EnumCountryCode.id652.code;
      case EnumCountryAlpha2.BM: 
        return EnumCountryCode.id060.code;
      case EnumCountryAlpha2.BN: 
        return EnumCountryCode.id096.code;
      case EnumCountryAlpha2.BO: 
        return EnumCountryCode.id068.code;
      case EnumCountryAlpha2.BQ: 
        return EnumCountryCode.id535.code;
      case EnumCountryAlpha2.BR: 
        return EnumCountryCode.id076.code;
      case EnumCountryAlpha2.BS: 
        return EnumCountryCode.id044.code;
      case EnumCountryAlpha2.BT: 
        return EnumCountryCode.id064.code;
      case EnumCountryAlpha2.BV: 
        return EnumCountryCode.id074.code;
      case EnumCountryAlpha2.BW: 
        return EnumCountryCode.id072.code;
      case EnumCountryAlpha2.BY: 
        return EnumCountryCode.id112.code;
      case EnumCountryAlpha2.BZ: 
        return EnumCountryCode.id084.code;
      case EnumCountryAlpha2.CA: 
        return EnumCountryCode.id124.code;
      case EnumCountryAlpha2.CC: 
        return EnumCountryCode.id166.code;
      case EnumCountryAlpha2.CD: 
        return EnumCountryCode.id180.code;
      case EnumCountryAlpha2.CF: 
        return EnumCountryCode.id140.code;
      case EnumCountryAlpha2.CG: 
        return EnumCountryCode.id178.code;
      case EnumCountryAlpha2.CH: 
        return EnumCountryCode.id756.code;
      case EnumCountryAlpha2.CI: 
        return EnumCountryCode.id384.code;
      case EnumCountryAlpha2.CK: 
        return EnumCountryCode.id184.code;
      case EnumCountryAlpha2.CL: 
        return EnumCountryCode.id152.code;
      case EnumCountryAlpha2.CM: 
        return EnumCountryCode.id120.code;
      case EnumCountryAlpha2.CN: 
        return EnumCountryCode.id156.code;
      case EnumCountryAlpha2.CO: 
        return EnumCountryCode.id170.code;
      case EnumCountryAlpha2.CR: 
        return EnumCountryCode.id188.code;
      case EnumCountryAlpha2.CU: 
        return EnumCountryCode.id192.code;
      case EnumCountryAlpha2.CV: 
        return EnumCountryCode.id132.code;
      case EnumCountryAlpha2.CW: 
        return EnumCountryCode.id531.code;
      case EnumCountryAlpha2.CX: 
        return EnumCountryCode.id162.code;
      case EnumCountryAlpha2.CY: 
        return EnumCountryCode.id196.code;
      case EnumCountryAlpha2.CZ: 
        return EnumCountryCode.id203.code;
      case EnumCountryAlpha2.DE: 
        return EnumCountryCode.id276.code;
      case EnumCountryAlpha2.DJ: 
        return EnumCountryCode.id262.code;
      case EnumCountryAlpha2.DK: 
        return EnumCountryCode.id208.code;
      case EnumCountryAlpha2.DM: 
        return EnumCountryCode.id212.code;
      case EnumCountryAlpha2.DO: 
        return EnumCountryCode.id214.code;
      case EnumCountryAlpha2.DY: 
        return EnumCountryCode.id204.code;
      case EnumCountryAlpha2.DZ: 
        return EnumCountryCode.id012.code;
      case EnumCountryAlpha2.EC: 
        return EnumCountryCode.id218.code;
      case EnumCountryAlpha2.EE: 
        return EnumCountryCode.id233.code;
      case EnumCountryAlpha2.EG: 
        return EnumCountryCode.id818.code;
      case EnumCountryAlpha2.EH: 
        return EnumCountryCode.id732.code;
      case EnumCountryAlpha2.ER: 
        return EnumCountryCode.id232.code;
      case EnumCountryAlpha2.ES: 
        return EnumCountryCode.id724.code;
      case EnumCountryAlpha2.ET: 
        return EnumCountryCode.id231.code;
      case EnumCountryAlpha2.FI: 
        return EnumCountryCode.id246.code;
      case EnumCountryAlpha2.FJ: 
        return EnumCountryCode.id242.code;
      case EnumCountryAlpha2.FK: 
        return EnumCountryCode.id238.code;
      case EnumCountryAlpha2.FM: 
        return EnumCountryCode.id581.code;
      case EnumCountryAlpha2.FO: 
        return EnumCountryCode.id234.code;
      case EnumCountryAlpha2.FR: 
        return EnumCountryCode.id250.code;
      case EnumCountryAlpha2.GA: 
        return EnumCountryCode.id266.code;
      case EnumCountryAlpha2.GB: 
        return EnumCountryCode.id826.code;
      case EnumCountryAlpha2.GD: 
        return EnumCountryCode.id308.code;
      case EnumCountryAlpha2.GE: 
        return EnumCountryCode.id268.code;
      case EnumCountryAlpha2.GF: 
        return EnumCountryCode.id254.code;
      case EnumCountryAlpha2.GG: 
        return EnumCountryCode.id831.code;
      case EnumCountryAlpha2.GH: 
        return EnumCountryCode.id288.code;
      case EnumCountryAlpha2.GI: 
        return EnumCountryCode.id292.code;
      case EnumCountryAlpha2.GL: 
        return EnumCountryCode.id304.code;
      case EnumCountryAlpha2.GM: 
        return EnumCountryCode.id270.code;
      case EnumCountryAlpha2.GN: 
        return EnumCountryCode.id324.code;
      case EnumCountryAlpha2.GP: 
        return EnumCountryCode.id312.code;
      case EnumCountryAlpha2.GQ: 
        return EnumCountryCode.id226.code;
      case EnumCountryAlpha2.GR: 
        return EnumCountryCode.id300.code;
      case EnumCountryAlpha2.GS: 
        return EnumCountryCode.id239.code;
      case EnumCountryAlpha2.GT: 
        return EnumCountryCode.id320.code;
      case EnumCountryAlpha2.GU: 
        return EnumCountryCode.id316.code;
      case EnumCountryAlpha2.GW: 
        return EnumCountryCode.id624.code;
      case EnumCountryAlpha2.GY: 
        return EnumCountryCode.id328.code;
      case EnumCountryAlpha2.HK: 
        return EnumCountryCode.id344.code;
      case EnumCountryAlpha2.HM: 
        return EnumCountryCode.id334.code;
      case EnumCountryAlpha2.HN: 
        return EnumCountryCode.id340.code;
      case EnumCountryAlpha2.HR: 
        return EnumCountryCode.id191.code;
      case EnumCountryAlpha2.HT: 
        return EnumCountryCode.id332.code;
      case EnumCountryAlpha2.HU: 
        return EnumCountryCode.id348.code;
      case EnumCountryAlpha2.ID: 
        return EnumCountryCode.id360.code;
      case EnumCountryAlpha2.IE: 
        return EnumCountryCode.id372.code;
      case EnumCountryAlpha2.IL: 
        return EnumCountryCode.id376.code;
      case EnumCountryAlpha2.IM: 
        return EnumCountryCode.id833.code;
      case EnumCountryAlpha2.IN: 
        return EnumCountryCode.id356.code;
      case EnumCountryAlpha2.IO: 
        return EnumCountryCode.id086.code;
      case EnumCountryAlpha2.IQ: 
        return EnumCountryCode.id368.code;
      case EnumCountryAlpha2.IR: 
        return EnumCountryCode.id364.code;
      case EnumCountryAlpha2.IS: 
        return EnumCountryCode.id352.code;
      case EnumCountryAlpha2.IT: 
        return EnumCountryCode.id380.code;
      case EnumCountryAlpha2.JE: 
        return EnumCountryCode.id832.code;
      case EnumCountryAlpha2.JM: 
        return EnumCountryCode.id388.code;
      case EnumCountryAlpha2.JO: 
        return EnumCountryCode.id400.code;
      case EnumCountryAlpha2.JP: 
        return EnumCountryCode.id392.code;
      case EnumCountryAlpha2.KE: 
        return EnumCountryCode.id404.code;
      case EnumCountryAlpha2.KG: 
        return EnumCountryCode.id417.code;
      case EnumCountryAlpha2.KH: 
        return EnumCountryCode.id116.code;
      case EnumCountryAlpha2.KI: 
        return EnumCountryCode.id296.code;
      case EnumCountryAlpha2.KM: 
        return EnumCountryCode.id174.code;
      case EnumCountryAlpha2.KN: 
        return EnumCountryCode.id659.code;
      case EnumCountryAlpha2.KP: 
        return EnumCountryCode.id408.code;
      case EnumCountryAlpha2.KR: 
        return EnumCountryCode.id410.code;
      case EnumCountryAlpha2.KW: 
        return EnumCountryCode.id414.code;
      case EnumCountryAlpha2.KY: 
        return EnumCountryCode.id136.code;
      case EnumCountryAlpha2.KZ: 
        return EnumCountryCode.id398.code;
      case EnumCountryAlpha2.LA: 
        return EnumCountryCode.id418.code;
      case EnumCountryAlpha2.LB: 
        return EnumCountryCode.id422.code;
      case EnumCountryAlpha2.LC: 
        return EnumCountryCode.id662.code;
      case EnumCountryAlpha2.LI: 
        return EnumCountryCode.id438.code;
      case EnumCountryAlpha2.LK: 
        return EnumCountryCode.id144.code;
      case EnumCountryAlpha2.LR: 
        return EnumCountryCode.id430.code;
      case EnumCountryAlpha2.LS: 
        return EnumCountryCode.id426.code;
      case EnumCountryAlpha2.LT: 
        return EnumCountryCode.id440.code;
      case EnumCountryAlpha2.LU: 
        return EnumCountryCode.id442.code;
      case EnumCountryAlpha2.LV: 
        return EnumCountryCode.id428.code;
      case EnumCountryAlpha2.LY: 
        return EnumCountryCode.id434.code;
      case EnumCountryAlpha2.MA: 
        return EnumCountryCode.id504.code;
      case EnumCountryAlpha2.MC: 
        return EnumCountryCode.id492.code;
      case EnumCountryAlpha2.MD: 
        return EnumCountryCode.id498.code;
      case EnumCountryAlpha2.ME: 
        return EnumCountryCode.id499.code;
      case EnumCountryAlpha2.MF: 
        return EnumCountryCode.id663.code;
      case EnumCountryAlpha2.MG: 
        return EnumCountryCode.id450.code;
      case EnumCountryAlpha2.MH: 
        return EnumCountryCode.id584.code;
      case EnumCountryAlpha2.MK: 
        return EnumCountryCode.id807.code;
      case EnumCountryAlpha2.ML: 
        return EnumCountryCode.id466.code;
      case EnumCountryAlpha2.MM: 
        return EnumCountryCode.id104.code;
      case EnumCountryAlpha2.MN: 
        return EnumCountryCode.id496.code;
      case EnumCountryAlpha2.MO: 
        return EnumCountryCode.id446.code;
      case EnumCountryAlpha2.MP: 
        return EnumCountryCode.id580.code;
      case EnumCountryAlpha2.MQ: 
        return EnumCountryCode.id474.code;
      case EnumCountryAlpha2.MR: 
        return EnumCountryCode.id478.code;
      case EnumCountryAlpha2.MS: 
        return EnumCountryCode.id500.code;
      case EnumCountryAlpha2.MT: 
        return EnumCountryCode.id470.code;
      case EnumCountryAlpha2.MU: 
        return EnumCountryCode.id480.code;
      case EnumCountryAlpha2.MV: 
        return EnumCountryCode.id462.code;
      case EnumCountryAlpha2.MW: 
        return EnumCountryCode.id454.code;
      case EnumCountryAlpha2.MX: 
        return EnumCountryCode.id484.code;
      case EnumCountryAlpha2.MY: 
        return EnumCountryCode.id458.code;
      case EnumCountryAlpha2.MZ: 
        return EnumCountryCode.id508.code;
      case EnumCountryAlpha2.NA: 
        return EnumCountryCode.id516.code;
      case EnumCountryAlpha2.NC: 
        return EnumCountryCode.id540.code;
      case EnumCountryAlpha2.NE: 
        return EnumCountryCode.id562.code;
      case EnumCountryAlpha2.NF: 
        return EnumCountryCode.id574.code;
      case EnumCountryAlpha2.NG: 
        return EnumCountryCode.id566.code;
      case EnumCountryAlpha2.NI: 
        return EnumCountryCode.id558.code;
      case EnumCountryAlpha2.NL: 
        return EnumCountryCode.id528.code;
      case EnumCountryAlpha2.NO: 
        return EnumCountryCode.id578.code;
      case EnumCountryAlpha2.NP: 
        return EnumCountryCode.id524.code;
      case EnumCountryAlpha2.NR: 
        return EnumCountryCode.id520.code;
      case EnumCountryAlpha2.NU: 
        return EnumCountryCode.id570.code;
      case EnumCountryAlpha2.NZ: 
        return EnumCountryCode.id554.code;
      case EnumCountryAlpha2.OM: 
        return EnumCountryCode.id512.code;
      case EnumCountryAlpha2.PA: 
        return EnumCountryCode.id591.code;
      case EnumCountryAlpha2.PE: 
        return EnumCountryCode.id604.code;
      case EnumCountryAlpha2.PF: 
        return EnumCountryCode.id258.code;
      case EnumCountryAlpha2.PG: 
        return EnumCountryCode.id598.code;
      case EnumCountryAlpha2.PH: 
        return EnumCountryCode.id608.code;
      case EnumCountryAlpha2.PK: 
        return EnumCountryCode.id586.code;
      case EnumCountryAlpha2.PL: 
        return EnumCountryCode.id616.code;
      case EnumCountryAlpha2.PM: 
        return EnumCountryCode.id666.code;
      case EnumCountryAlpha2.PN: 
        return EnumCountryCode.id612.code;
      case EnumCountryAlpha2.PR: 
        return EnumCountryCode.id630.code;
      case EnumCountryAlpha2.PS: 
        return EnumCountryCode.id275.code;
      case EnumCountryAlpha2.PT: 
        return EnumCountryCode.id620.code;
      case EnumCountryAlpha2.PW: 
        return EnumCountryCode.id585.code;
      case EnumCountryAlpha2.PY: 
        return EnumCountryCode.id600.code;
      case EnumCountryAlpha2.QA: 
        return EnumCountryCode.id634.code;
      case EnumCountryAlpha2.RE: 
        return EnumCountryCode.id638.code;
      case EnumCountryAlpha2.RO: 
        return EnumCountryCode.id642.code;
      case EnumCountryAlpha2.RS: 
        return EnumCountryCode.id688.code;
      case EnumCountryAlpha2.RU: 
        return EnumCountryCode.id643.code;
      case EnumCountryAlpha2.RW: 
        return EnumCountryCode.id646.code;
      case EnumCountryAlpha2.SA: 
        return EnumCountryCode.id682.code;
      case EnumCountryAlpha2.SB: 
        return EnumCountryCode.id090.code;
      case EnumCountryAlpha2.SC: 
        return EnumCountryCode.id690.code;
      case EnumCountryAlpha2.SD: 
        return EnumCountryCode.id729.code;
      case EnumCountryAlpha2.SE: 
        return EnumCountryCode.id752.code;
      case EnumCountryAlpha2.SG: 
        return EnumCountryCode.id702.code;
      case EnumCountryAlpha2.SH: 
        return EnumCountryCode.id654.code;
      case EnumCountryAlpha2.SI: 
        return EnumCountryCode.id705.code;
      case EnumCountryAlpha2.SJ: 
        return EnumCountryCode.id744.code;
      case EnumCountryAlpha2.SK: 
        return EnumCountryCode.id703.code;
      case EnumCountryAlpha2.SL: 
        return EnumCountryCode.id694.code;
      case EnumCountryAlpha2.SM: 
        return EnumCountryCode.id674.code;
      case EnumCountryAlpha2.SN: 
        return EnumCountryCode.id686.code;
      case EnumCountryAlpha2.SO: 
        return EnumCountryCode.id706.code;
      case EnumCountryAlpha2.SR: 
        return EnumCountryCode.id740.code;
      case EnumCountryAlpha2.SS: 
        return EnumCountryCode.id728.code;
      case EnumCountryAlpha2.ST: 
        return EnumCountryCode.id678.code;
      case EnumCountryAlpha2.SV: 
        return EnumCountryCode.id222.code;
      case EnumCountryAlpha2.SX: 
        return EnumCountryCode.id534.code;
      case EnumCountryAlpha2.SY: 
        return EnumCountryCode.id760.code;
      case EnumCountryAlpha2.SZ: 
        return EnumCountryCode.id748.code;
      case EnumCountryAlpha2.TC: 
        return EnumCountryCode.id796.code;
      case EnumCountryAlpha2.TD: 
        return EnumCountryCode.id148.code;
      case EnumCountryAlpha2.TF: 
        return EnumCountryCode.id260.code;
      case EnumCountryAlpha2.TG: 
        return EnumCountryCode.id768.code;
      case EnumCountryAlpha2.TH: 
        return EnumCountryCode.id764.code;
      case EnumCountryAlpha2.TJ: 
        return EnumCountryCode.id762.code;
      case EnumCountryAlpha2.TK: 
        return EnumCountryCode.id772.code;
      case EnumCountryAlpha2.TL: 
        return EnumCountryCode.id626.code;
      case EnumCountryAlpha2.TM: 
        return EnumCountryCode.id795.code;
      case EnumCountryAlpha2.TN: 
        return EnumCountryCode.id788.code;
      case EnumCountryAlpha2.TO: 
        return EnumCountryCode.id776.code;
      case EnumCountryAlpha2.TR: 
        return EnumCountryCode.id792.code;
      case EnumCountryAlpha2.TT: 
        return EnumCountryCode.id780.code;
      case EnumCountryAlpha2.TV: 
        return EnumCountryCode.id798.code;
      case EnumCountryAlpha2.TW: 
        return EnumCountryCode.id158.code;
      case EnumCountryAlpha2.TZ: 
        return EnumCountryCode.id834.code;
      case EnumCountryAlpha2.UA: 
        return EnumCountryCode.id804.code;
      case EnumCountryAlpha2.UG: 
        return EnumCountryCode.id800.code;
      case EnumCountryAlpha2.UK: 
        return EnumCountryCode.id826.code;
      case EnumCountryAlpha2.UM: 
        return EnumCountryCode.id581.code;
      case EnumCountryAlpha2.US: 
        return EnumCountryCode.id840.code;
      case EnumCountryAlpha2.UY: 
        return EnumCountryCode.id858.code;
      case EnumCountryAlpha2.UZ: 
        return EnumCountryCode.id860.code;
      case EnumCountryAlpha2.VA: 
        return EnumCountryCode.id336.code;
      case EnumCountryAlpha2.VC: 
        return EnumCountryCode.id670.code;
      case EnumCountryAlpha2.VE: 
        return EnumCountryCode.id862.code;
      case EnumCountryAlpha2.VG: 
        return EnumCountryCode.id092.code;
      case EnumCountryAlpha2.VI: 
        return EnumCountryCode.id850.code;
      case EnumCountryAlpha2.VN: 
        return EnumCountryCode.id704.code;
      case EnumCountryAlpha2.VU: 
        return EnumCountryCode.id548.code;
      case EnumCountryAlpha2.WF: 
        return EnumCountryCode.id876.code;
      case EnumCountryAlpha2.WS: 
        return EnumCountryCode.id882.code;
      case EnumCountryAlpha2.YE: 
        return EnumCountryCode.id887.code;
      case EnumCountryAlpha2.YT: 
        return EnumCountryCode.id175.code;
      case EnumCountryAlpha2.ZA: 
        return EnumCountryCode.id710.code;
      case EnumCountryAlpha2.ZM: 
        return EnumCountryCode.id894.code;
      case EnumCountryAlpha2.ZW: 
        return EnumCountryCode.id716.code;
    }
  }
}