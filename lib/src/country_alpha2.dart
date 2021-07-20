import 'country_code.dart';
import 'country_codes.dart';

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

class CountryAlpha2 {
  final AD = CountryCodes.id020;
  final AE = CountryCodes.id784;
  final AF = CountryCodes.id004;
  final AG = CountryCodes.id028;
  final AI = CountryCodes.id660;
  final AL = CountryCodes.id008;
  final AM = CountryCodes.id051;
  final AO = CountryCodes.id024;
  final AQ = CountryCodes.id010;
  final AR = CountryCodes.id032;
  final AS = CountryCodes.id016;
  final AT = CountryCodes.id040;
  final AU = CountryCodes.id036;
  final AW = CountryCodes.id533;
  final AX = CountryCodes.id248;
  final AZ = CountryCodes.id031;
  final BA = CountryCodes.id070;
  final BB = CountryCodes.id052;
  final BD = CountryCodes.id050;
  final BE = CountryCodes.id056;
  final BF = CountryCodes.id854;
  final BG = CountryCodes.id100;
  final BH = CountryCodes.id048;
  final BI = CountryCodes.id108;
  final BJ = CountryCodes.id204;
  final BL = CountryCodes.id652;
  final BM = CountryCodes.id060;
  final BN = CountryCodes.id096;
  final BO = CountryCodes.id068;
  final BQ = CountryCodes.id535;
  final BR = CountryCodes.id076;
  final BS = CountryCodes.id044;
  final BT = CountryCodes.id064;
  final BV = CountryCodes.id074;
  final BW = CountryCodes.id072;
  final BY = CountryCodes.id112;
  final BZ = CountryCodes.id084;
  final CA = CountryCodes.id124;
  final CC = CountryCodes.id166;
  final CD = CountryCodes.id180;
  final CF = CountryCodes.id140;
  final CG = CountryCodes.id178;
  final CH = CountryCodes.id756;
  final CI = CountryCodes.id384;
  final CK = CountryCodes.id184;
  final CL = CountryCodes.id152;
  final CM = CountryCodes.id120;
  final CN = CountryCodes.id156;
  final CO = CountryCodes.id170;
  final CR = CountryCodes.id188;
  final CU = CountryCodes.id192;
  final CV = CountryCodes.id132;
  final CW = CountryCodes.id531;
  final CX = CountryCodes.id162;
  final CY = CountryCodes.id196;
  final CZ = CountryCodes.id203;
  final DE = CountryCodes.id276;
  final DJ = CountryCodes.id262;
  final DK = CountryCodes.id208;
  final DM = CountryCodes.id212;
  final DO = CountryCodes.id214;
  final DY = CountryCodes.id204;
  final DZ = CountryCodes.id012;
  final EC = CountryCodes.id218;
  final EE = CountryCodes.id233;
  final EG = CountryCodes.id818;
  final EH = CountryCodes.id732;
  final ER = CountryCodes.id232;
  final ES = CountryCodes.id724;
  final ET = CountryCodes.id231;
  final FI = CountryCodes.id246;
  final FJ = CountryCodes.id242;
  final FK = CountryCodes.id238;
  final FM = CountryCodes.id581;
  final FO = CountryCodes.id234;
  final FR = CountryCodes.id250;
  final GA = CountryCodes.id266;
  final GB = CountryCodes.id826;
  final GD = CountryCodes.id308;
  final GE = CountryCodes.id268;
  final GF = CountryCodes.id254;
  final GG = CountryCodes.id831;
  final GH = CountryCodes.id288;
  final GI = CountryCodes.id292;
  final GL = CountryCodes.id304;
  final GM = CountryCodes.id270;
  final GN = CountryCodes.id324;
  final GP = CountryCodes.id312;
  final GQ = CountryCodes.id226;
  final GR = CountryCodes.id300;
  final GS = CountryCodes.id239;
  final GT = CountryCodes.id320;
  final GU = CountryCodes.id316;
  final GW = CountryCodes.id624;
  final GY = CountryCodes.id328;
  final HK = CountryCodes.id344;
  final HM = CountryCodes.id334;
  final HN = CountryCodes.id340;
  final HR = CountryCodes.id191;
  final HT = CountryCodes.id332;
  final HU = CountryCodes.id348;
  final ID = CountryCodes.id360;
  final IE = CountryCodes.id372;
  final IL = CountryCodes.id376;
  final IM = CountryCodes.id833;
  final IN = CountryCodes.id356;
  final IO = CountryCodes.id086;
  final IQ = CountryCodes.id368;
  final IR = CountryCodes.id364;
  final IS = CountryCodes.id352;
  final IT = CountryCodes.id380;
  final JE = CountryCodes.id832;
  final JM = CountryCodes.id388;
  final JO = CountryCodes.id400;
  final JP = CountryCodes.id392;
  final KE = CountryCodes.id404;
  final KG = CountryCodes.id417;
  final KH = CountryCodes.id116;
  final KI = CountryCodes.id296;
  final KM = CountryCodes.id174;
  final KN = CountryCodes.id659;
  final KP = CountryCodes.id408;
  final KR = CountryCodes.id410;
  final KW = CountryCodes.id414;
  final KY = CountryCodes.id136;
  final KZ = CountryCodes.id398;
  final LA = CountryCodes.id418;
  final LB = CountryCodes.id422;
  final LC = CountryCodes.id662;
  final LI = CountryCodes.id438;
  final LK = CountryCodes.id144;
  final LR = CountryCodes.id430;
  final LS = CountryCodes.id426;
  final LT = CountryCodes.id440;
  final LU = CountryCodes.id442;
  final LV = CountryCodes.id428;
  final LY = CountryCodes.id434;
  final MA = CountryCodes.id504;
  final MC = CountryCodes.id492;
  final MD = CountryCodes.id498;
  final ME = CountryCodes.id499;
  final MF = CountryCodes.id663;
  final MG = CountryCodes.id450;
  final MH = CountryCodes.id584;
  final MK = CountryCodes.id807;
  final ML = CountryCodes.id466;
  final MM = CountryCodes.id104;
  final MN = CountryCodes.id496;
  final MO = CountryCodes.id446;
  final MP = CountryCodes.id580;
  final MQ = CountryCodes.id474;
  final MR = CountryCodes.id478;
  final MS = CountryCodes.id500;
  final MT = CountryCodes.id470;
  final MU = CountryCodes.id480;
  final MV = CountryCodes.id462;
  final MW = CountryCodes.id454;
  final MX = CountryCodes.id484;
  final MY = CountryCodes.id458;
  final MZ = CountryCodes.id508;
  final NA = CountryCodes.id516;
  final NC = CountryCodes.id540;
  final NE = CountryCodes.id562;
  final NF = CountryCodes.id574;
  final NG = CountryCodes.id566;
  final NI = CountryCodes.id558;
  final NL = CountryCodes.id528;
  final NO = CountryCodes.id578;
  final NP = CountryCodes.id524;
  final NR = CountryCodes.id520;
  final NU = CountryCodes.id570;
  final NZ = CountryCodes.id554;
  final OM = CountryCodes.id512;
  final PA = CountryCodes.id591;
  final PE = CountryCodes.id604;
  final PF = CountryCodes.id258;
  final PG = CountryCodes.id598;
  final PH = CountryCodes.id608;
  final PK = CountryCodes.id586;
  final PL = CountryCodes.id616;
  final PM = CountryCodes.id666;
  final PN = CountryCodes.id612;
  final PR = CountryCodes.id630;
  final PS = CountryCodes.id275;
  final PT = CountryCodes.id620;
  final PW = CountryCodes.id585;
  final PY = CountryCodes.id600;
  final QA = CountryCodes.id634;
  final RE = CountryCodes.id638;
  final RO = CountryCodes.id642;
  final RS = CountryCodes.id688;
  final RU = CountryCodes.id643;
  final RW = CountryCodes.id646;
  final SA = CountryCodes.id682;
  final SB = CountryCodes.id090;
  final SC = CountryCodes.id690;
  final SD = CountryCodes.id729;
  final SE = CountryCodes.id752;
  final SG = CountryCodes.id702;
  final SH = CountryCodes.id654;
  final SI = CountryCodes.id705;
  final SJ = CountryCodes.id744;
  final SK = CountryCodes.id703;
  final SL = CountryCodes.id694;
  final SM = CountryCodes.id674;
  final SN = CountryCodes.id686;
  final SO = CountryCodes.id706;
  final SR = CountryCodes.id740;
  final SS = CountryCodes.id728;
  final ST = CountryCodes.id678;
  final SV = CountryCodes.id222;
  final SX = CountryCodes.id534;
  final SY = CountryCodes.id760;
  final SZ = CountryCodes.id748;
  final TC = CountryCodes.id796;
  final TD = CountryCodes.id148;
  final TF = CountryCodes.id260;
  final TG = CountryCodes.id768;
  final TH = CountryCodes.id764;
  final TJ = CountryCodes.id762;
  final TK = CountryCodes.id772;
  final TL = CountryCodes.id626;
  final TM = CountryCodes.id795;
  final TN = CountryCodes.id788;
  final TO = CountryCodes.id776;
  final TR = CountryCodes.id792;
  final TT = CountryCodes.id780;
  final TV = CountryCodes.id798;
  final TW = CountryCodes.id158;
  final TZ = CountryCodes.id834;
  final UA = CountryCodes.id804;
  final UG = CountryCodes.id800;
  final UK = CountryCodes.id826.clone(alpha2: 'UK');
  final UM = CountryCodes.id581;
  final US = CountryCodes.id840;
  final UY = CountryCodes.id858;
  final UZ = CountryCodes.id860;
  final VA = CountryCodes.id336;
  final VC = CountryCodes.id670;
  final VE = CountryCodes.id862;
  final VG = CountryCodes.id092;
  final VI = CountryCodes.id850;
  final VN = CountryCodes.id704;
  final VU = CountryCodes.id548;
  final WF = CountryCodes.id876;
  final WS = CountryCodes.id882;
  final YE = CountryCodes.id887;
  final YT = CountryCodes.id175;
  final ZA = CountryCodes.id710;
  final ZM = CountryCodes.id894;
  final ZW = CountryCodes.id716;

  late final List<CountryCode> values;

  CountryAlpha2() {
    values = [
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
      ZW,
    ];
  }
}