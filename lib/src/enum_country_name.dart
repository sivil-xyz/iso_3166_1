import 'package:collection/collection.dart';

import 'country_code.dart';
import 'enum_country_code.dart';

enum EnumCountryName {
  afghanistan,
  alandIslands,
  albania,
  algeria,
  americanSamoa,
  andorra,
  angola,
  anguilla,
  antarctica,
  antiguaAndBarbuda,
  argentina,
  armenia,
  aruba,
  australia,
  austria,
  azerbaijan,
  bahamas,
  bahrain,
  bangladesh,
  barbados,
  belarus,
  belgium,
  belize,
  benin,
  bermuda,
  bhutan,
  bolivia,
  bonaireSintEustatiusAndSaba,
  bosniaAndHerzegovina,
  botswana,
  bouvetIsland,
  brazil,
  britishIndianOceanTerritory,
  bruneiDarussalam,
  bulgaria,
  burkinaFaso,
  burundi,
  caboVerde,
  cambodia,
  cameroon,
  canada,
  caymanIslands,
  centralAfricanRepublic,
  chad,
  chile,
  china,
  christmasIslands,
  cocosIslands,
  colombia,
  comoros,
  congo,
  congoDemocraticRepublic,
  cookIslands,
  costaRica,
  coteDIvoire,
  croatia,
  cuba,
  curasao,
  cyprus,
  czechia,
  denmark,
  djibouti,
  dominica,
  dominicanRepublic,
  ecuador,
  egypt,
  elSalvador,
  equatorialGuinea,
  eritrea,
  estonia,
  eswatini,
  ethiopia,
  falklandIslands,
  faroeIslands,
  fiji,
  finland,
  france,
  frenchGuiana,
  frenchPolynesia,
  frenchSouthernTerritories,
  gabon,
  gambia,
  georgia,
  germany,
  ghana,
  gibraltar,
  greece,
  greenland,
  grenada,
  guadeloupe,
  guam,
  guatemala,
  guyana,
  guernsey,
  guinea,
  guineaBissau,
  haiti,
  heardIslandAndMcDonaldIslands,
  holySee,
  honduras,
  hongKong,
  hungary,
  iceland,
  india,
  indonesia,
  iran,
  iraq,
  ireland,
  isleOfMan,
  israel,
  italy,
  jamaica,
  japan,
  jersey,
  jordan,
  kazakhstan,
  kenya,
  kiribati,
  koreaDemocraticPeoplesRepublicOf,
  koreaRepublicOF,
  kuwait,
  kyrgyzstan,
  laoPeoplesDemocraticRepublic,
  latvia,
  lebanon,
  lesotho,
  liberia,
  libya,
  liechtenstein,
  lithuania,
  luxembourg,
  macao,
  madagascar,
  malawi,
  malaysia,
  maldives,
  mali,
  malta,
  marshallIslands,
  martinique,
  mauritania,
  mauritius,
  mayotte,
  mexico,
  micronesiaFederatedStatesOf,
  moldovaRepublicOf,
  monaco,
  mongolia,
  montenegro,
  montserrat,
  morocco,
  mozambique,
  myanmar,
  namibia,
  nauru,
  nepal,
  netherlands,
  newCaledonia,
  newZealand,
  nicaragua,
  niger,
  nigeria,
  niue,
  norfolkIsland,
  northMacedonia,
  northernMarianIslands,
  norway,
  oman,
  pakistan,
  palau,
  palestine,
  panama,
  papuaNewGuinea,
  paraguay,
  peru,
  philippines,
  pitcairn,
  poland,
  portugal,
  puertoRico,
  qatar,
  reunion,
  romania,
  russianFederation,
  rwanda,
  saintBarthelemy,
  saintHelenaAscensionAndTristanDaCunha,
  saintKittsAndNevis,
  saintLucia,
  saintMartin,
  saintPierreAndMiquelon,
  saintVincentAndTheGrenadines,
  samoa,
  sanMarino,
  saoTomeAndPrincipe,
  saudiArabia,
  senegal,
  serbia,
  seychelles,
  sierraLeone,
  singapore,
  sintMaarten,
  slovakia,
  slovenia,
  solomonIslands,
  somalia,
  southAfrica,
  southGeorgiaAndTheSouthSandwichIslands,
  southSudan,
  spain,
  sriLanka,
  sudan,
  suriname,
  svalbardAndJanMayen,
  sweden,
  switzerland,
  syrianArabRepublic,
  taiwan,
  tajikistan,
  tanzaniaUnitedRepublicOf,
  thailand,
  timorLeste,
  togo,
  tokelau,
  tonga,
  trinidadAndTobago,
  tunisia,
  turkey,
  turkmenistan,
  turksAndCaicosIslands,
  tuvalu,
  uganda,
  ukraine,
  unitedArabEmirates,
  unitedKingdomOfGreatBritrainAndNorthernIreland,
  unitedStatesMinorOutlyingIslands,
  unitedStatesOfAmerica,
  uruguay,
  uzbekistan,
  vanuatu,
  vatican,
  venezuela,
  vietNam,
  virginIslands,
  virginIslandsBritish,
  wallisAndFutuna,
  westernSahara,
  yemen,
  zambia,
  zimbabwe,
}

extension EnumCountryNameExt on EnumCountryName {
  static EnumCountryName byId(String id) {
    return EnumCountryName.values
      .firstWhere((element) => 
        element.code.id.toLowerCase() == id.toLowerCase());
  }

  static EnumCountryName byAlpha2(String alpha2) {
    return EnumCountryName.values
      .firstWhere((element) => 
        element.code.alpha2.toLowerCase() == alpha2.toLowerCase());
  }

  static EnumCountryName byAlpha3(String alpha3) {
    return EnumCountryName.values
      .firstWhere((element) => 
        element.code.alpha3.toLowerCase() == alpha3.toLowerCase());
  }

  static EnumCountryName? byIdOrNull(String id) {
    return EnumCountryName.values
      .firstWhereOrNull((element) => 
        element.code.id.toLowerCase() == id.toLowerCase());
  }

  static EnumCountryName? byAlpha2OrNull(String alpha2) {
    return EnumCountryName.values
      .firstWhereOrNull((element) => 
        element.code.alpha2.toLowerCase() == alpha2.toLowerCase());
  }

  static EnumCountryName? byAlpha3OrNull(String alpha3) {
    return EnumCountryName.values
      .firstWhereOrNull((element) => 
        element.code.alpha3.toLowerCase() == alpha3.toLowerCase());
  }

  CountryCode get code {
    switch(this) {
  case EnumCountryName.afghanistan: 
    return EnumCountryCode.id004.code;
  case EnumCountryName.alandIslands: 
    return EnumCountryCode.id248.code;
  case EnumCountryName.albania: 
    return EnumCountryCode.id008.code;
  case EnumCountryName.algeria: 
    return EnumCountryCode.id012.code;
  case EnumCountryName.americanSamoa: 
    return EnumCountryCode.id016.code;
  case EnumCountryName.andorra: 
    return EnumCountryCode.id020.code;
  case EnumCountryName.angola: 
    return EnumCountryCode.id024.code;
  case EnumCountryName.anguilla: 
    return EnumCountryCode.id660.code;
  case EnumCountryName.antarctica: 
    return EnumCountryCode.id010.code;
  case EnumCountryName.antiguaAndBarbuda: 
    return EnumCountryCode.id028.code;
  case EnumCountryName.argentina: 
    return EnumCountryCode.id032.code;
  case EnumCountryName.armenia: 
    return EnumCountryCode.id051.code;
  case EnumCountryName.aruba: 
    return EnumCountryCode.id533.code;
  case EnumCountryName.australia: 
    return EnumCountryCode.id036.code;
  case EnumCountryName.austria: 
    return EnumCountryCode.id040.code;
  case EnumCountryName.azerbaijan: 
    return EnumCountryCode.id031.code;
  case EnumCountryName.bahamas: 
    return EnumCountryCode.id044.code;
  case EnumCountryName.bahrain: 
    return EnumCountryCode.id048.code;
  case EnumCountryName.bangladesh: 
    return EnumCountryCode.id050.code;
  case EnumCountryName.barbados: 
    return EnumCountryCode.id052.code;
  case EnumCountryName.belarus: 
    return EnumCountryCode.id112.code;
  case EnumCountryName.belgium: 
    return EnumCountryCode.id056.code;
  case EnumCountryName.belize: 
    return EnumCountryCode.id084.code;
  case EnumCountryName.benin: 
    return EnumCountryCode.id204.code;
  case EnumCountryName.bermuda: 
    return EnumCountryCode.id060.code;
  case EnumCountryName.bhutan: 
    return EnumCountryCode.id064.code;
  case EnumCountryName.bolivia: 
    return EnumCountryCode.id068.code;
  case EnumCountryName.bonaireSintEustatiusAndSaba: 
    return EnumCountryCode.id535.code;
  case EnumCountryName.bosniaAndHerzegovina: 
    return EnumCountryCode.id070.code;
  case EnumCountryName.botswana: 
    return EnumCountryCode.id072.code;
  case EnumCountryName.bouvetIsland: 
    return EnumCountryCode.id074.code;
  case EnumCountryName.brazil: 
    return EnumCountryCode.id076.code;
  case EnumCountryName.britishIndianOceanTerritory: 
    return EnumCountryCode.id086.code;
  case EnumCountryName.bruneiDarussalam: 
    return EnumCountryCode.id096.code;
  case EnumCountryName.bulgaria: 
    return EnumCountryCode.id100.code;
  case EnumCountryName.burkinaFaso: 
    return EnumCountryCode.id854.code;
  case EnumCountryName.burundi: 
    return EnumCountryCode.id108.code;
  case EnumCountryName.caboVerde: 
    return EnumCountryCode.id132.code;
  case EnumCountryName.cambodia: 
    return EnumCountryCode.id116.code;
  case EnumCountryName.cameroon: 
    return EnumCountryCode.id120.code;
  case EnumCountryName.canada: 
    return EnumCountryCode.id124.code;
  case EnumCountryName.caymanIslands: 
    return EnumCountryCode.id136.code;
  case EnumCountryName.centralAfricanRepublic: 
    return EnumCountryCode.id140.code;
  case EnumCountryName.chad: 
    return EnumCountryCode.id148.code;
  case EnumCountryName.chile: 
    return EnumCountryCode.id152.code;
  case EnumCountryName.china: 
    return EnumCountryCode.id156.code;
  case EnumCountryName.christmasIslands: 
    return EnumCountryCode.id162.code;
  case EnumCountryName.cocosIslands: 
    return EnumCountryCode.id166.code;
  case EnumCountryName.colombia: 
    return EnumCountryCode.id170.code;
  case EnumCountryName.comoros: 
    return EnumCountryCode.id174.code;
  case EnumCountryName.congo: 
    return EnumCountryCode.id178.code;
  case EnumCountryName.congoDemocraticRepublic: 
    return EnumCountryCode.id180.code;
  case EnumCountryName.cookIslands: 
    return EnumCountryCode.id184.code;
  case EnumCountryName.costaRica: 
    return EnumCountryCode.id188.code;
  case EnumCountryName.coteDIvoire: 
    return EnumCountryCode.id384.code;
  case EnumCountryName.croatia: 
    return EnumCountryCode.id191.code;
  case EnumCountryName.cuba: 
    return EnumCountryCode.id192.code;
  case EnumCountryName.curasao: 
    return EnumCountryCode.id531.code;
  case EnumCountryName.cyprus: 
    return EnumCountryCode.id196.code;
  case EnumCountryName.czechia: 
    return EnumCountryCode.id203.code;
  case EnumCountryName.denmark: 
    return EnumCountryCode.id208.code;
  case EnumCountryName.djibouti: 
    return EnumCountryCode.id262.code;
  case EnumCountryName.dominica: 
    return EnumCountryCode.id212.code;
  case EnumCountryName.dominicanRepublic: 
    return EnumCountryCode.id214.code;
  case EnumCountryName.ecuador: 
    return EnumCountryCode.id218.code;
  case EnumCountryName.egypt: 
    return EnumCountryCode.id818.code;
  case EnumCountryName.elSalvador: 
    return EnumCountryCode.id222.code;
  case EnumCountryName.equatorialGuinea: 
    return EnumCountryCode.id226.code;
  case EnumCountryName.eritrea: 
    return EnumCountryCode.id232.code;
  case EnumCountryName.estonia: 
    return EnumCountryCode.id233.code;
  case EnumCountryName.eswatini: 
    return EnumCountryCode.id748.code;
  case EnumCountryName.ethiopia: 
    return EnumCountryCode.id231.code;
  case EnumCountryName.falklandIslands: 
    return EnumCountryCode.id238.code;
  case EnumCountryName.faroeIslands: 
    return EnumCountryCode.id234.code;
  case EnumCountryName.fiji: 
    return EnumCountryCode.id242.code;
  case EnumCountryName.finland: 
    return EnumCountryCode.id246.code;
  case EnumCountryName.france: 
    return EnumCountryCode.id250.code;
  case EnumCountryName.frenchGuiana: 
    return EnumCountryCode.id254.code;
  case EnumCountryName.frenchPolynesia: 
    return EnumCountryCode.id258.code;
  case EnumCountryName.frenchSouthernTerritories: 
    return EnumCountryCode.id260.code;
  case EnumCountryName.gabon: 
    return EnumCountryCode.id266.code;
  case EnumCountryName.gambia: 
    return EnumCountryCode.id270.code;
  case EnumCountryName.georgia: 
    return EnumCountryCode.id268.code;
  case EnumCountryName.germany: 
    return EnumCountryCode.id276.code;
  case EnumCountryName.ghana: 
    return EnumCountryCode.id288.code;
  case EnumCountryName.gibraltar: 
    return EnumCountryCode.id292.code;
  case EnumCountryName.greece: 
    return EnumCountryCode.id300.code;
  case EnumCountryName.greenland: 
    return EnumCountryCode.id304.code;
  case EnumCountryName.grenada: 
    return EnumCountryCode.id308.code;
  case EnumCountryName.guadeloupe: 
    return EnumCountryCode.id312.code;
  case EnumCountryName.guam: 
    return EnumCountryCode.id316.code;
  case EnumCountryName.guatemala: 
    return EnumCountryCode.id320.code;
  case EnumCountryName.guyana: 
    return EnumCountryCode.id328.code;
  case EnumCountryName.guernsey: 
    return EnumCountryCode.id831.code;
  case EnumCountryName.guinea: 
    return EnumCountryCode.id324.code;
  case EnumCountryName.guineaBissau: 
    return EnumCountryCode.id624.code;
  case EnumCountryName.haiti: 
    return EnumCountryCode.id332.code;
  case EnumCountryName.heardIslandAndMcDonaldIslands:
    return EnumCountryCode.id334.code;
  case EnumCountryName.holySee: 
    return EnumCountryCode.id336.code;
  case EnumCountryName.honduras: 
    return EnumCountryCode.id340.code;
  case EnumCountryName.hongKong: 
    return EnumCountryCode.id344.code;
  case EnumCountryName.hungary: 
    return EnumCountryCode.id348.code;
  case EnumCountryName.iceland: 
    return EnumCountryCode.id352.code;
  case EnumCountryName.india: 
    return EnumCountryCode.id356.code;
  case EnumCountryName.indonesia: 
    return EnumCountryCode.id360.code;
  case EnumCountryName.iran: 
    return EnumCountryCode.id364.code;
  case EnumCountryName.iraq: 
    return EnumCountryCode.id368.code;
  case EnumCountryName.ireland: 
    return EnumCountryCode.id372.code;
  case EnumCountryName.isleOfMan: 
    return EnumCountryCode.id833.code;
  case EnumCountryName.israel: 
    return EnumCountryCode.id376.code;
  case EnumCountryName.italy: 
    return EnumCountryCode.id380.code;
  case EnumCountryName.jamaica: 
    return EnumCountryCode.id388.code;
  case EnumCountryName.japan: 
    return EnumCountryCode.id392.code;
  case EnumCountryName.jersey: 
    return EnumCountryCode.id832.code;
  case EnumCountryName.jordan: 
    return EnumCountryCode.id400.code;
  case EnumCountryName.kazakhstan: 
    return EnumCountryCode.id398.code;
  case EnumCountryName.kenya: 
    return EnumCountryCode.id404.code;
  case EnumCountryName.kiribati: 
    return EnumCountryCode.id296.code;
  case EnumCountryName.koreaDemocraticPeoplesRepublicOf: 
    return EnumCountryCode.id408.code;
  case EnumCountryName.koreaRepublicOF: 
    return EnumCountryCode.id410.code;
  case EnumCountryName.kuwait: 
    return EnumCountryCode.id414.code;
  case EnumCountryName.kyrgyzstan: 
    return EnumCountryCode.id417.code;
  case EnumCountryName.laoPeoplesDemocraticRepublic: 
    return EnumCountryCode.id418.code;
  case EnumCountryName.latvia: 
    return EnumCountryCode.id428.code;
  case EnumCountryName.lebanon: 
    return EnumCountryCode.id422.code;
  case EnumCountryName.lesotho: 
    return EnumCountryCode.id426.code;
  case EnumCountryName.liberia: 
    return EnumCountryCode.id430.code;
  case EnumCountryName.libya: 
    return EnumCountryCode.id434.code;
  case EnumCountryName.liechtenstein: 
    return EnumCountryCode.id438.code;
  case EnumCountryName.lithuania: 
    return EnumCountryCode.id440.code;
  case EnumCountryName.luxembourg: 
    return EnumCountryCode.id442.code;
  case EnumCountryName.macao: 
    return EnumCountryCode.id446.code;
  case EnumCountryName.madagascar: 
    return EnumCountryCode.id450.code;
  case EnumCountryName.malawi: 
    return EnumCountryCode.id454.code;
  case EnumCountryName.malaysia: 
    return EnumCountryCode.id458.code;
  case EnumCountryName.maldives: 
    return EnumCountryCode.id462.code;
  case EnumCountryName.mali: 
    return EnumCountryCode.id466.code;
  case EnumCountryName.malta: 
    return EnumCountryCode.id470.code;
  case EnumCountryName.marshallIslands: 
    return EnumCountryCode.id584.code;
  case EnumCountryName.martinique: 
    return EnumCountryCode.id474.code;
  case EnumCountryName.mauritania: 
    return EnumCountryCode.id478.code;
  case EnumCountryName.mauritius: 
    return EnumCountryCode.id480.code;
  case EnumCountryName.mayotte: 
    return EnumCountryCode.id175.code;
  case EnumCountryName.mexico: 
    return EnumCountryCode.id484.code;
  case EnumCountryName.micronesiaFederatedStatesOf: 
    return EnumCountryCode.id581.code;
  case EnumCountryName.moldovaRepublicOf: 
    return EnumCountryCode.id498.code;
  case EnumCountryName.monaco: 
    return EnumCountryCode.id492.code;
  case EnumCountryName.mongolia: 
    return EnumCountryCode.id496.code;
  case EnumCountryName.montenegro: 
    return EnumCountryCode.id499.code;
  case EnumCountryName.montserrat: 
    return EnumCountryCode.id500.code;
  case EnumCountryName.morocco: 
    return EnumCountryCode.id504.code;
  case EnumCountryName.mozambique: 
    return EnumCountryCode.id508.code;
  case EnumCountryName.myanmar: 
    return EnumCountryCode.id104.code;
  case EnumCountryName.namibia: 
    return EnumCountryCode.id516.code;
  case EnumCountryName.nauru: 
    return EnumCountryCode.id520.code;
  case EnumCountryName.nepal: 
    return EnumCountryCode.id524.code;
  case EnumCountryName.netherlands: 
    return EnumCountryCode.id528.code;
  case EnumCountryName.newCaledonia: 
    return EnumCountryCode.id540.code;
  case EnumCountryName.newZealand: 
    return EnumCountryCode.id554.code;
  case EnumCountryName.nicaragua: 
    return EnumCountryCode.id558.code;
  case EnumCountryName.niger: 
    return EnumCountryCode.id562.code;
  case EnumCountryName.nigeria: 
    return EnumCountryCode.id566.code;
  case EnumCountryName.niue: 
    return EnumCountryCode.id570.code;
  case EnumCountryName.norfolkIsland: 
    return EnumCountryCode.id574.code;
  case EnumCountryName.northMacedonia: 
    return EnumCountryCode.id807.code;
  case EnumCountryName.northernMarianIslands: 
    return EnumCountryCode.id580.code;
  case EnumCountryName.norway: 
    return EnumCountryCode.id578.code;
  case EnumCountryName.oman: 
    return EnumCountryCode.id512.code;
  case EnumCountryName.pakistan: 
    return EnumCountryCode.id586.code;
  case EnumCountryName.palau: 
    return EnumCountryCode.id585.code;
  case EnumCountryName.palestine: 
    return EnumCountryCode.id275.code;
  case EnumCountryName.panama: 
    return EnumCountryCode.id591.code;
  case EnumCountryName.papuaNewGuinea: 
    return EnumCountryCode.id598.code;
  case EnumCountryName.paraguay: 
    return EnumCountryCode.id600.code;
  case EnumCountryName.peru: 
    return EnumCountryCode.id604.code;
  case EnumCountryName.philippines: 
    return EnumCountryCode.id608.code;
  case EnumCountryName.pitcairn: 
    return EnumCountryCode.id612.code;
  case EnumCountryName.poland: 
    return EnumCountryCode.id616.code;
  case EnumCountryName.portugal: 
    return EnumCountryCode.id620.code;
  case EnumCountryName.puertoRico: 
    return EnumCountryCode.id630.code;
  case EnumCountryName.qatar: 
    return EnumCountryCode.id634.code;
  case EnumCountryName.reunion: 
    return EnumCountryCode.id638.code;
  case EnumCountryName.romania: 
    return EnumCountryCode.id642.code;
  case EnumCountryName.russianFederation: 
    return EnumCountryCode.id643.code;
  case EnumCountryName.rwanda: 
    return EnumCountryCode.id646.code;
  case EnumCountryName.saintBarthelemy: 
    return EnumCountryCode.id652.code;
  case EnumCountryName.saintHelenaAscensionAndTristanDaCunha: 
    return EnumCountryCode.id654.code;
  case EnumCountryName.saintKittsAndNevis: 
    return EnumCountryCode.id659.code;
  case EnumCountryName.saintLucia: 
    return EnumCountryCode.id662.code;
  case EnumCountryName.saintMartin: 
    return EnumCountryCode.id663.code;
  case EnumCountryName.saintPierreAndMiquelon: 
    return EnumCountryCode.id666.code;
  case EnumCountryName.saintVincentAndTheGrenadines: 
    return EnumCountryCode.id670.code;
  case EnumCountryName.samoa: 
    return EnumCountryCode.id882.code;
  case EnumCountryName.sanMarino: 
    return EnumCountryCode.id674.code;
  case EnumCountryName.saoTomeAndPrincipe: 
    return EnumCountryCode.id678.code;
  case EnumCountryName.saudiArabia: 
    return EnumCountryCode.id682.code;
  case EnumCountryName.senegal: 
    return EnumCountryCode.id686.code;
  case EnumCountryName.serbia: 
    return EnumCountryCode.id688.code;
  case EnumCountryName.seychelles: 
    return EnumCountryCode.id690.code;
  case EnumCountryName.sierraLeone: 
    return EnumCountryCode.id694.code;
  case EnumCountryName.singapore: 
    return EnumCountryCode.id702.code;
  case EnumCountryName.sintMaarten: 
    return EnumCountryCode.id534.code;
  case EnumCountryName.slovakia: 
    return EnumCountryCode.id703.code;
  case EnumCountryName.slovenia: 
    return EnumCountryCode.id705.code;
  case EnumCountryName.solomonIslands: 
    return EnumCountryCode.id090.code;
  case EnumCountryName.somalia: 
    return EnumCountryCode.id706.code;
  case EnumCountryName.southAfrica: 
    return EnumCountryCode.id710.code;
  case EnumCountryName.southGeorgiaAndTheSouthSandwichIslands: 
    return EnumCountryCode.id239.code;
  case EnumCountryName.southSudan: 
    return EnumCountryCode.id728.code;
  case EnumCountryName.spain: 
    return EnumCountryCode.id724.code;
  case EnumCountryName.sriLanka: 
    return EnumCountryCode.id144.code;
  case EnumCountryName.sudan: 
    return EnumCountryCode.id729.code;
  case EnumCountryName.suriname: 
    return EnumCountryCode.id740.code;
  case EnumCountryName.svalbardAndJanMayen: 
    return EnumCountryCode.id744.code;
  case EnumCountryName.sweden: 
    return EnumCountryCode.id752.code;
  case EnumCountryName.switzerland: 
    return EnumCountryCode.id756.code;
  case EnumCountryName.syrianArabRepublic: 
    return EnumCountryCode.id760.code;
  case EnumCountryName.taiwan: 
    return EnumCountryCode.id158.code;
  case EnumCountryName.tajikistan: 
    return EnumCountryCode.id762.code;
  case EnumCountryName.tanzaniaUnitedRepublicOf: 
    return EnumCountryCode.id834.code;
  case EnumCountryName.thailand: 
    return EnumCountryCode.id764.code;
  case EnumCountryName.timorLeste: 
    return EnumCountryCode.id626.code;
  case EnumCountryName.togo: 
    return EnumCountryCode.id768.code;
  case EnumCountryName.tokelau: 
    return EnumCountryCode.id772.code;
  case EnumCountryName.tonga: 
    return EnumCountryCode.id776.code;
  case EnumCountryName.trinidadAndTobago: 
    return EnumCountryCode.id780.code;
  case EnumCountryName.tunisia: 
    return EnumCountryCode.id788.code;
  case EnumCountryName.turkey: 
    return EnumCountryCode.id792.code;
  case EnumCountryName.turkmenistan: 
    return EnumCountryCode.id795.code;
  case EnumCountryName.turksAndCaicosIslands: 
    return EnumCountryCode.id796.code;
  case EnumCountryName.tuvalu: 
    return EnumCountryCode.id798.code;
  case EnumCountryName.uganda: 
    return EnumCountryCode.id800.code;
  case EnumCountryName.ukraine: 
    return EnumCountryCode.id804.code;
  case EnumCountryName.unitedArabEmirates: 
    return EnumCountryCode.id784.code;
  case EnumCountryName.unitedKingdomOfGreatBritrainAndNorthernIreland: 
    return EnumCountryCode.id826.code;
  case EnumCountryName.unitedStatesMinorOutlyingIslands: 
    return EnumCountryCode.id581.code;
  case EnumCountryName.unitedStatesOfAmerica: 
    return EnumCountryCode.id840.code;
  case EnumCountryName.uruguay: 
    return EnumCountryCode.id858.code;
  case EnumCountryName.uzbekistan: 
    return EnumCountryCode.id860.code;
  case EnumCountryName.vanuatu: 
    return EnumCountryCode.id548.code;
  case EnumCountryName.vatican: 
    return EnumCountryCode.id336.code;
  case EnumCountryName.venezuela: 
    return EnumCountryCode.id862.code;
  case EnumCountryName.vietNam: 
    return EnumCountryCode.id704.code;
  case EnumCountryName.virginIslands: 
    return EnumCountryCode.id850.code;
  case EnumCountryName.virginIslandsBritish: 
    return EnumCountryCode.id092.code;
  case EnumCountryName.wallisAndFutuna: 
    return EnumCountryCode.id876.code;
  case EnumCountryName.westernSahara: 
    return EnumCountryCode.id732.code;
  case EnumCountryName.yemen: 
    return EnumCountryCode.id887.code;
  case EnumCountryName.zambia: 
    return EnumCountryCode.id894.code;
  case EnumCountryName.zimbabwe: 
    return EnumCountryCode.id716.code;
    }
  }
}