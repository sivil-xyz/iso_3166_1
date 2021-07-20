import 'country_code.dart';
import 'country_codes.dart';

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

class CountryAlpha3 {
  final ABW = CountryCodes.id533;
  final AFG = CountryCodes.id004;
  final AGO = CountryCodes.id024;
  final AIA = CountryCodes.id660;
  final ALA = CountryCodes.id248;
  final ALB = CountryCodes.id008;
  final AND = CountryCodes.id020;
  final ARE = CountryCodes.id784;
  final ARG = CountryCodes.id032;
  final ARM = CountryCodes.id051;
  final ASM = CountryCodes.id016;
  final ATA = CountryCodes.id010;
  final ATF = CountryCodes.id260;
  final ATG = CountryCodes.id028;
  final AUS = CountryCodes.id036;
  final AUT = CountryCodes.id040;
  final AZE = CountryCodes.id031;
  final BDI = CountryCodes.id108;
  final BEL = CountryCodes.id056;
  final BEN = CountryCodes.id204;
  final BES = CountryCodes.id535;
  final BFA = CountryCodes.id854;
  final BGD = CountryCodes.id050;
  final BGR = CountryCodes.id100;
  final BHR = CountryCodes.id048;
  final BHS = CountryCodes.id044;
  final BIH = CountryCodes.id070;
  final BLM = CountryCodes.id652;
  final BLR = CountryCodes.id112;
  final BLZ = CountryCodes.id084;
  final BMU = CountryCodes.id060;
  final BOL = CountryCodes.id068;
  final BRA = CountryCodes.id076;
  final BRB = CountryCodes.id052;
  final BRN = CountryCodes.id096;
  final BTN = CountryCodes.id064;
  final BVT = CountryCodes.id074;
  final BWA = CountryCodes.id072;
  final CAF = CountryCodes.id140;
  final CAN = CountryCodes.id124;
  final CCK = CountryCodes.id166;
  final CHE = CountryCodes.id756;
  final CHL = CountryCodes.id152;
  final CHN = CountryCodes.id156;
  final CIV = CountryCodes.id384;
  final CMR = CountryCodes.id120;
  final COD = CountryCodes.id180;
  final COG = CountryCodes.id178;
  final COK = CountryCodes.id184;
  final COL = CountryCodes.id170;
  final COM = CountryCodes.id174;
  final CPV = CountryCodes.id132;
  final CRI = CountryCodes.id188;
  final CUB = CountryCodes.id192;
  final CUW = CountryCodes.id531;
  final CXR = CountryCodes.id162;
  final CYM = CountryCodes.id136;
  final CYP = CountryCodes.id196;
  final CZE = CountryCodes.id203;
  final DEU = CountryCodes.id276;
  final DJI = CountryCodes.id262;
  final DMA = CountryCodes.id212;
  final DNK = CountryCodes.id208;
  final DOM = CountryCodes.id214;
  final DZA = CountryCodes.id012;
  final ECU = CountryCodes.id218;
  final EGY = CountryCodes.id818;
  final ERI = CountryCodes.id232;
  final ESH = CountryCodes.id732;
  final ESP = CountryCodes.id724;
  final EST = CountryCodes.id233;
  final ETH = CountryCodes.id231;
  final FIN = CountryCodes.id246;
  final FJI = CountryCodes.id242;
  final FLK = CountryCodes.id238;
  final FRA = CountryCodes.id250;
  final FRO = CountryCodes.id234;
  final FSM = CountryCodes.id581;
  final GAB = CountryCodes.id266;
  final GBR = CountryCodes.id826;
  final GEO = CountryCodes.id268;
  final GGY = CountryCodes.id831;
  final GHA = CountryCodes.id288;
  final GIB = CountryCodes.id292;
  final GIN = CountryCodes.id324;
  final GLP = CountryCodes.id312;
  final GMB = CountryCodes.id270;
  final GNB = CountryCodes.id624;
  final GNQ = CountryCodes.id226;
  final GRC = CountryCodes.id300;
  final GRD = CountryCodes.id308;
  final GRL = CountryCodes.id304;
  final GTM = CountryCodes.id320;
  final GUF = CountryCodes.id254;
  final GUM = CountryCodes.id316;
  final GUY = CountryCodes.id328;
  final HKG = CountryCodes.id344;
  final HMD = CountryCodes.id334;
  final HND = CountryCodes.id340;
  final HRV = CountryCodes.id191;
  final HTI = CountryCodes.id332;
  final HUN = CountryCodes.id348;
  final IDN = CountryCodes.id360;
  final IMN = CountryCodes.id833;
  final IND = CountryCodes.id356;
  final IOT = CountryCodes.id086;
  final IRL = CountryCodes.id372;
  final IRN = CountryCodes.id364;
  final IRQ = CountryCodes.id368;
  final ISL = CountryCodes.id352;
  final ISR = CountryCodes.id376;
  final ITA = CountryCodes.id380;
  final JAM = CountryCodes.id388;
  final JEY = CountryCodes.id832;
  final JOR = CountryCodes.id400;
  final JPN = CountryCodes.id392;
  final KAZ = CountryCodes.id398;
  final KEN = CountryCodes.id404;
  final KGZ = CountryCodes.id417;
  final KHM = CountryCodes.id116;
  final KIR = CountryCodes.id296;
  final KNA = CountryCodes.id659;
  final KOR = CountryCodes.id410;
  final KWT = CountryCodes.id414;
  final LAO = CountryCodes.id418;
  final LBN = CountryCodes.id422;
  final LBR = CountryCodes.id430;
  final LBY = CountryCodes.id434;
  final LCA = CountryCodes.id662;
  final LIE = CountryCodes.id438;
  final LKA = CountryCodes.id144;
  final LSA = CountryCodes.id426;
  final LTU = CountryCodes.id440;
  final LUX = CountryCodes.id442;
  final LVA = CountryCodes.id428;
  final MAC = CountryCodes.id446;
  final MAF = CountryCodes.id663;
  final MAR = CountryCodes.id504;
  final MCO = CountryCodes.id492;
  final MDA = CountryCodes.id498;
  final MDG = CountryCodes.id450;
  final MDV = CountryCodes.id462;
  final MEX = CountryCodes.id484;
  final MHL = CountryCodes.id584;
  final MKD = CountryCodes.id807;
  final MLI = CountryCodes.id466;
  final MLT = CountryCodes.id470;
  final MMR = CountryCodes.id104;
  final MNE = CountryCodes.id499;
  final MNG = CountryCodes.id496;
  final MNP = CountryCodes.id580;
  final MOZ = CountryCodes.id508;
  final MRT = CountryCodes.id478;
  final MSR = CountryCodes.id500;
  final MTQ = CountryCodes.id474;
  final MUS = CountryCodes.id480;
  final MWI = CountryCodes.id454;
  final MYS = CountryCodes.id458;
  final MYT = CountryCodes.id175;
  final NAM = CountryCodes.id516;
  final NCL = CountryCodes.id540;
  final NER = CountryCodes.id562;
  final NFK = CountryCodes.id574;
  final NGA = CountryCodes.id566;
  final NIC = CountryCodes.id558;
  final NIU = CountryCodes.id570;
  final NLD = CountryCodes.id528;
  final NOR = CountryCodes.id578;
  final NPL = CountryCodes.id524;
  final NRU = CountryCodes.id520;
  final NZL = CountryCodes.id554;
  final OMN = CountryCodes.id512;
  final PAK = CountryCodes.id586;
  final PAN = CountryCodes.id591;
  final PCN = CountryCodes.id612;
  final PER = CountryCodes.id604;
  final PHL = CountryCodes.id608;
  final PLW = CountryCodes.id585;
  final PNG = CountryCodes.id598;
  final POL = CountryCodes.id616;
  final PRI = CountryCodes.id630;
  final PRK = CountryCodes.id408;
  final PRT = CountryCodes.id620;
  final PRY = CountryCodes.id600;
  final PSE = CountryCodes.id275;
  final PYF = CountryCodes.id258;
  final QAT = CountryCodes.id634;
  final REU = CountryCodes.id638;
  final ROU = CountryCodes.id642;
  final RUS = CountryCodes.id643;
  final RWA = CountryCodes.id646;
  final SAU = CountryCodes.id682;
  final SDN = CountryCodes.id729;
  final SEN = CountryCodes.id686;
  final SGP = CountryCodes.id702;
  final SGS = CountryCodes.id239;
  final SHN = CountryCodes.id654;
  final SJM = CountryCodes.id744;
  final SLB = CountryCodes.id090;
  final SLE = CountryCodes.id694;
  final SLV = CountryCodes.id222;
  final SMR = CountryCodes.id674;
  final SOM = CountryCodes.id706;
  final SPM = CountryCodes.id666;
  final SRB = CountryCodes.id688;
  final SSD = CountryCodes.id728;
  final STP = CountryCodes.id678;
  final SUR = CountryCodes.id740;
  final SVK = CountryCodes.id703;
  final SVN = CountryCodes.id705;
  final SWE = CountryCodes.id752;
  final SWZ = CountryCodes.id748;
  final SXM = CountryCodes.id534;
  final SYC = CountryCodes.id690;
  final SYR = CountryCodes.id760;
  final TCA = CountryCodes.id796;
  final TCD = CountryCodes.id148;
  final TGO = CountryCodes.id768;
  final THA = CountryCodes.id764;
  final TJK = CountryCodes.id762;
  final TKL = CountryCodes.id772;
  final TKM = CountryCodes.id795;
  final TLS = CountryCodes.id626;
  final TON = CountryCodes.id776;
  final TTO = CountryCodes.id780;
  final TUN = CountryCodes.id788;
  final TUR = CountryCodes.id792;
  final TUV = CountryCodes.id798;
  final TWN = CountryCodes.id158;
  final TZA = CountryCodes.id834;
  final UGA = CountryCodes.id800;
  final UKR = CountryCodes.id804;
  final UMI = CountryCodes.id581;
  final URY = CountryCodes.id858;
  final USA = CountryCodes.id840;
  final UZB = CountryCodes.id860;
  final VAT = CountryCodes.id336;
  final VCT = CountryCodes.id670;
  final VEN = CountryCodes.id862;
  final VGB = CountryCodes.id092;
  final VIR = CountryCodes.id850;
  final VNM = CountryCodes.id704;
  final VUT = CountryCodes.id548;
  final WLF = CountryCodes.id876;
  final WSM = CountryCodes.id882;
  final YEM = CountryCodes.id887;
  final ZAF = CountryCodes.id710;
  final ZMB = CountryCodes.id894;
  final ZWE = CountryCodes.id716;

  late final List<CountryCode> values;

  CountryAlpha3() {
    values = [
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
      ZWE,
    ];
  }

}