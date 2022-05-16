import 'package:collection/collection.dart';

import 'country_code.dart';
import 'enum_country_code.dart';

/*
ALPHA-3

**ABW  Aruba
**AFG  Afghanistan
**AGO  Angola
**AIA  Anguilla
**ALA  Åland Islands
**ALB  Albania
**AND  Andorra
**ARE  United Arab Emirates
**ARG  Argentina
**ARM  Armenia
**ASM  American Samoa
**ATA  Antarctica
**ATF  French Southern Territories
**ATG  Antigua and Barbuda
**AUS  Australia
**AUT  Austria
**AZE  Azerbaijan
**BDI  Burundi
**BEL  Belgium
**BEN  Benin
**BES  Bonaire, Sint Eustatius and Saba
**BFA  Burkina Faso
**BGD  Bangladesh
**BGR  Bulgaria
**BHR  Bahrain
**BHS  Bahamas
**BIH  Bosnia and Herzegovina
**BLM  Saint Barthélemy
**BLR  Belarus
**BLZ  Belize
**BMU  Bermuda
**BOL  Bolivia (Plurinational State of)
**BRA  Brazil
**BRB  Barbados
**BRN  Brunei Darussalam
**BTN  Bhutan
**BVT  Bouvet Island
**BWA  Botswana
**CAF  Central African Republic
**CAN  Canada
**CCK  Cocos (Keeling) Islands
**CHE  Switzerland
**CHL  Chile
**CHN  China
**CIV  Côte d'Ivoire
**CMR  Cameroon
**COD  Congo, Democratic Republic of the
**COG  Congo
**COK  Cook Islands
**COL  Colombia
**COM  Comoros
**CPV  Cabo Verde
**CRI  Costa Rica
**CUB  Cuba
**CUW  Curaçao
**CXR  Christmas Island
**CYM  Cayman Islands
**CYP  Cyprus
**CZE  Czechia
**DEU  Germany
**DJI  Djibouti
**DMA  Dominica
**DNK  Denmark
**DOM  Dominican Republic
**DZA  Algeria
**ECU  Ecuador
**EGY  Egypt
**ERI  Eritrea
**ESH  Western Sahara
**ESP  Spain
**EST  Estonia
**ETH  Ethiopia
**FIN  Finland
**FJI  Fiji
**FLK  Falkland Islands (Malvinas)
**FRA  France
**FRO  Faroe Islands
**FSM  Micronesia (Federated States of)
**GAB  Gabon
**GBR  United Kingdom of Great Britain and Northern Ireland
**GEO  Georgia
**GGY  Guernsey
**GHA  Ghana
**GIB  Gibraltar
**GIN  Guinea
**GLP  Guadeloupe
**GMB  Gambia
**GNB  Guinea-Bissau
**GNQ  Equatorial Guinea
**GRC  Greece
**GRD  Grenada
**GRL  Greenland
**GTM  Guatemala
**GUF  French Guiana
**GUM  Guam
**GUY  Guyana
**HKG  Hong Kong
**HMD  Heard Island and McDonald Islands
**HND  Honduras
**HRV  Croatia
**HTI  Haiti
**HUN  Hungary
**IDN  Indonesia
**IMN  Isle of Man
**IND  India
**IOT  British Indian Ocean Territory
**IRL  Ireland
**IRN  Iran (Islamic Republic of)
**IRQ  Iraq
**ISL  Iceland
**ISR  Israel
**ITA  Italy
**JAM  Jamaica
**JEY  Jersey
**JOR  Jordan
**JPN  Japan
**KAZ  Kazakhstan
**KEN  Kenya
**KGZ  Kyrgyzstan
**KHM  Cambodia
**KIR  Kiribati
**KNA  Saint Kitts and Nevis
**KOR  Korea, Republic of
**KWT  Kuwait
**LAO  Lao People's Democratic Republic
**LBN  Lebanon
**LBR  Liberia
**LBY  Libya
**LCA  Saint Lucia
**LIE  Liechtenstein
**LKA  Sri Lanka
**LSO  Lesotho
**LTU  Lithuania
**LUX  Luxembourg
**LVA  Latvia
**MAC  Macao
**MAF  Saint Martin (French part)
**MAR  Morocco
**MCO  Monaco
**MDA  Moldova, Republic of
**MDG  Madagascar
**MDV  Maldives
**MEX  Mexico
**MHL  Marshall Islands
**MKD  North Macedonia
**MLI  Mali
**MLT  Malta
**MMR  Myanmar
**MNE  Montenegro
**MNG  Mongolia
**MNP  Northern Mariana Islands
**MOZ  Mozambique
**MRT  Mauritania
**MSR  Montserrat
**MTQ  Martinique
**MUS  Mauritius
**MWI  Malawi
**MYS  Malaysia
**MYT  Mayotte
**NAM  Namibia
**NCL  New Caledonia
**NER  Niger
**NFK  Norfolk Island
**NGA  Nigeria
**NIC  Nicaragua
**NIU  Niue
**NLD  Netherlands
**NOR  Norway
**NPL  Nepal
**NRU  Nauru
**NZL  New Zealand
**OMN  Oman
**PAK  Pakistan
**PAN  Panama
**PCN  Pitcairn
**PER  Peru
**PHL  Philippines
**PLW  Palau
**PNG  Papua New Guinea
**POL  Poland
**PRI  Puerto Rico
**PRK  Korea (Democratic People's Republic of)
**PRT  Portugal
**PRY  Paraguay
**PSE  Palestine, State of
**PYF  French Polynesia
**QAT  Qatar
**REU  Réunion
**ROU  Romania
**RUS  Russian Federation
**RWA  Rwanda
**SAU  Saudi Arabia
**SDN  Sudan
**SEN  Senegal
**SGP  Singapore
**SGS  South Georgia and the South Sandwich Islands
**SHN  Saint Helena, Ascension and Tristan da Cunha
**SJM  Svalbard and Jan Mayen
**SLB  Solomon Islands
**SLE  Sierra Leone
**SLV  El Salvador
**SMR  San Marino
**SOM  Somalia
**SPM  Saint Pierre and Miquelon
**SRB  Serbia
**SSD  South Sudan
**STP  Sao Tome and Principe
**SUR  Suriname
**SVK  Slovakia
**SVN  Slovenia
**SWE  Sweden
**SWZ  Eswatini
**SXM  Sint Maarten (Dutch part)
**SYC  Seychelles
**SYR  Syrian Arab Republic
**TCA  Turks and Caicos Islands
**TCD  Chad
**TGO  Togo
**THA  Thailand
**TJK  Tajikistan
**TKL  Tokelau
**TKM  Turkmenistan
**TLS  Timor-Leste
**TON  Tonga
**TTO  Trinidad and Tobago
**TUN  Tunisia
**TUR  Turkey
**TUV  Tuvalu
**TWN  Taiwan, Province of China
**TZA  Tanzania, United Republic of
**UGA  Uganda
**UKR  Ukraine
**UMI  United States Minor Outlying Islands
**URY  Uruguay
**USA  United States of America
**UZB  Uzbekistan
**VAT  Holy See
**VCT  Saint Vincent and the Grenadines
**VEN  Venezuela (Bolivarian Republic of)
**VGB  Virgin Islands (British)
**VIR  Virgin Islands (U.S.)
**VNM  Viet Nam
**VUT  Vanuatu
**WLF  Wallis and Futuna
**WSM  Samoa
**YEM  Yemen
**ZAF  South Africa
**ZMB  Zambia
**ZWE  Zimbabwe
*/

enum EnumCountryAlpha3 {
  ABW,
  AFG,
  AGO,
  AIA,
  ALA,
  ALB,
  AND,
  ARE,
  ARG,
  ARM,
  ASM,
  ATA,
  ATF,
  ATG,
  AUS,
  AUT,
  AZE,
  BDI,
  BEL,
  BEN,
  BES,
  BFA,
  BGD,
  BGR,
  BHR,
  BHS,
  BIH,
  BLM,
  BLR,
  BLZ,
  BMU,
  BOL,
  BRA,
  BRB,
  BRN,
  BTN,
  BVT,
  BWA,
  CAF,
  CAN,
  CCK,
  CHE,
  CHL,
  CHN,
  CIV,
  CMR,
  COD,
  COG,
  COK,
  COL,
  COM,
  CPV,
  CRI,
  CUB,
  CUW,
  CXR,
  CYM,
  CYP,
  CZE,
  DEU,
  DJI,
  DMA,
  DNK,
  DOM,
  DZA,
  ECU,
  EGY,
  ERI,
  ESH,
  ESP,
  EST,
  ETH,
  FIN,
  FJI,
  FLK,
  FRA,
  FRO,
  FSM,
  GAB,
  GBR,
  GEO,
  GGY,
  GHA,
  GIB,
  GIN,
  GLP,
  GMB,
  GNB,
  GNQ,
  GRC,
  GRD,
  GRL,
  GTM,
  GUF,
  GUM,
  GUY,
  HKG,
  HMD,
  HND,
  HRV,
  HTI,
  HUN,
  IDN,
  IMN,
  IND,
  IOT,
  IRL,
  IRN,
  IRQ,
  ISL,
  ISR,
  ITA,
  JAM,
  JEY,
  JOR,
  JPN,
  KAZ,
  KEN,
  KGZ,
  KHM,
  KIR,
  KNA,
  KOR,
  KWT,
  LAO,
  LBN,
  LBR,
  LBY,
  LCA,
  LIE,
  LKA,
  LSA,
  LTU,
  LUX,
  LVA,
  MAC,
  MAF,
  MAR,
  MCO,
  MDA,
  MDG,
  MDV,
  MEX,
  MHL,
  MKD,
  MLI,
  MLT,
  MMR,
  MNE,
  MNG,
  MNP,
  MOZ,
  MRT,
  MSR,
  MTQ,
  MUS,
  MWI,
  MYS,
  MYT,
  NAM,
  NCL,
  NER,
  NFK,
  NGA,
  NIC,
  NIU,
  NLD,
  NOR,
  NPL,
  NRU,
  NZL,
  OMN,
  PAK,
  PAN,
  PCN,
  PER,
  PHL,
  PLW,
  PNG,
  POL,
  PRI,
  PRK,
  PRT,
  PRY,
  PSE,
  PYF,
  QAT,
  REU,
  ROU,
  RUS,
  RWA,
  SAU,
  SDN,
  SEN,
  SGP,
  SGS,
  SHN,
  SJM,
  SLB,
  SLE,
  SLV,
  SMR,
  SOM,
  SPM,
  SRB,
  SSD,
  STP,
  SUR,
  SVK,
  SVN,
  SWE,
  SWZ,
  SXM,
  SYC,
  SYR,
  TCA,
  TCD,
  TGO,
  THA,
  TJK,
  TKL,
  TKM,
  TLS,
  TON,
  TTO,
  TUN,
  TUR,
  TUV,
  TWN,
  TZA,
  UGA,
  UKR,
  UMI,
  URY,
  USA,
  UZB,
  VAT,
  VCT,
  VEN,
  VGB,
  VIR,
  VNM,
  VUT,
  WLF,
  WSM,
  YEM,
  ZAF,
  ZMB,
  ZWE;

  static EnumCountryAlpha3 byId(String id) {
    return EnumCountryAlpha3.values
      .firstWhere((element) => 
        element.code.id.toLowerCase() == id.toLowerCase());
  }

  static EnumCountryAlpha3 byAlpha2(String alpha2) {
    return EnumCountryAlpha3.values
      .firstWhere((element) => 
        element.code.alpha2.toLowerCase() == alpha2.toLowerCase());
  }

  static EnumCountryAlpha3 byAlpha3(String alpha3) {
    return EnumCountryAlpha3.values
      .firstWhere((element) => 
        element.code.alpha3.toLowerCase() == alpha3.toLowerCase());
  }

  static EnumCountryAlpha3? byIdOrNull(String id) {
    return EnumCountryAlpha3.values
      .firstWhereOrNull((element) => 
        element.code.id.toLowerCase() == id.toLowerCase());
  }

  static EnumCountryAlpha3? byAlpha2OrNull(String alpha2) {
    return EnumCountryAlpha3.values
      .firstWhereOrNull((element) => 
        element.code.alpha2.toLowerCase() == alpha2.toLowerCase());
  }

  static EnumCountryAlpha3? byAlpha3OrNull(String alpha3) {
    return EnumCountryAlpha3.values
      .firstWhereOrNull((element) => 
        element.code.alpha3.toLowerCase() == alpha3.toLowerCase());
  }

  CountryCode get code {
    switch(this) {
      case EnumCountryAlpha3.ABW: 
        return EnumCountryCode.id533.code;
      case EnumCountryAlpha3.AFG: 
        return EnumCountryCode.id004.code;
      case EnumCountryAlpha3.AGO: 
        return EnumCountryCode.id024.code;
      case EnumCountryAlpha3.AIA: 
        return EnumCountryCode.id660.code;
      case EnumCountryAlpha3.ALA: 
        return EnumCountryCode.id248.code;
      case EnumCountryAlpha3.ALB: 
        return EnumCountryCode.id008.code;
      case EnumCountryAlpha3.AND: 
        return EnumCountryCode.id020.code;
      case EnumCountryAlpha3.ARE: 
        return EnumCountryCode.id784.code;
      case EnumCountryAlpha3.ARG: 
        return EnumCountryCode.id032.code;
      case EnumCountryAlpha3.ARM: 
        return EnumCountryCode.id051.code;
      case EnumCountryAlpha3.ASM: 
        return EnumCountryCode.id016.code;
      case EnumCountryAlpha3.ATA: 
        return EnumCountryCode.id010.code;
      case EnumCountryAlpha3.ATF: 
        return EnumCountryCode.id260.code;
      case EnumCountryAlpha3.ATG: 
        return EnumCountryCode.id028.code;
      case EnumCountryAlpha3.AUS: 
        return EnumCountryCode.id036.code;
      case EnumCountryAlpha3.AUT: 
        return EnumCountryCode.id040.code;
      case EnumCountryAlpha3.AZE: 
        return EnumCountryCode.id031.code;
      case EnumCountryAlpha3.BDI: 
        return EnumCountryCode.id108.code;
      case EnumCountryAlpha3.BEL: 
        return EnumCountryCode.id056.code;
      case EnumCountryAlpha3.BEN: 
        return EnumCountryCode.id204.code;
      case EnumCountryAlpha3.BES: 
        return EnumCountryCode.id535.code;
      case EnumCountryAlpha3.BFA: 
        return EnumCountryCode.id854.code;
      case EnumCountryAlpha3.BGD: 
        return EnumCountryCode.id050.code;
      case EnumCountryAlpha3.BGR: 
        return EnumCountryCode.id100.code;
      case EnumCountryAlpha3.BHR: 
        return EnumCountryCode.id048.code;
      case EnumCountryAlpha3.BHS: 
        return EnumCountryCode.id044.code;
      case EnumCountryAlpha3.BIH: 
        return EnumCountryCode.id070.code;
      case EnumCountryAlpha3.BLM: 
        return EnumCountryCode.id652.code;
      case EnumCountryAlpha3.BLR: 
        return EnumCountryCode.id112.code;
      case EnumCountryAlpha3.BLZ: 
        return EnumCountryCode.id084.code;
      case EnumCountryAlpha3.BMU: 
        return EnumCountryCode.id060.code;
      case EnumCountryAlpha3.BOL: 
        return EnumCountryCode.id068.code;
      case EnumCountryAlpha3.BRA: 
        return EnumCountryCode.id076.code;
      case EnumCountryAlpha3.BRB: 
        return EnumCountryCode.id052.code;
      case EnumCountryAlpha3.BRN: 
        return EnumCountryCode.id096.code;
      case EnumCountryAlpha3.BTN: 
        return EnumCountryCode.id064.code;
      case EnumCountryAlpha3.BVT: 
        return EnumCountryCode.id074.code;
      case EnumCountryAlpha3.BWA: 
        return EnumCountryCode.id072.code;
      case EnumCountryAlpha3.CAF: 
        return EnumCountryCode.id140.code;
      case EnumCountryAlpha3.CAN: 
        return EnumCountryCode.id124.code;
      case EnumCountryAlpha3.CCK: 
        return EnumCountryCode.id166.code;
      case EnumCountryAlpha3.CHE: 
        return EnumCountryCode.id756.code;
      case EnumCountryAlpha3.CHL: 
        return EnumCountryCode.id152.code;
      case EnumCountryAlpha3.CHN: 
        return EnumCountryCode.id156.code;
      case EnumCountryAlpha3.CIV: 
        return EnumCountryCode.id384.code;
      case EnumCountryAlpha3.CMR: 
        return EnumCountryCode.id120.code;
      case EnumCountryAlpha3.COD: 
        return EnumCountryCode.id180.code;
      case EnumCountryAlpha3.COG: 
        return EnumCountryCode.id178.code;
      case EnumCountryAlpha3.COK: 
        return EnumCountryCode.id184.code;
      case EnumCountryAlpha3.COL: 
        return EnumCountryCode.id170.code;
      case EnumCountryAlpha3.COM: 
        return EnumCountryCode.id174.code;
      case EnumCountryAlpha3.CPV: 
        return EnumCountryCode.id132.code;
      case EnumCountryAlpha3.CRI: 
        return EnumCountryCode.id188.code;
      case EnumCountryAlpha3.CUB: 
        return EnumCountryCode.id192.code;
      case EnumCountryAlpha3.CUW: 
        return EnumCountryCode.id531.code;
      case EnumCountryAlpha3.CXR: 
        return EnumCountryCode.id162.code;
      case EnumCountryAlpha3.CYM: 
        return EnumCountryCode.id136.code;
      case EnumCountryAlpha3.CYP: 
        return EnumCountryCode.id196.code;
      case EnumCountryAlpha3.CZE: 
        return EnumCountryCode.id203.code;
      case EnumCountryAlpha3.DEU: 
        return EnumCountryCode.id276.code;
      case EnumCountryAlpha3.DJI: 
        return EnumCountryCode.id262.code;
      case EnumCountryAlpha3.DMA: 
        return EnumCountryCode.id212.code;
      case EnumCountryAlpha3.DNK: 
        return EnumCountryCode.id208.code;
      case EnumCountryAlpha3.DOM: 
        return EnumCountryCode.id214.code;
      case EnumCountryAlpha3.DZA: 
        return EnumCountryCode.id012.code;
      case EnumCountryAlpha3.ECU: 
        return EnumCountryCode.id218.code;
      case EnumCountryAlpha3.EGY: 
        return EnumCountryCode.id818.code;
      case EnumCountryAlpha3.ERI: 
        return EnumCountryCode.id232.code;
      case EnumCountryAlpha3.ESH: 
        return EnumCountryCode.id732.code;
      case EnumCountryAlpha3.ESP: 
        return EnumCountryCode.id724.code;
      case EnumCountryAlpha3.EST: 
        return EnumCountryCode.id233.code;
      case EnumCountryAlpha3.ETH: 
        return EnumCountryCode.id231.code;
      case EnumCountryAlpha3.FIN: 
        return EnumCountryCode.id246.code;
      case EnumCountryAlpha3.FJI: 
        return EnumCountryCode.id242.code;
      case EnumCountryAlpha3.FLK: 
        return EnumCountryCode.id238.code;
      case EnumCountryAlpha3.FRA: 
        return EnumCountryCode.id250.code;
      case EnumCountryAlpha3.FRO: 
        return EnumCountryCode.id234.code;
      case EnumCountryAlpha3.FSM: 
        return EnumCountryCode.id581.code;
      case EnumCountryAlpha3.GAB: 
        return EnumCountryCode.id266.code;
      case EnumCountryAlpha3.GBR: 
        return EnumCountryCode.id826.code;
      case EnumCountryAlpha3.GEO: 
        return EnumCountryCode.id268.code;
      case EnumCountryAlpha3.GGY: 
        return EnumCountryCode.id831.code;
      case EnumCountryAlpha3.GHA: 
        return EnumCountryCode.id288.code;
      case EnumCountryAlpha3.GIB: 
        return EnumCountryCode.id292.code;
      case EnumCountryAlpha3.GIN: 
        return EnumCountryCode.id324.code;
      case EnumCountryAlpha3.GLP: 
        return EnumCountryCode.id312.code;
      case EnumCountryAlpha3.GMB: 
        return EnumCountryCode.id270.code;
      case EnumCountryAlpha3.GNB: 
        return EnumCountryCode.id624.code;
      case EnumCountryAlpha3.GNQ: 
        return EnumCountryCode.id226.code;
      case EnumCountryAlpha3.GRC: 
        return EnumCountryCode.id300.code;
      case EnumCountryAlpha3.GRD: 
        return EnumCountryCode.id308.code;
      case EnumCountryAlpha3.GRL: 
        return EnumCountryCode.id304.code;
      case EnumCountryAlpha3.GTM: 
        return EnumCountryCode.id320.code;
      case EnumCountryAlpha3.GUF: 
        return EnumCountryCode.id254.code;
      case EnumCountryAlpha3.GUM: 
        return EnumCountryCode.id316.code;
      case EnumCountryAlpha3.GUY: 
        return EnumCountryCode.id328.code;
      case EnumCountryAlpha3.HKG: 
        return EnumCountryCode.id344.code;
      case EnumCountryAlpha3.HMD: 
        return EnumCountryCode.id334.code;
      case EnumCountryAlpha3.HND: 
        return EnumCountryCode.id340.code;
      case EnumCountryAlpha3.HRV: 
        return EnumCountryCode.id191.code;
      case EnumCountryAlpha3.HTI: 
        return EnumCountryCode.id332.code;
      case EnumCountryAlpha3.HUN: 
        return EnumCountryCode.id348.code;
      case EnumCountryAlpha3.IDN: 
        return EnumCountryCode.id360.code;
      case EnumCountryAlpha3.IMN: 
        return EnumCountryCode.id833.code;
      case EnumCountryAlpha3.IND: 
        return EnumCountryCode.id356.code;
      case EnumCountryAlpha3.IOT: 
        return EnumCountryCode.id086.code;
      case EnumCountryAlpha3.IRL: 
        return EnumCountryCode.id372.code;
      case EnumCountryAlpha3.IRN: 
        return EnumCountryCode.id364.code;
      case EnumCountryAlpha3.IRQ: 
        return EnumCountryCode.id368.code;
      case EnumCountryAlpha3.ISL: 
        return EnumCountryCode.id352.code;
      case EnumCountryAlpha3.ISR: 
        return EnumCountryCode.id376.code;
      case EnumCountryAlpha3.ITA: 
        return EnumCountryCode.id380.code;
      case EnumCountryAlpha3.JAM: 
        return EnumCountryCode.id388.code;
      case EnumCountryAlpha3.JEY: 
        return EnumCountryCode.id832.code;
      case EnumCountryAlpha3.JOR: 
        return EnumCountryCode.id400.code;
      case EnumCountryAlpha3.JPN: 
        return EnumCountryCode.id392.code;
      case EnumCountryAlpha3.KAZ: 
        return EnumCountryCode.id398.code;
      case EnumCountryAlpha3.KEN: 
        return EnumCountryCode.id404.code;
      case EnumCountryAlpha3.KGZ: 
        return EnumCountryCode.id417.code;
      case EnumCountryAlpha3.KHM: 
        return EnumCountryCode.id116.code;
      case EnumCountryAlpha3.KIR: 
        return EnumCountryCode.id296.code;
      case EnumCountryAlpha3.KNA: 
        return EnumCountryCode.id659.code;
      case EnumCountryAlpha3.KOR: 
        return EnumCountryCode.id410.code;
      case EnumCountryAlpha3.KWT: 
        return EnumCountryCode.id414.code;
      case EnumCountryAlpha3.LAO: 
        return EnumCountryCode.id418.code;
      case EnumCountryAlpha3.LBN: 
        return EnumCountryCode.id422.code;
      case EnumCountryAlpha3.LBR: 
        return EnumCountryCode.id430.code;
      case EnumCountryAlpha3.LBY: 
        return EnumCountryCode.id434.code;
      case EnumCountryAlpha3.LCA: 
        return EnumCountryCode.id662.code;
      case EnumCountryAlpha3.LIE: 
        return EnumCountryCode.id438.code;
      case EnumCountryAlpha3.LKA: 
        return EnumCountryCode.id144.code;
      case EnumCountryAlpha3.LSA: 
        return EnumCountryCode.id426.code;
      case EnumCountryAlpha3.LTU: 
        return EnumCountryCode.id440.code;
      case EnumCountryAlpha3.LUX: 
        return EnumCountryCode.id442.code;
      case EnumCountryAlpha3.LVA: 
        return EnumCountryCode.id428.code;
      case EnumCountryAlpha3.MAC: 
        return EnumCountryCode.id446.code;
      case EnumCountryAlpha3.MAF: 
        return EnumCountryCode.id663.code;
      case EnumCountryAlpha3.MAR: 
        return EnumCountryCode.id504.code;
      case EnumCountryAlpha3.MCO: 
        return EnumCountryCode.id492.code;
      case EnumCountryAlpha3.MDA: 
        return EnumCountryCode.id498.code;
      case EnumCountryAlpha3.MDG: 
        return EnumCountryCode.id450.code;
      case EnumCountryAlpha3.MDV: 
        return EnumCountryCode.id462.code;
      case EnumCountryAlpha3.MEX: 
        return EnumCountryCode.id484.code;
      case EnumCountryAlpha3.MHL: 
        return EnumCountryCode.id584.code;
      case EnumCountryAlpha3.MKD: 
        return EnumCountryCode.id807.code;
      case EnumCountryAlpha3.MLI: 
        return EnumCountryCode.id466.code;
      case EnumCountryAlpha3.MLT: 
        return EnumCountryCode.id470.code;
      case EnumCountryAlpha3.MMR: 
        return EnumCountryCode.id104.code;
      case EnumCountryAlpha3.MNE: 
        return EnumCountryCode.id499.code;
      case EnumCountryAlpha3.MNG: 
        return EnumCountryCode.id496.code;
      case EnumCountryAlpha3.MNP: 
        return EnumCountryCode.id580.code;
      case EnumCountryAlpha3.MOZ: 
        return EnumCountryCode.id508.code;
      case EnumCountryAlpha3.MRT: 
        return EnumCountryCode.id478.code;
      case EnumCountryAlpha3.MSR: 
        return EnumCountryCode.id500.code;
      case EnumCountryAlpha3.MTQ: 
        return EnumCountryCode.id474.code;
      case EnumCountryAlpha3.MUS: 
        return EnumCountryCode.id480.code;
      case EnumCountryAlpha3.MWI: 
        return EnumCountryCode.id454.code;
      case EnumCountryAlpha3.MYS: 
        return EnumCountryCode.id458.code;
      case EnumCountryAlpha3.MYT: 
        return EnumCountryCode.id175.code;
      case EnumCountryAlpha3.NAM: 
        return EnumCountryCode.id516.code;
      case EnumCountryAlpha3.NCL: 
        return EnumCountryCode.id540.code;
      case EnumCountryAlpha3.NER: 
        return EnumCountryCode.id562.code;
      case EnumCountryAlpha3.NFK: 
        return EnumCountryCode.id574.code;
      case EnumCountryAlpha3.NGA: 
        return EnumCountryCode.id566.code;
      case EnumCountryAlpha3.NIC: 
        return EnumCountryCode.id558.code;
      case EnumCountryAlpha3.NIU: 
        return EnumCountryCode.id570.code;
      case EnumCountryAlpha3.NLD: 
        return EnumCountryCode.id528.code;
      case EnumCountryAlpha3.NOR: 
        return EnumCountryCode.id578.code;
      case EnumCountryAlpha3.NPL: 
        return EnumCountryCode.id524.code;
      case EnumCountryAlpha3.NRU: 
        return EnumCountryCode.id520.code;
      case EnumCountryAlpha3.NZL: 
        return EnumCountryCode.id554.code;
      case EnumCountryAlpha3.OMN: 
        return EnumCountryCode.id512.code;
      case EnumCountryAlpha3.PAK: 
        return EnumCountryCode.id586.code;
      case EnumCountryAlpha3.PAN: 
        return EnumCountryCode.id591.code;
      case EnumCountryAlpha3.PCN: 
        return EnumCountryCode.id612.code;
      case EnumCountryAlpha3.PER: 
        return EnumCountryCode.id604.code;
      case EnumCountryAlpha3.PHL: 
        return EnumCountryCode.id608.code;
      case EnumCountryAlpha3.PLW: 
        return EnumCountryCode.id585.code;
      case EnumCountryAlpha3.PNG: 
        return EnumCountryCode.id598.code;
      case EnumCountryAlpha3.POL: 
        return EnumCountryCode.id616.code;
      case EnumCountryAlpha3.PRI: 
        return EnumCountryCode.id630.code;
      case EnumCountryAlpha3.PRK: 
        return EnumCountryCode.id408.code;
      case EnumCountryAlpha3.PRT: 
        return EnumCountryCode.id620.code;
      case EnumCountryAlpha3.PRY: 
        return EnumCountryCode.id600.code;
      case EnumCountryAlpha3.PSE: 
        return EnumCountryCode.id275.code;
      case EnumCountryAlpha3.PYF: 
        return EnumCountryCode.id258.code;
      case EnumCountryAlpha3.QAT: 
        return EnumCountryCode.id634.code;
      case EnumCountryAlpha3.REU: 
        return EnumCountryCode.id638.code;
      case EnumCountryAlpha3.ROU: 
        return EnumCountryCode.id642.code;
      case EnumCountryAlpha3.RUS: 
        return EnumCountryCode.id643.code;
      case EnumCountryAlpha3.RWA: 
        return EnumCountryCode.id646.code;
      case EnumCountryAlpha3.SAU: 
        return EnumCountryCode.id682.code;
      case EnumCountryAlpha3.SDN: 
        return EnumCountryCode.id729.code;
      case EnumCountryAlpha3.SEN: 
        return EnumCountryCode.id686.code;
      case EnumCountryAlpha3.SGP: 
        return EnumCountryCode.id702.code;
      case EnumCountryAlpha3.SGS: 
        return EnumCountryCode.id239.code;
      case EnumCountryAlpha3.SHN: 
        return EnumCountryCode.id654.code;
      case EnumCountryAlpha3.SJM: 
        return EnumCountryCode.id744.code;
      case EnumCountryAlpha3.SLB: 
        return EnumCountryCode.id090.code;
      case EnumCountryAlpha3.SLE: 
        return EnumCountryCode.id694.code;
      case EnumCountryAlpha3.SLV: 
        return EnumCountryCode.id222.code;
      case EnumCountryAlpha3.SMR: 
        return EnumCountryCode.id674.code;
      case EnumCountryAlpha3.SOM: 
        return EnumCountryCode.id706.code;
      case EnumCountryAlpha3.SPM: 
        return EnumCountryCode.id666.code;
      case EnumCountryAlpha3.SRB: 
        return EnumCountryCode.id688.code;
      case EnumCountryAlpha3.SSD: 
        return EnumCountryCode.id728.code;
      case EnumCountryAlpha3.STP: 
        return EnumCountryCode.id678.code;
      case EnumCountryAlpha3.SUR: 
        return EnumCountryCode.id740.code;
      case EnumCountryAlpha3.SVK: 
        return EnumCountryCode.id703.code;
      case EnumCountryAlpha3.SVN: 
        return EnumCountryCode.id705.code;
      case EnumCountryAlpha3.SWE: 
        return EnumCountryCode.id752.code;
      case EnumCountryAlpha3.SWZ: 
        return EnumCountryCode.id748.code;
      case EnumCountryAlpha3.SXM: 
        return EnumCountryCode.id534.code;
      case EnumCountryAlpha3.SYC: 
        return EnumCountryCode.id690.code;
      case EnumCountryAlpha3.SYR: 
        return EnumCountryCode.id760.code;
      case EnumCountryAlpha3.TCA: 
        return EnumCountryCode.id796.code;
      case EnumCountryAlpha3.TCD: 
        return EnumCountryCode.id148.code;
      case EnumCountryAlpha3.TGO: 
        return EnumCountryCode.id768.code;
      case EnumCountryAlpha3.THA: 
        return EnumCountryCode.id764.code;
      case EnumCountryAlpha3.TJK: 
        return EnumCountryCode.id762.code;
      case EnumCountryAlpha3.TKL: 
        return EnumCountryCode.id772.code;
      case EnumCountryAlpha3.TKM: 
        return EnumCountryCode.id795.code;
      case EnumCountryAlpha3.TLS: 
        return EnumCountryCode.id626.code;
      case EnumCountryAlpha3.TON: 
        return EnumCountryCode.id776.code;
      case EnumCountryAlpha3.TTO: 
        return EnumCountryCode.id780.code;
      case EnumCountryAlpha3.TUN: 
        return EnumCountryCode.id788.code;
      case EnumCountryAlpha3.TUR: 
        return EnumCountryCode.id792.code;
      case EnumCountryAlpha3.TUV: 
        return EnumCountryCode.id798.code;
      case EnumCountryAlpha3.TWN: 
        return EnumCountryCode.id158.code;
      case EnumCountryAlpha3.TZA: 
        return EnumCountryCode.id834.code;
      case EnumCountryAlpha3.UGA: 
        return EnumCountryCode.id800.code;
      case EnumCountryAlpha3.UKR: 
        return EnumCountryCode.id804.code;
      case EnumCountryAlpha3.UMI: 
        return EnumCountryCode.id581.code;
      case EnumCountryAlpha3.URY: 
        return EnumCountryCode.id858.code;
      case EnumCountryAlpha3.USA: 
        return EnumCountryCode.id840.code;
      case EnumCountryAlpha3.UZB: 
        return EnumCountryCode.id860.code;
      case EnumCountryAlpha3.VAT: 
        return EnumCountryCode.id336.code;
      case EnumCountryAlpha3.VCT: 
        return EnumCountryCode.id670.code;
      case EnumCountryAlpha3.VEN: 
        return EnumCountryCode.id862.code;
      case EnumCountryAlpha3.VGB: 
        return EnumCountryCode.id092.code;
      case EnumCountryAlpha3.VIR: 
        return EnumCountryCode.id850.code;
      case EnumCountryAlpha3.VNM: 
        return EnumCountryCode.id704.code;
      case EnumCountryAlpha3.VUT: 
        return EnumCountryCode.id548.code;
      case EnumCountryAlpha3.WLF: 
        return EnumCountryCode.id876.code;
      case EnumCountryAlpha3.WSM: 
        return EnumCountryCode.id882.code;
      case EnumCountryAlpha3.YEM: 
        return EnumCountryCode.id887.code;
      case EnumCountryAlpha3.ZAF: 
        return EnumCountryCode.id710.code;
      case EnumCountryAlpha3.ZMB: 
        return EnumCountryCode.id894.code;
      case EnumCountryAlpha3.ZWE: 
        return EnumCountryCode.id716.code;
    }
  }
}