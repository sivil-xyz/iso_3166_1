import 'package:collection/collection.dart';

import 'enum_country_alpha2.dart';
import 'enum_country_alpha3.dart';
import 'country_code.dart';
import 'enum_country_name.dart';

/*
 NUMBER ID
**004	Afghanistan	
**008	Albania	
**010	Antarctica	
**012	Algeria	
**016	American Samoa	
**020	Andorra	
**024	Angola	
**028	Antigua and Barbuda	
**031	Azerbaijan	Until 1991 part of the USSR
**032	Argentina	
**036	Australia	
**040	Austria	
**044	Bahamas	
**048	Bahrain	
**050	Bangladesh	
**051	Armenia	Until 1991 part of the USSR
**052	Barbados	
**056	Belgium	
**060	Bermuda	
**064	Bhutan	
**068	Bolivia (Plurinational State of)	
**070	Bosnia and Herzegovina	Until 1992 part of Yugoslavia
**072	Botswana	
**074	Bouvet Island	
**076	Brazil	
**084	Belize	Formerly British Honduras
**086	British Indian Ocean Territory	
**090	Solomon Islands	Formerly British Solomon Islands
**092	Virgin Islands (British)	
**096	Brunei Darussalam	
**100	Bulgaria	
**104	Myanmar	Formerly Burma
**108	Burundi	
**112	Belarus	Formerly Byelorussian SSR
**116	Cambodia	
**120	Cameroon	
**124	Canada	
**132	Cabo Verde	Formerly Cape Verde
**136	Cayman Islands	
**140	Central African Republic	
**144	Sri Lanka	Formerly Ceylon
**148	Chad	
**152	Chile	
**156	China	
**158	Taiwan, Province of China	
**162	Christmas Island	
**166	Cocos (Keeling) Islands	
**170	Colombia	
**174	Comoros	
**175	Mayotte	Until 1975 part of Comoros, own ISO code since 1993
**178	Congo	
**180	Congo, Democratic Republic of the	
**184	Cook Islands	
**188	Costa Rica	
**191	Croatia	Until 1992 part of Yugoslavia
**192	Cuba	
**196	Cyprus	
**203	Czechia	Until 1993 part of Czechoslovakia
**204	Benin	Formerly Dahomey
**208	Denmark	
**212	Dominica	
**214	Dominican Republic	
**218	Ecuador	
**222	El Salvador	
**226	Equatorial Guinea	
**231	Ethiopia	
**232	Eritrea	Until 1993 part of Ethiopia
**233	Estonia	Until 1991 part of the USSR
**234	Faroe Islands	Previously spelled Faeroe Islands
**238	Falkland Islands (Malvinas)	
**239	South Georgia and the South Sandwich Islands	Until 1993 part of the Falkland Islands
**242	Fiji	
**246	Finland	
**248	Åland Islands	Until 2004 part of Finland
**250	France	
**254	French Guiana	
**258	French Polynesia	
**260	French Southern Territories	
**262	Djibouti	Formerly French Territory of the Afars and the Issas
**266	Gabon	
**268	Georgia	Until 1991 part of the USSR
**270	Gambia	
**275	Palestine, State of	Replaced the Gaza Strip, which was assigned code 274
**276	Germany	Unified country since 1990
**288	Ghana	
**292	Gibraltar	
**296	Kiribati	Formerly Gilbert and Ellice Islands
**300	Greece	
**304	Greenland	
**308	Grenada	
**312	Guadeloupe	
**316	Guam	
**320	Guatemala	
**324	Guinea	
**328	Guyana	
**332	Haiti	
**334	Heard Island and McDonald Islands	
**336	Holy See	
**340	Honduras	
**344	Hong Kong	
**348	Hungary	
**352	Iceland	
**356	India	
**360	Indonesia	
**364	Iran (Islamic Republic of)	
**368	Iraq	
**372	Ireland	
**376	Israel	
**380	Italy	
**384	Côte d'Ivoire	Formerly Ivory Coast
**388	Jamaica	
**392	Japan	
**398	Kazakhstan	Until 1991 part of the USSR
**400	Jordan	
**404	Kenya	
**408	Korea (Democratic People's Republic of)	
**410	Korea, Republic of	
**414	Kuwait	
**417	Kyrgyzstan	Until 1991 part of the USSR
**418	Lao People's Democratic Republic	
**422	Lebanon	
**426	Lesotho	
**428	Latvia	Until 1991 part of the USSR
**430	Liberia	
**434	Libya	
**438	Liechtenstein	
**440	Lithuania	Until 1991 part of the USSR
**442	Luxembourg	
**446	Macao	
**450	Madagascar	
**454	Malawi	
**458	Malaysia	
**462	Maldives	
**466	Mali	
**470	Malta	
**474	Martinique	
**478	Mauritania	
**480	Mauritius	
**484	Mexico	
**492	Monaco	
**496	Mongolia	
**498	Moldova, Republic of	Until 1991 part of the USSR
**499	Montenegro	Until 2006 part of Yugoslavia/Serbia and Montenegro
**500	Montserrat	
**504	Morocco	
**508	Mozambique	
**512	Oman	Formerly Muscat and Oman
**516	Namibia	
**520	Nauru	
**524	Nepal	
**528	Netherlands	
**531	Curaçao	Until 2010 part of the Netherlands Antilles
**533	Aruba	Until 1986 part of the Netherlands Antilles
**534	Sint Maarten (Dutch part)	Until 2010 part of the Netherlands Antilles
**535	Bonaire, Sint Eustatius and Saba	Until 2010 part of the Netherlands Antilles
**540	New Caledonia	
**548	Vanuatu	Formerly New Hebrides
**554	New Zealand	
**558	Nicaragua	
**562	Niger	
**566	Nigeria	
**570	Niue	
**574	Norfolk Island	
**578	Norway	
**580	Northern Mariana Islands	Until 1986 part of Pacific Islands (Trust Territory)
**581	United States Minor Outlying Islands	Merger of uninhabited U.S. islands on the Pacific Ocean in 1986
**583	Micronesia (Federated States of)	Until 1986 part of Pacific Islands (Trust Territory)
**584	Marshall Islands	Until 1986 part of Pacific Islands (Trust Territory)
**585	Palau	Until 1986 part of Pacific Islands (Trust Territory)
**586	Pakistan	
**591	Panama	
**598	Papua New Guinea	
**600	Paraguay	
**604	Peru	
**608	Philippines	
**612	Pitcairn	
**616	Poland	
**620	Portugal	
**624	Guinea-Bissau	Formerly Portuguese Guinea
**626	Timor-Leste	Formerly Portuguese Timor and East Timor
**630	Puerto Rico	
**634	Qatar	
**638	Réunion	
**642	Romania	
**643	Russian Federation	Until 1991 part of the USSR
**646	Rwanda	
**652	Saint Barthélemy	Until 2007 part of Guadeloupe
**654	Saint Helena, Ascension and Tristan da Cunha	
**659	Saint Kitts and Nevis	Until 1985 part of Saint Kitts-Nevis-Anguilla
**660	Anguilla	Until 1985 part of Saint Kitts-Nevis-Anguilla
**662	Saint Lucia	
**663	Saint Martin (French part)	Until 2007 part of Guadeloupe
**666	Saint Pierre and Miquelon	
**670	Saint Vincent and the Grenadines	
**674	San Marino	
**678	Sao Tome and Principe	
**682	Saudi Arabia	
**686	Senegal	
**688	Serbia	Until 2006 part of Yugoslavia/Serbia and Montenegro
**690	Seychelles	
**694	Sierra Leone	
**702	Singapore	
**703	Slovakia	Until 1993 part of Czechoslovakia
**704	Viet Nam	Official name Socialist Republic of Viet Nam
**705	Slovenia	Until 1992 part of Yugoslavia
**706	Somalia	
**710	South Africa	
**716	Zimbabwe	Formerly Southern Rhodesia
**724	Spain	
**728	South Sudan	Until 2011 part of Sudan
**729	Sudan	
**732	Western Sahara	Formerly Spanish Sahara
**740	Suriname	
**744	Svalbard and Jan Mayen	
**748	Eswatini	Formerly Swaziland
**752	Sweden	
**756	Switzerland	
**760	Syrian Arab Republic	
**762	Tajikistan	Until 1991 part of the USSR
**764	Thailand	
**768	Togo	
**772	Tokelau	
**776	Tonga	
**780	Trinidad and Tobago	
**784	United Arab Emirates	Formerly Trucial States
**788	Tunisia	
**792	Turkey	
**795	Turkmenistan	Until 1991 part of the USSR
**796	Turks and Caicos Islands	
**798	Tuvalu	
**800	Uganda	
**804	Ukraine	
**807	North Macedonia	Until 1993 part of Yugoslavia
**818	Egypt	Formerly United Arab Republic
**826	United Kingdom of Great Britain and Northern Ireland	
**831	Guernsey	Until 2006 part of the United Kingdom
**832	Jersey	Until 2006 part of the United Kingdom
**833	Isle of Man	Until 2006 part of the United Kingdom
**834	Tanzania, United Republic of	
**840	United States of America	
**850	Virgin Islands (U.S.)	
**854	Burkina Faso	Formerly Upper Volta
**858	Uruguay	
**860	Uzbekistan	Until 1991 part of the USSR
**862	Venezuela (Bolivarian Republic of)	
**876	Wallis and Futuna	
**882	Samoa	Formerly Western Samoa
**887	Yemen	Unified country since 1990
**894	Zambia
 */


// https://en.wikipedia.org/wiki/ISO_3166-1
// https://www.goldenchennai.com/isd-code/


//https://flagpedia.net/emoji

enum EnumCountryCode {
  id004,
  id008,
  id010,
  id012,
  id016,
  id020,
  id024,
  id028,
  id031,
  id032,
  id036,
  id040,
  id044,
  id048,
  id050,
  id051,
  id052,
  id056,
  id060,
  id064,
  id068,
  id070,
  id072,
  id074,
  id076,
  id084,
  id086,
  id090,
  id092,
  id096,
  id100,
  id104,
  id108,
  id112,
  id116,
  id120,
  id124,
  id132,
  id136,
  id140,
  id144,
  id148,
  id152,
  id156,
  id158,
  id162,
  id166,
  id170,
  id174,
  id175,
  id178,
  id180,
  id184,
  id188,
  id191,
  id192,
  id196,
  id203,
  id204,
  id208,
  id212,
  id214,
  id218,
  id222,
  id226,
  id231,
  id232,
  id233,
  id234,
  id238,
  id239,
  id242,
  id246,
  id248,
  id250,
  id254,
  id258,
  id260,
  id262,
  id266,
  id268,
  id270,
  id275,
  id276,
  id288,
  id292,
  id296,
  id300,
  id304,
  id308,
  id312,
  id316,
  id320,
  id324,
  id328,
  id332,
  id334,
  id336,
  id340,
  id344,
  id348,
  id352,
  id356,
  id360,
  id364,
  id368,
  id372,
  id376,
  id380,
  id384,
  id388,
  id392,
  id398,
  id400,
  id404,
  id408,
  id410,
  id414,
  id417,
  id418,
  id422,
  id426,
  id428,
  id430,
  id434,
  id438,
  id440,
  id442,
  id446,
  id450,
  id454,
  id458,
  id462,
  id466,
  id470,
  id474,
  id478,
  id480,
  id484,
  id492,
  id496,
  id498,
  id499,
  id500,
  id504,
  id508,
  id512,
  id516,
  id520,
  id524,
  id528,
  id531,
  id533,
  id534,
  id535,
  id540,
  id548,
  id554,
  id558,
  id562,
  id566,
  id570,
  id574,
  id578,
  id580,
  id581,
  id583,
  id584,
  id585,
  id586,
  id591,
  id598,
  id600,
  id604,
  id608,
  id612,
  id616,
  id620,
  id624,
  id626,
  id630,
  id634,
  id638,
  id642,
  id643,
  id646,
  id652,
  id654,
  id659,
  id660,
  id662,
  id663,
  id666,
  id670,
  id674,
  id678,
  id682,
  id686,
  id688,
  id690,
  id694,
  id702,
  id703,
  id704,
  id705,
  id706,
  id710,
  id716,
  id724,
  id728,
  id729,
  id732,
  id740,
  id744,
  id748,
  id752,
  id756,
  id760,
  id762,
  id764,
  id768,
  id772,
  id776,
  id780,
  id784,
  id788,
  id792,
  id795,
  id796,
  id798,
  id800,
  id804,
  id807,
  id818,
  id826,
  id831,
  id832,
  id833,
  id834,
  id840,
  id850,
  id854,
  id858,
  id860,
  id862,
  id876,
  id882,
  id887,
  id894,
}

extension EnumCountryCodeExt on EnumCountryCode {
  static List<CountryCode> getCountryCodes(List<String> codes) {
    var data = <CountryCode>[];
    for(var code in codes) {
      var cc = tryCountryCode(code);
      if(cc != null) {
        data.add(cc);
      }
    }
    return data;
  }
 
  static CountryCode? tryCountryCode(String key, 
      {List<EnumCountryCodeScope> scopes = const [
        EnumCountryCodeScope.alpha2,
        EnumCountryCodeScope.alpha3,
        EnumCountryCodeScope.id,
        EnumCountryCodeScope.name
      ]}) {
    key = key.trim().toLowerCase();
    CountryCode? countryCode;
    if(countryCode == null && scopes.contains(EnumCountryCodeScope.id)) {
      for(var cc in EnumCountryCode.values) {
        if(int.tryParse(cc.code.id.toLowerCase()) == int.tryParse(key)) {
          countryCode = cc.code;
        }
      }
    }
    if(countryCode == null && scopes.contains(EnumCountryCodeScope.name)) {
      for(var cc in EnumCountryName.values) {
        if(cc.code.officialName.toLowerCase() == key) {
          countryCode = cc.code;
          break;
        }
      }
    }
    if(countryCode == null  && scopes.contains(EnumCountryCodeScope.alpha2)) {
      for(var cc in EnumCountryAlpha2.values) {
        if(cc.code.alpha2.toLowerCase() == key) {
          countryCode = cc.code;
          break;
        }
      }      
    }
    if(countryCode == null  && scopes.contains(EnumCountryCodeScope.alpha3)) {
      for(var cc in EnumCountryAlpha3.values) {
        if(cc.code.alpha3.toLowerCase() == key) {
          countryCode = cc.code;
          break;
        }
      }      
    }
    return countryCode;
  }

  operator [](String key) {
    var cc = tryCountryCode(key);
    if(cc != null) {
      return cc;
    }
    else {
      throw NullThrownError();
    }
  }

  static EnumCountryCode byId(String id) {
    return EnumCountryCode.values
      .firstWhere((element) => 
        element.code.id == id);
  }

  static EnumCountryCode byAlpha2(String alpha2) {
    return EnumCountryCode.values
      .firstWhere((element) => 
        element.code.alpha2 == alpha2);
  }

  static EnumCountryCode byAlpha3(String alpha3) {
    return EnumCountryCode.values
      .firstWhere((element) => 
        element.code.alpha3 == alpha3);
  }

  static EnumCountryCode? byIdOrNull(String id) {
    return EnumCountryCode.values
      .firstWhereOrNull((element) => 
        element.code.id == id);
  }

  static EnumCountryCode? byAlpha2OrNull(String alpha2) {
    return EnumCountryCode.values
      .firstWhereOrNull((element) => 
        element.code.alpha2 == alpha2);
  }

  static EnumCountryCode? byAlpha3OrNull(String alpha3) {
    return EnumCountryCode.values
      .firstWhereOrNull((element) => 
        element.code.alpha3 == alpha3);
  }

  static List<CountryCode> codes = EnumCountryCode.values
    .map((e) => e.code).toList();

  CountryCode get code  {
    switch(this) {
      case EnumCountryCode.id004: 
        return const CountryCode(
      id: '004',
      alpha2: 'AF',
      alpha3: 'AFG',
      officialName: 'Afghanistan', 
      uFlag: '\u{1F1E6}\u{1F1EB}', 
      prefix: '93'    
    );

  case EnumCountryCode.id008: 
    return const CountryCode(
      id: '008',
      alpha2: 'AL',
      alpha3: 'ALB',
      officialName: 'Albania', 
      uFlag: '\u{1F1E6}\u{1F1F1}', 
      prefix: '355',    
    );

  case EnumCountryCode.id010: 
    return const CountryCode(
      id: '010',
      alpha2: 'AQ',
      alpha3: 'ATA',
      officialName: 'Antarctica', 
      uFlag: '\u{1F1E6}\u{1F1F6}', 
      prefix: '672',
    );

  case EnumCountryCode.id012: 
    return const CountryCode(
      id: '012',
      alpha2: 'DZ',
      alpha3: 'DZA',
      officialName: 'Algeria', 
      uFlag: 'U+1F1E9 U+1F1FF', 
      prefix: '213',
    );

  case EnumCountryCode.id016: 
    return const CountryCode(
      id: '016',
      alpha2: 'AS',
      alpha3: 'ASM',
      officialName: 'American Samoa', 
      uFlag: '\u{1F1E6}\u{1F1F8}', 
      prefix: '1-684',
    );

  case EnumCountryCode.id020: 
    return const CountryCode(
      id: '020',
      alpha2: 'AD',
      alpha3: 'AND',
      officialName: 'Andorra', 
      uFlag: '\u{1F1E6} \u{1F1E9}', 
      prefix: '376',
    );

  case EnumCountryCode.id024: 
    return const CountryCode(
      id: '024',
      alpha2: 'AO',
      alpha3: 'AGO',
      officialName: 'Angola', 
      uFlag: '\u{1F1E6}\u{1F1F4}', 
      prefix: '244',
    );

  case EnumCountryCode.id028: 
    return const CountryCode(
      id: '028',
      alpha2: 'AG',
      alpha3: 'ATG',
      officialName: 'Antigua and Barbuda', 
      uFlag: '\u{1F1E6}\u{1F1EC}', 
      prefix: '1-268',
    );

  case EnumCountryCode.id031: 
    return const CountryCode(
      id: '031',
      alpha2: 'AZ',
      alpha3: 'AZE',
      officialName: 'Azerbaijan', 
      uFlag: '\u{1F1E6}\u{1F1FF}', 
      prefix: '994',
    );

  case EnumCountryCode.id032: 
    return const CountryCode(
      id: '032',
      alpha2: 'AR',
      alpha3: 'ARG',
      officialName: 'Argentina', 
      uFlag: '\u{1F1E6}\u{1F1F7}', 
      prefix: '54',
    );

  case EnumCountryCode.id036: 
    return const CountryCode(
      id: '036',
      alpha2: 'AU',
      alpha3: 'AUS',
      officialName: 'Australia', 
      uFlag: '\u{1F1E6}\u{1F1FA}', 
      prefix: '61',
    );

  case EnumCountryCode.id040: 
    return const CountryCode(
      id: '040',
      alpha2: 'AT',
      alpha3: 'AUT',
      officialName: 'Austria', 
      uFlag: '\u{1F1E6}\u{1F1F9}', 
      prefix: '43',
    );

  case EnumCountryCode.id044: 
    return const CountryCode(
      id: '044',
      alpha2: 'BS',
      alpha3: 'BHS',
      officialName: 'Bahamas', 
      uFlag: '\u{1F1E7}\u{1F1F8}', 
      prefix: '1-242',
    );

  case EnumCountryCode.id048: 
    return const CountryCode(
      id: '048',
      alpha2: 'BH',
      alpha3: 'BHR',
      officialName: 'Bahrain', 
      uFlag: '\u{1F1E7}\u{1F1ED}', 
      prefix: '973',
    );

  case EnumCountryCode.id050: 
    return const CountryCode(
      id: '050',
      alpha2: 'BD',
      alpha3: 'BGD',
      officialName: 'Bangladesh', 
      uFlag: '\u{1F1E7}\u{1F1E9}', 
      prefix: '880',
    );

  case EnumCountryCode.id051: 
    return const CountryCode(
      id: '051',
      alpha2: 'AM',
      alpha3: 'ARM',
      officialName: 'Armenia', 
      uFlag: '\u{1F1E6}\u{1F1F2}', 
      prefix: '374',
    );

  case EnumCountryCode.id052: 
    return const CountryCode(
      id: '052',
      alpha2: 'BB',
      alpha3: 'BRB',
      officialName: 'Barbados', 
      uFlag: '\u{1F1E7}\u{1F1E7}', 
      prefix: '1-246',
    );

  case EnumCountryCode.id056: 
    return const CountryCode(
      id: '056',
      alpha2: 'BE',
      alpha3: 'BEL',
      officialName: 'Belgium', 
      uFlag: '\u{1F1E7}\u{1F1EA}', 
      prefix: '32',
    );

  case EnumCountryCode.id060: 
    return const CountryCode(
      id: '060',
      alpha2: 'BM',
      alpha3: 'BMU',
      officialName: 'Bermuda', 
      uFlag: '\u{1F1E7}\u{1F1F2}', 
      prefix: '1-441',
    );

  case EnumCountryCode.id064: 
    return const CountryCode(
      id: '064',
      alpha2: 'BT',
      alpha3: 'BTN',
      officialName: 'Bhutan', 
      uFlag: '\u{1F1E7}\u{1F1F9}', 
      prefix: '975',
    );

  case EnumCountryCode.id068: 
    return const CountryCode(
      id: '068',
      alpha2: 'BO',
      alpha3: 'BOL',
      officialName: 'Bolivia', 
      uFlag: '\u{1F1E7}\u{1F1F4}', 
      prefix: '591',
    );

  case EnumCountryCode.id070: 
    return const CountryCode(
      id: '070',
      alpha2: 'BA',
      alpha3: 'BIH',
      officialName: 'Bosnia and Herzegovina', 
      uFlag: '\u{1F1E7}\u{1F1E6}', 
      prefix: '387',
    );

  case EnumCountryCode.id072: 
    return const CountryCode(
      id: '072',
      alpha2: 'BW',
      alpha3: 'BWA',
      officialName: 'Botswana', 
      uFlag: '\u{1F1E7}\u{1F1FC}', 
      prefix: '267',
    );

  case EnumCountryCode.id074: 
    return const CountryCode(
      id: '074',
      alpha2: 'BV',
      alpha3: 'BVT',
      officialName: 'Bouvet Island', 
      uFlag: '\u{1F1E7}\u{1F1FB}', prefix: '',
    );

  case EnumCountryCode.id076: 
    return const CountryCode(
      id: '076',
      alpha2: 'BR',
      alpha3: 'BRA',
      officialName: 'Brazil', 
      uFlag: '\u{1F1E7}\u{1F1F7}', 
      prefix: '55',
    );

  case EnumCountryCode.id084: 
    return const CountryCode(
      id: '084',
      alpha2: 'BZ',
      alpha3: 'BLZ',
      officialName: 'Belize', 
      uFlag: '\u{1F1E7}\u{1F1FF}', 
      prefix: '501',
    );

  case EnumCountryCode.id086: 
    return const CountryCode(
      id: '086',
      alpha2: 'IO',
      alpha3: 'IOT',
      officialName: 'British Indian Ocean Territory', 
      uFlag: '\u{1F1EE}\u{1F1F4}', 
      prefix: '246',
    );

  case EnumCountryCode.id090: 
    return const CountryCode(
      id: '090',
      alpha2: 'SB',
      alpha3: 'SLB',
      officialName: 'Solomon Islands', 
      uFlag: '\u{1F1F8}\u{1F1E7}', 
      prefix: '677',
    );

  case EnumCountryCode.id092: 
    return const CountryCode(
      id: '092',
      alpha2: 'VG',
      alpha3: 'VGB',
      officialName: 'British Virgin Islands', 
      uFlag: '\u{1F1FB}\u{1F1EC}', 
      prefix: '1-284',
    );

  case EnumCountryCode.id096: 
    return const CountryCode(
      id: '096',
      alpha2: 'BN',
      alpha3: 'BRN',
      officialName: 'Brunei Darussalam', 
      uFlag: '\u{1F1E7}\u{1F1F3}', 
      prefix: '673',
    );

  case EnumCountryCode.id100: 
    return const CountryCode(
      id: '100',
      alpha2: 'BG',
      alpha3: 'BGR',
      officialName: 'Bulgaria', 
      uFlag: '\u{1F1E7}\u{1F1EC}', 
      prefix: '359',
    );

  case EnumCountryCode.id104: 
    return const CountryCode(
      id: '104',
      alpha2: 'MM',
      alpha3: 'MMR',
      officialName: 'Myanmar', 
      uFlag: '\u{1F1F2}\u{1F1F2}', 
      prefix: '95',
    );

  case EnumCountryCode.id108: 
    return const CountryCode(
      id: '108',
      alpha2: 'BI',
      alpha3: 'BDI',
      officialName: 'Burundi', 
      uFlag: '\u{1F1E7}\u{1F1EE}', 
      prefix: '257',
    );

  case EnumCountryCode.id112: 
    return const CountryCode(
      id: '112',
      alpha2: 'BY',
      alpha3: 'BLR',
      officialName: 'Belarus', 
      uFlag: '\u{1F1E7}\u{1F1FE}', 
      prefix: '375',
    );

  case EnumCountryCode.id116: 
    return const CountryCode(
      id: '116',
      alpha2: 'KH',
      alpha3: 'KHM',
      officialName: 'Cambodia', 
      uFlag: '\u{1F1F0}\u{1F1ED}', 
      prefix: '855',
    );

  case EnumCountryCode.id120: 
    return const CountryCode(
      id: '120',
      alpha2: 'CM',
      alpha3: 'CMR',
      officialName: 'Cameroon', 
      uFlag: '\u{1F1E8}\u{1F1F2}', 
      prefix: '237',
    );

  case EnumCountryCode.id124: 
    return const CountryCode(
      id: '124',
      alpha2: 'CA',
      alpha3: 'CAN',
      officialName: 'Canada', 
      uFlag: '\u{1F1E8}\u{1F1E6}', 
      prefix: '1',
    );

  case EnumCountryCode.id132: 
    return const CountryCode(
      id: '132',
      alpha2: 'CV',
      alpha3: 'CPV',
      officialName: 'Cabo Verde', 
      uFlag: '\u{1F1E8}\u{1F1FB}', 
      prefix: '238',
    );

  case EnumCountryCode.id136: 
    return const CountryCode(
      id: '136',
      alpha2: 'KY',
      alpha3: 'CYM',
      officialName: 'Cayman Islands', 
      uFlag: '\u{1F1F0}\u{1F1FE}', 
      prefix: '1-345',
    );

  case EnumCountryCode.id140: 
    return const CountryCode(
      id: '140',
      alpha2: 'CF',
      alpha3: 'CAF',
      officialName: 'Central African Republic', 
      uFlag: '\u{1F1E8}\u{1F1EB}', 
      prefix: '236',
    );

  case EnumCountryCode.id144: 
    return const CountryCode(
      id: '144',
      alpha2: 'LK',
      alpha3: 'LKA',
      officialName: 'Sri Lanka', 
      uFlag: '\u{1F1F1}\u{1F1F0}', 
      prefix: '94',
    );

  case EnumCountryCode.id148: 
    return const CountryCode(
      id: '148',
      alpha2: 'TD',
      alpha3: 'TCD',
      officialName: 'Chad', 
      uFlag: '\u{1F1F9}\u{1F1E9}', 
      prefix: '235',
    );

  case EnumCountryCode.id152: 
    return const CountryCode(
      id: '152',
      alpha2: 'CL',
      alpha3: 'CHL',
      officialName: 'Chile', 
      uFlag: '\u1F1E8\u1F1F1', 
      prefix: '56',
    );

  case EnumCountryCode.id156: 
    return const CountryCode(
      id: '156',
      alpha2: 'CN',
      alpha3: 'CHN',
      officialName: 'China', 
      uFlag: '\u1F1E8\u1F1F3', 
      prefix: '86',
    );

  case EnumCountryCode.id158: 
    return const CountryCode(
      id: '158',
      alpha2: 'TW',
      alpha3: 'TWN',
      officialName: 'Taiwan', 
      uFlag: '\u{1F1F9}\u{1F1FC}', 
      prefix: '886',
    );

  case EnumCountryCode.id162: 
    return const CountryCode(
      id: '162',
      alpha2: 'CX',
      alpha3: 'CXR',
      officialName: 'Christmas Islands', 
      uFlag: '\u{1F1E8}\u{1F1FD}', 
      prefix: '61',
    );

  case EnumCountryCode.id166: 
    return const CountryCode(
      id: '166',
      alpha2: 'CC',
      alpha3: 'CCK',
      officialName: 'Cocos Islands', 
      uFlag: '\u{1F1E8}\u{1F1E8}', 
      prefix: '61',
    );

  case EnumCountryCode.id170: 
    return const CountryCode(
      id: '170',
      alpha2: 'CO',
      alpha3: 'COL',
      officialName: 'Colombia', 
      uFlag: '\u{1F1E8}\u{1F1F4}', 
      prefix: '57',
    );

  case EnumCountryCode.id174: 
    return const CountryCode(
      id: '174',
      alpha2: 'KM',
      alpha3: 'COM',
      officialName: 'Comoros', 
      uFlag: '\u{1F1F0}\u{1F1F2}', 
      prefix: '269',
    );

  case EnumCountryCode.id175: 
    return const CountryCode(
      id: '175',
      alpha2: 'YT',
      alpha3: 'MYT',
      officialName: 'Mayotte', 
      uFlag: '\u{1F1FE}\u{1F1F9}', 
      prefix: '262',
    );
  //congo Republic
  case EnumCountryCode.id178: 
    return const CountryCode(
      id: '178',
      alpha2: 'CG',
      alpha3: 'COG',
      officialName: 'Congo', 
      uFlag: '\u{1F1E8}\u{1F1EC}', 
      prefix: '242',
    );
  //congo DR
  case EnumCountryCode.id180: 
    return const CountryCode(
      id: '180',
      alpha2: 'CD',
      alpha3: 'COD',
      officialName: 'Congo Democratic Republic', 
      uFlag: '\u{1F1E8}\u{1F1E9}', 
      prefix: '243',
    );

  case EnumCountryCode.id184: 
    return const CountryCode(
      id: '184',
      alpha2: 'CK',
      alpha3: 'COK',
      officialName: 'Cook Islands', 
      uFlag: '\u{1F1E8}\u{1F1F0}', 
      prefix: '682',
    );

  case EnumCountryCode.id188: 
    return const CountryCode(
      id: '188',
      alpha2: 'CR',
      alpha3: 'CRI',
      officialName: 'Costa Rica', 
      uFlag: '\u{1F1E8}\u{1F1F7}', prefix: '506',
    );
    

  case EnumCountryCode.id191: 
    return const CountryCode(
      id: '191',
      alpha2: 'HR',
      alpha3: 'HRV',
      officialName: 'Croatia', 
      uFlag: '\u{1F1ED}\u{1F1F7}', 
      prefix: '385',
    );

  case EnumCountryCode.id192: 
    return const CountryCode(
      id: '192',
      alpha2: 'CU',
      alpha3: 'CUB',
      officialName: 'Cuba', 
      uFlag: '\u{1F1E8}\u{1F1FA}', 
      prefix: '53',
    );

  case EnumCountryCode.id196: 
    return const CountryCode(
      id: '196',
      alpha2: 'CY',
      alpha3: 'CYP',
      officialName: 'Cyprus', 
      uFlag: '\u1F1E8\u1F1FE', 
      prefix: '357',
    );

  case EnumCountryCode.id203: 
    return const CountryCode(
      id: '203',
      alpha2: 'CZ',
      alpha3: 'CZE',
      officialName: 'Czechia', 
      uFlag: '\u{1F1E8}\u{1F1FF}', 
      prefix: '420',
    );

  case EnumCountryCode.id204: 
    return const CountryCode(
      id: '204',
      alpha2: 'BJ',
      alpha3: 'BEN',
      officialName: 'Benin', 
      uFlag: '\u{1F1E7}\u{1F1EF}', 
      prefix: '229',
    );

  case EnumCountryCode.id208: 
    return const CountryCode(
      id: '208',
      alpha2: 'DK',
      alpha3: 'DNK',
      officialName: 'Denmark', 
      uFlag: '\u1F1E9\u1F1F0', 
      prefix: '45',
    );

  case EnumCountryCode.id212: 
    return const CountryCode(
      id: '212',
      alpha2: 'DM',
      alpha3: 'DMA',
      officialName: 'Dominica', 
      uFlag: '\u{1F1E9}\u{1F1F2}', 
      prefix: '1-767',
    );

  case EnumCountryCode.id214: 
    return const CountryCode(
      id: '214',
      alpha2: 'DO',
      alpha3: 'DOM',
      officialName: 'Dominican Republic', 
      uFlag: '\u{1F1E9}\u{1F1F4}', prefix: '1-809, 1-829, 1-849',
    );

  case EnumCountryCode.id218: 
    return const CountryCode(
      id: '218',
      alpha2: 'EC',
      alpha3: 'ECU',
      officialName: 'Ecuador', 
      uFlag: '\u{1F1EA}\u{1F1E8}', 
      prefix: '593',
    );

  case EnumCountryCode.id222: 
    return const CountryCode(
      id: '222',
      alpha2: 'SV',
      alpha3: 'SLV',
      officialName: 'El Salvador', 
      uFlag: '\u{1F1F8}\u{1F1FB}', 
      prefix: '503',
    );

  case EnumCountryCode.id226: 
    return const CountryCode(
      id: '226',
      alpha2: 'GQ',
      alpha3: 'GNQ',
      officialName: 'Equatorial Guinea', 
      uFlag: '\u{1F1EC}\u{1F1F6}', 
      prefix: '240',
    );

  case EnumCountryCode.id231: 
    return const CountryCode(
      id: '231',
      alpha2: 'ET',
      alpha3: 'ETH',
      officialName: 'Ethiopia', 
      uFlag: '\u{1F1EA}\u{1F1F9}', 
      prefix: '251',
    );

  case EnumCountryCode.id232: 
    return const CountryCode(
      id: '232',
      alpha2: 'ER',
      alpha3: 'ERI',
      officialName: 'Eritrea', 
      uFlag: '\u{1F1EA}\u{1F1F7}', 
      prefix: '291',
    );

  case EnumCountryCode.id233: 
    return const CountryCode(
      id: '233',
      alpha2: 'EE',
      alpha3: 'EST',
      officialName: 'Estonia', 
      uFlag: '\u{1F1EA}\u{1F1EA}', 
      prefix: '372',
    );

  case EnumCountryCode.id234: 
    return const CountryCode(
      id: '234',
      alpha2: 'FO',
      alpha3: 'FRO',
      officialName: 'Faore Islands', 
      uFlag: '\u{1F1EB}\u{1F1F4}', 
      prefix: '298',
    );

  case EnumCountryCode.id238: 
    return const CountryCode(
      id: '238',
      alpha2: 'FK',
      alpha3: 'FLK',
      officialName: 'Falkland Islands', 
      uFlag: '\u{1F1EB}\u{1F1F0}', 
      prefix: '500',
    );

  case EnumCountryCode.id239: 
    return const CountryCode(
      id: '239',
      alpha2: 'GS',
      alpha3: 'SGS',
      officialName: 'South Georgia And The South Sandwich Islands', 
      uFlag: '\u{1F1EC}\u{1F1F8}', 
      prefix: '995',
    );

  case EnumCountryCode.id242: 
    return const CountryCode(
      id: '242',
      alpha2: 'FJ',
      alpha3: 'FJI',
      officialName: 'Fiji', 
      uFlag: '\u{1F1EB}\u{1F1EF}', 
      prefix: '679',
    );

  case EnumCountryCode.id246: 
    return const CountryCode(
      id: '246',
      alpha2: 'FI',
      alpha3: 'FIN',
      officialName: 'Finland', 
      uFlag: '\u{1F1EB}\u{1F1EE}', 
      prefix: '358',
    );

  case EnumCountryCode.id248: 
    return const CountryCode(
      id: '248',
      alpha2: 'AX',
      alpha3: 'ALA',
      officialName: 'Aland Islands', 
      uFlag: '\u{1F1E6}\u{1F1FD}', 
      prefix: '358-18, 358-457',
    );

  case EnumCountryCode.id250: 
    return const CountryCode(
      id: '250',
      alpha2: 'FR',
      alpha3: 'FRA',
      officialName: 'France', 
      uFlag: '\u{1F1EB}\u{1F1F7}', 
      prefix: '33',
    );

  case EnumCountryCode.id254: 
    return const CountryCode(
      id: '254',
      alpha2: 'GF',
      alpha3: 'GUF',
      officialName: 'French Guaiana', 
      uFlag: '\u{1F1EC}\u{1F1EB}', 
      prefix: '594',
    );

  case EnumCountryCode.id258: 
    return const CountryCode(
      id: '258',
      alpha2: 'PF',
      alpha3: 'PYF',
      officialName: 'French Polynesia', 
      uFlag: '\u{1F1F5}\u{1F1EB}', 
      prefix: '689',
    );

  case EnumCountryCode.id260: 
    return const CountryCode(
      id: '260',
      alpha2: 'TF',
      alpha3: 'ATF',
      officialName: 'French Southern Territories', 
      uFlag: '\u{1F1F9}\u{1F1EB}', 
      prefix: '262',
    );

  case EnumCountryCode.id262: 
    return const CountryCode(
      id: '262',
      alpha2: 'DJ',
      alpha3: 'DJI',
      officialName: 'Djibouti', 
      uFlag: '\u{1F1E9}\u{1F1EF}', 
      prefix: '253',
    );

  case EnumCountryCode.id266: 
    return const CountryCode(
      id: '266',
      alpha2: 'GA',
      alpha3: 'GAB',
      officialName: 'Gabon', 
      uFlag: '\u{1F1EC}\u{1F1E6}', 
      prefix: '241',
    );

  case EnumCountryCode.id268: 
    return const CountryCode(
      id: '268',
      alpha2: 'GE',
      alpha3: 'GEO',
      officialName: 'Georgia', 
      uFlag: '\u{1F1EC}\u{1F1EA}', 
      prefix: '995',
    );

  case EnumCountryCode.id270: 
    return const CountryCode(
      id: '270',
      alpha2: 'GM',
      alpha3: 'GMB',
      officialName: 'Gambia', 
      uFlag: '\u{1F1EC}\u{1F1F2}', 
      prefix: '220',
    );

  case EnumCountryCode.id275: 
    return const CountryCode(
      id: '275',
      alpha2: 'PS',
      alpha3: 'PSE',
      officialName: 'Palestine', 
      uFlag: '\u{1F1F5}\u{1F1F8}', 
      prefix: '970',
    );

  case EnumCountryCode.id276: 
    return const CountryCode(
      id: '276',
      alpha2: 'DE',
      alpha3: 'DEU',
      officialName: 'Germany', 
      uFlag: '\u{1F1E9}\u{1F1EA}', 
      prefix: '49',
    );

  case EnumCountryCode.id288: 
    return const CountryCode(
      id: '288',
      alpha2: 'GH',
      alpha3: 'GHA',
      officialName: 'Ghana', 
      uFlag: '\u{1F1EC}\u{1F1ED}', 
      prefix: '233',
    );

  case EnumCountryCode.id292: 
    return const CountryCode(
      id: '292',
      alpha2: 'GI',
      alpha3: 'GIB',
      officialName: 'Gibraltar', 
      uFlag: '\u{1F1EC}\u{1F1EE}', 
      prefix: '350',
    );

  case EnumCountryCode.id296: 
    return const CountryCode(
      id: '296',
      alpha2: 'KI',
      alpha3: 'KIR',
      officialName: 'Kiribati', 
      uFlag: '\u{1F1F0}\u{1F1EE}', 
      prefix: '686',
    );

  case EnumCountryCode.id300: 
    return const CountryCode(
      id: '300',
      alpha2: 'GR',
      alpha3: 'GRC',
      officialName: 'Greece', 
      uFlag: '\u{1F1EC}\u{1F1F7}', 
      prefix: '30',
    );

  case EnumCountryCode.id304: 
    return const CountryCode(
      id: '304',
      alpha2: 'GL',
      alpha3: 'GRL',
      officialName: 'Greenland', 
      uFlag: '\u{1F1EC}\u{1F1F1}', 
      prefix: '299',
    );

  case EnumCountryCode.id308: 
    return const CountryCode(
      id: '308',
      alpha2: 'GD',
      alpha3: 'GRD',
      officialName: 'Grenada', 
      uFlag: '\u{1F1EC}\u{1F1E9}', 
      prefix: '1-473',
    );

  case EnumCountryCode.id312: 
    return const CountryCode(
      id: '312',
      alpha2: 'GP',
      alpha3: 'GLP',
      officialName: 'Guadeloupe', 
      uFlag: '\u{1F1EC}\u{1F1F5}', 
      prefix: '590',
    );

  case EnumCountryCode.id316: 
    return const CountryCode(
      id: '316',
      alpha2: 'GU',
      alpha3: 'GUM',
      officialName: 'Guam', 
      uFlag: '\u{1F1EC}\u{1F1FA}', 
      prefix: '1-671',
    );

  case EnumCountryCode.id320: 
    return const CountryCode(
      id: '320',
      alpha2: 'GT',
      alpha3: 'GTM',
      officialName: 'Guatemala', 
      uFlag: '\u{1F1EC}\u{1F1F9}', 
      prefix: '502',
    );

  case EnumCountryCode.id324: 
    return const CountryCode(
      id: '324',
      alpha2: 'GN',
      alpha3: 'GIN',
      officialName: 'Guinea', 
      uFlag: '\u{1F1EC}\u{1F1F3}', 
      prefix: '224',
    );

  case EnumCountryCode.id328: 
    return const CountryCode(
      id: '328',
      alpha2: 'GY',
      alpha3: 'GUY',
      officialName: 'Guyana', 
      uFlag: 'U+1F1EC U+1F1FE', 
      prefix: '592',
    );

  case EnumCountryCode.id332: 
    return const CountryCode(
      id: '332',
      alpha2: 'HT',
      alpha3: 'HTI',
      officialName: 'Haiti', 
      uFlag: '\u{1F1ED}\u{1F1F9}', 
      prefix: '509',
    );

  case EnumCountryCode.id334: 
    return const CountryCode(
      id: '334',
      alpha2: 'HM',
      alpha3: 'HMD',
      officialName: 'Heard Island And McDonald Islands', 
      uFlag: '\u{1F1ED}\u{1F1F2}', 
      prefix: '672',
    );
  //vatican city
  case EnumCountryCode.id336: 
    return const CountryCode(
      id: '336',
      alpha2: 'VA',
      alpha3: 'VAT',
      officialName: 'Holy See', 
      uFlag: '\u{1F1FB}\u{1F1E6}', 
      prefix: '379',
    );

  case EnumCountryCode.id340: 
    return const CountryCode(
      id: '340',
      alpha2: 'HN',
      alpha3: 'HND',
      officialName: 'Honduras', 
      uFlag: '\u{1F1ED}\u{1F1F3}', 
      prefix: '504',
    );

  case EnumCountryCode.id344: 
    return const CountryCode(
      id: '344',
      alpha2: 'HK',
      alpha3: 'HKG',
      officialName: 'Hong Kong', 
      uFlag: '\u{1F1ED}\u{1F1F0}', 
      prefix: '852',
    );

  case EnumCountryCode.id348: 
    return const CountryCode(
      id: '348',
      alpha2: 'HU',
      alpha3: 'HUN',
      officialName: 'Hungary', 
      uFlag: '\u{1F1ED}\u{1F1FA}', 
      prefix: '36',
    );

  case EnumCountryCode.id352: 
    return const CountryCode(
      id: '352',
      alpha2: 'IS',
      alpha3: 'ISL',
      officialName: 'Iceland', 
      uFlag: '\u{1F1EE}\u{1F1F8}', 
      prefix: '354',
    );

  case EnumCountryCode.id356: 
    return const CountryCode(
      id: '356',
      alpha2: 'IN',
      alpha3: 'IND',
      officialName: 'India', 
      uFlag: '\u{1F1EE}\u{1F1F3}', 
      prefix: '91',
    );

  case EnumCountryCode.id360: 
    return const CountryCode(
      id: '360',
      alpha2: 'ID',
      alpha3: 'IDN',
      officialName: 'Indonesia', 
      uFlag: '\u{1F1EE}\u{1F1E9}', 
      prefix: '62',
    );

  case EnumCountryCode.id364: 
    return const CountryCode(
      id: '364',
      alpha2: 'IR',
      alpha3: 'IRN',
      officialName: 'Iran', 
      uFlag: '\u{1F1EE}\u{1F1F7}', 
      prefix: '98',
    );

  case EnumCountryCode.id368: 
    return const CountryCode(
      id: '368',
      alpha2: 'IQ',
      alpha3: 'IRQ',
      officialName: 'Iraq', 
      uFlag: '\u{1F1EE}\u{1F1F6}', 
      prefix: '964',
    );

  case EnumCountryCode.id372: 
    return const CountryCode(
      id: '372',
      alpha2: 'IE',
      alpha3: 'IRL',
      officialName: 'Ireland', 
      uFlag: '\u{1F1EE}\u{1F1EA}', 
      prefix: '353',
    );

  case EnumCountryCode.id376: 
    return const CountryCode(
      id: '376',
      alpha2: 'IL',
      alpha3: 'ISR',
      officialName: 'Israel', 
      uFlag: '\u{1F1EE}\u{1F1F1}', 
      prefix: '972',
    );

  case EnumCountryCode.id380: 
    return const CountryCode(
      id: '380',
      alpha2: 'IT',
      alpha3: 'ITA',
      officialName: 'Italy', 
      uFlag: '\u{1F1EE}\u{1F1F9}', prefix: '39',
    );

  case EnumCountryCode.id384: 
    return const CountryCode(
      id: '384',
      alpha2: 'CI',
      alpha3: 'CIV',
      officialName: 'Cote D\'Ivoire', 
      uFlag: '\u{1F1E8}\u{1F1EE}', 
      prefix: '225', 
    );

  case EnumCountryCode.id388: 
    return const CountryCode(
      id: '388',
      alpha2: 'JM',
      alpha3: 'JAM',
      officialName: 'Jamaica', 
      uFlag: '\u{1F1EF}\u{1F1F2}', 
      prefix: '1-876',
    );

  case EnumCountryCode.id392: 
    return const CountryCode(
      id: '392',
      alpha2: 'JP',
      alpha3: 'JPN',
      officialName: 'Japan', 
      uFlag: '\u{1F1EF}\u{1F1F5}', 
      prefix: '81',
    );

  case EnumCountryCode.id398: 
    return const CountryCode(
      id: '398',
      alpha2: 'KZ',
      alpha3: 'KAZ',
      officialName: 'Kazakhstan', 
      uFlag: '\u{1F1F0}\u{1F1FF}', 
      prefix: '7',
    );

  case EnumCountryCode.id400: 
    return const CountryCode(
      id: '400',
      alpha2: 'JO',
      alpha3: 'JOR',
      officialName: 'Jordan', 
      uFlag: '\u{1F1EF}\u{1F1F4}', 
      prefix: '962',
    );

  case EnumCountryCode.id404: 
    return const CountryCode(
      id: '404',
      alpha2: 'KE',
      alpha3: 'KEN',
      officialName: 'Kenya', 
      uFlag: '\u{1F1F0}\u{1F1EA}', 
      prefix: '254',
    );
  //north korea
  case EnumCountryCode.id408: 
    return const CountryCode(
      id: '408',
      alpha2: 'KP',
      alpha3: 'MMR',
      officialName: 'Democratic People\'s Republic Of Korea', 
      uFlag: '\u{1F1F0}\u{1F1F5}', 
      prefix: '850',
    );
  //south korea
  case EnumCountryCode.id410: 
    return const CountryCode(
      id: '410',
      alpha2: 'KR',
      alpha3: 'PRK',
      officialName: 'Republic Of Korea',     
      uFlag: '\u{1F1F0}\u{1F1F7}', 
      prefix: '82',
    );

  case EnumCountryCode.id414: 
    return const CountryCode(
      id: '414',
      alpha2: 'KW',
      alpha3: 'KWT',
      officialName: 'Kuwait', 
      uFlag: '\u{1F1F0}\u{1F1FC}', 
      prefix: '965',
    );

  case EnumCountryCode.id417: 
    return const CountryCode(
      id: '417',
      alpha2: 'KG',
      alpha3: 'KGZ',
      officialName: 'Kyrgyzstan', 
      uFlag: '\u{1F1F0}\u{1F1EC}', 
      prefix: '996',
    );

  case EnumCountryCode.id418: 
    return const CountryCode(
      id: '418',
      alpha2: 'LA',
      alpha3: 'LAO',
      officialName: 'Lao People\'s Democratic Republic', 
      uFlag: '\u{1F1F1}\u{1F1E6}', 
      prefix: '856',
    );

  case EnumCountryCode.id422: 
    return const CountryCode(
      id: '422',
      alpha2: 'LB',
      alpha3: 'LBN',
      officialName: 'Lebanon', 
      uFlag: '\u{1F1F1}\u{1F1E7}', 
      prefix: '961',
    );

  case EnumCountryCode.id426: 
    return const CountryCode(
      id: '426',
      alpha2: 'LS',
      alpha3: 'LSO',
      officialName: 'Lesotho', 
      uFlag: '\u{1F1F1}\u{1F1F8}', 
      prefix: '266',
    );

  case EnumCountryCode.id428: 
    return const CountryCode(
      id: '428',
      alpha2: 'LV',
      alpha3: 'LVA',
      officialName: 'Latvia', 
      uFlag: '\u{1F1F1}\u{1F1FB}', 
      prefix: '371',
    );

  case EnumCountryCode.id430: 
    return const CountryCode(
      id: '430',
      alpha2: 'LR',
      alpha3: 'LBR',
      officialName: 'Liberia', 
      uFlag: '\u{1F1F1}\u{1F1F7}', 
      prefix: '231',
    );

  case EnumCountryCode.id434: 
    return const CountryCode(
      id: '434',
      alpha2: 'LY',
      alpha3: 'LBY',
      officialName: 'Libya', 
      uFlag: '\u{1F1F1}\u{1F1FE}', 
      prefix: '218',
    );

  case EnumCountryCode.id438: 
    return const CountryCode(
      id: '438',
      alpha2: 'LI',
      alpha3: 'LIE',
      officialName: 'Liechtenstein', 
      uFlag: '\u{1F1F1}\u{1F1EE}', 
      prefix: '423',
    );

  case EnumCountryCode.id440: 
    return const CountryCode(
      id: '440',
      alpha2: 'LT',
      alpha3: 'LTU',
      officialName: 'Lithuania', 
      uFlag: '\u{1F1F1}\u{1F1F9}', 
      prefix: '370',
    );

  case EnumCountryCode.id442: 
    return const CountryCode(
      id: '442',
      alpha2: 'LU',
      alpha3: 'LUX',
      officialName: 'Luxembourg', 
      uFlag: '\u{1F1F1}\u{1F1FA}', 
      prefix: '352',
    );

  case EnumCountryCode.id446: 
    return const CountryCode(
      id: '446',
      alpha2: 'MO',
      alpha3: 'MAC',
      officialName: 'Macao', 
      uFlag: '\u{1F1F2}\u{1F1F4}', 
      prefix: '853',
    );

  case EnumCountryCode.id450: 
    return const CountryCode(
      id: '450',
      alpha2: 'MG',
      alpha3: 'MDG',
      officialName: 'Madagascar', 
      uFlag: '\u{1F1F2}\u{1F1EC}', 
      prefix: '261',
    );

  case EnumCountryCode.id454: 
    return const CountryCode(
      id: '454',
      alpha2: 'MW',
      alpha3: 'MWI',
      officialName: 'Malawi', 
      uFlag: '\u{1F1F2}\u{1F1FC}', 
      prefix: '265',
    );

  case EnumCountryCode.id458: 
    return const CountryCode(
      id: '458',
      alpha2: 'MY',
      alpha3: 'MYS',
      officialName: 'Malaysia', 
      uFlag: '\u{1F1F2}\u{1F1FE}', 
      prefix: '60',
    );

  case EnumCountryCode.id462: 
    return const CountryCode(
      id: '462',
      alpha2: 'MV',
      alpha3: 'MDV',
      officialName: 'Maldives', 
      uFlag: '\u{1F1F2}\u{1F1FB}', 
      prefix: '960',
    );

  case EnumCountryCode.id466: 
    return const CountryCode(
      id: '466',
      alpha2: 'ML',
      alpha3: 'MLI',
      officialName: 'Mali', 
      uFlag: '\u{1F1F2}\u{1F1F1}', 
      prefix: '223',
    );

  case EnumCountryCode.id470: 
    return const CountryCode(
      id: '470',
      alpha2: 'MT',
      alpha3: 'MLT',
      officialName: 'Malta', 
      uFlag: '\u{1F1F2}\u{1F1F9}', 
      prefix: '356',
    );

  case EnumCountryCode.id474: 
    return const CountryCode(
      id: '474',
      alpha2: 'MQ',
      alpha3: 'MTQ',
      officialName: 'Martinique', 
      uFlag: '\u{1F1F2}\u{1F1F6}', 
      prefix: '596',
    );

  case EnumCountryCode.id478: 
    return const CountryCode(
      id: '478',
      alpha2: 'MR',
      alpha3: 'MRT',
      officialName: 'Mauritania', 
      uFlag: '\u{1F1F2}\u{1F1F7}', 
      prefix: '222',
    );

  case EnumCountryCode.id480: 
    return const CountryCode(
      id: '480',
      alpha2: 'MU',
      alpha3: 'MUS',
      officialName: 'Mauritius', 
      uFlag: '\u{1F1F2}\u{1F1FA}', 
      prefix: '230',
    );

  case EnumCountryCode.id484: 
    return const CountryCode(
      id: '484',
      alpha2: 'MX',
      alpha3: 'MEX',
      officialName: 'Mexico', 
      uFlag: '\u{1F1F2}\u{1F1FD}', 
      prefix: '52',
    );

  case EnumCountryCode.id492: 
    return const CountryCode(
      id: '492',
      alpha2: 'MC',
      alpha3: 'MCO',
      officialName: 'Monaco', 
      uFlag: '\u{1F1F2}\u{1F1E8}', 
      prefix: '377',
    );

  case EnumCountryCode.id496: 
    return const CountryCode(
      id: '496',
      alpha2: 'MN',
      alpha3: 'MNG',
      officialName: 'Mongolia', 
      uFlag: '\u{1F1F2}\u{1F1F3}', 
      prefix: '976',
    );

  case EnumCountryCode.id498: 
    return const CountryCode(
      id: '498',
      alpha2: 'MD',
      alpha3: 'MDA',
      officialName: 'Republic Of Moldova', 
      uFlag: '\u{1F1F2}\u{1F1E9}', 
      prefix: '373',
    );

  case EnumCountryCode.id499: 
    return const CountryCode(
      id: '499',
      alpha2: 'ME',
      alpha3: 'MNE',
      officialName: 'Montenegro', 
      uFlag: '\u{1F1F2}\u{1F1EA}', 
      prefix: '382',
    );

  case EnumCountryCode.id500: 
    return const CountryCode(
      id: '500',
      alpha2: 'MS',
      alpha3: 'MSR',
      officialName: 'Montserrat', 
      uFlag: '\u{1F1F2}\u{1F1F8}', 
      prefix: '1-664',
    );

  case EnumCountryCode.id504: 
    return const CountryCode(
      id: '504',
      alpha2: 'MA',
      alpha3: 'MAR',
      officialName: 'Morocco', 
      uFlag: '\u{1F1F2}\u{1F1E6}', 
      prefix: '212',
    );

  case EnumCountryCode.id508: 
    return const CountryCode(
      id: '508',
      alpha2: 'MZ',
      alpha3: 'MOZ',
      officialName: 'Mozambique', 
      uFlag: '\u{1F1F2}\u{1F1FF}', 
      prefix: '258',
    );

  case EnumCountryCode.id512: 
    return const CountryCode(
      id: '512',
      alpha2: 'OM',
      alpha3: 'OMN',
      officialName: 'Oman', 
      uFlag: '\u{1F1F4}\u{1F1F2}', 
      prefix: '968',
    );

  case EnumCountryCode.id516: 
    return const CountryCode(
      id: '516',
      alpha2: 'NA',
      alpha3: 'NAM',
      officialName: 'Namibia', 
      uFlag: '\u{1F1F3}\u{1F1E6}', 
      prefix: '264',
    );

  case EnumCountryCode.id520: 
    return const CountryCode(
      id: '520',
      alpha2: 'NR',
      alpha3: 'NRU',
      officialName: 'Nauru', 
      uFlag: '\u{1F1F3}\u{1F1F7}', 
      prefix: '674',
    );

  case EnumCountryCode.id524: 
    return const CountryCode(
      id: '524',
      alpha2: 'NP',
      alpha3: 'NPL',
      officialName: 'Nepal', 
      uFlag: '\u{1F1F3}\u{1F1F5}', 
      prefix: '977',
    );

  case EnumCountryCode.id528: 
    return const CountryCode(
      id: '528',
      alpha2: 'NL',
      alpha3: 'NLD',
      officialName: 'Netherlands', 
      uFlag: '\u{1F1F3}\u{1F1F1}', 
      prefix: '31',
    );

  case EnumCountryCode.id531: 
    return const CountryCode(
      id: '531',
      alpha2: 'CW',
      alpha3: 'CUW',
      officialName: 'Curaçao', 
      uFlag: '\u{1F1E8}\u{1F1FC}', 
      prefix: '599',
    );

  case EnumCountryCode.id533: 
    return const CountryCode(
      id: '533',
      alpha2: 'AW',
      alpha3: 'ABW',
      officialName: 'Aruba', 
      uFlag: '\u{1F1E6}\u{1F1FC}', 
      prefix: '297',
    );

  case EnumCountryCode.id534: 
    return const CountryCode(
      id: '534',
      alpha2: 'SX',
      alpha3: 'SXM',
      officialName: 'Sint Maarten', 
      uFlag: '\u{1F1F8}\u{1F1FD}', 
      prefix: '1-721',
    );

  case EnumCountryCode.id535: 
    return const CountryCode(
      id: '535',
      alpha2: 'BQ',
      alpha3: 'BES',
      officialName: 'Bonaire Sint Eustatius And Saba', 
      uFlag: '\u{1F1E7}\u{1F1F6}', 
      prefix: '599',
    );

  case EnumCountryCode.id540: 
    return const CountryCode(
      id: '540',
      alpha2: 'NC',
      alpha3: 'NCL',
      officialName: 'New Caledonia', 
      uFlag: '\u{1F1F3}\u{1F1E8}', 
      prefix: '687',
    );

  case EnumCountryCode.id548: 
    return const CountryCode(
      id: '548',
      alpha2: 'VU',
      alpha3: 'VUT',
      officialName: 'Vanuatu', 
      uFlag: '\u{1F1FB}\u{1F1FA}', 
      prefix: '678',
    );

  case EnumCountryCode.id554: 
    return const CountryCode(
      id: '554',
      alpha2: 'NZ',
      alpha3: 'NZL',
      officialName: 'New Zealand', 
      uFlag: '\u{1F1F3}\u{1F1FF}', 
      prefix: '64',
    );

  case EnumCountryCode.id558: 
    return const CountryCode(
      id: '558',
      alpha2: 'NI',
      alpha3: 'NIC',
      officialName: 'Nicaragua', 
      uFlag: '\u{1F1F3}\u{1F1EE}', 
      prefix: '505',
    );

  case EnumCountryCode.id562: 
    return const CountryCode(
      id: '562',
      alpha2: 'NE',
      alpha3: 'NER',
      officialName: 'Niger', 
      uFlag: '\u{1F1F3}\u{1F1EA}', 
      prefix: '227',
    );

  case EnumCountryCode.id566: 
    return const CountryCode(
      id: '566',
      alpha2: 'NG',
      alpha3: 'NGA',
      officialName: 'Nigeria', 
      uFlag: '\u{1F1F3}\u{1F1EC}', 
      prefix: '234',
    );

  case EnumCountryCode.id570: 
    return const CountryCode(
      id: '570',
      alpha2: 'NU',
      alpha3: 'NIU',
      officialName: 'Niue', 
      uFlag: '\u{1F1F3}\u{1F1FA}', 
      prefix: '683',
    );

  case EnumCountryCode.id574: 
    return const CountryCode(
      id: '574',
      alpha2: 'NF',
      alpha3: 'NFK',
      officialName: 'Norfolk Island', 
      uFlag: '\u{1F1F3}\u{1F1EB}', 
      prefix: '672',
    );

  case EnumCountryCode.id578: 
    return const CountryCode(
      id: '578',
      alpha2: 'NO',
      alpha3: 'NOR',
      officialName: 'Norway', 
      uFlag: '\u{1F1F3}\u{1F1F4}', 
      prefix: '47',
    );

  case EnumCountryCode.id580: 
    return const CountryCode(
      id: '580',
      alpha2: 'MP',
      alpha3: 'MNP',
      officialName: 'Northern Marian Islands', 
      uFlag: '\u{1F1F2}\u{1F1F5}', 
      prefix: '1-670',
    );

  case EnumCountryCode.id581: 
    return const CountryCode(
      id: '581',
      alpha2: 'UM',
      alpha3: 'UMI',
      officialName: 'United States Minor Outlying Islands', 
      uFlag: '\u{1F1FA}\u{1F1F2}', 
      prefix: '1',
    );

  case EnumCountryCode.id583: 
    return const CountryCode(
      id: '583',
      alpha2: 'FM',
      alpha3: 'FSM',
      officialName: 'Federated States Of Micronesia', 
      uFlag: '\u{1F1EB}\u{1F1F2}', 
      prefix: '691',
    );

  case EnumCountryCode.id584: 
    return const CountryCode(
      id: '584',
      alpha2: 'MH',
      alpha3: 'MHL',
      officialName: 'Marshall Islands', 
      uFlag: '\u{1F1F2}\u{1F1ED}', 
      prefix: '692',
    );

  case EnumCountryCode.id585: 
    return const CountryCode(
      id: '585',
      alpha2: 'PW',
      alpha3: 'PLW',
      officialName: 'Palau', 
      uFlag: '\u{1F1F5}\u{1F1FC}', 
      prefix: '680',
    );

  case EnumCountryCode.id586: 
    return const CountryCode(
      id: '586',
      alpha2: 'PK',
      alpha3: 'PAK',
      officialName: 'Pakistan', 
      uFlag: '\u{1F1F5}\u{1F1F0}', 
      prefix: '92',
    );

  case EnumCountryCode.id591: 
    return const CountryCode(
      id: '591',
      alpha2: 'PA',
      alpha3: 'PAN',
      officialName: 'Panama', 
      uFlag: '\u{1F1F5}\u{1F1E6}', 
      prefix: '507',
    );

  case EnumCountryCode.id598: 
    return const CountryCode(
      id: '598',
      alpha2: 'PG',
      alpha3: 'PNG',
      officialName: 'Papua New Guinea', 
      uFlag: '\u{1F1F5}\u{1F1EC}', 
      prefix: '675',
    );

  case EnumCountryCode.id600: 
    return const CountryCode(
      id: '600',
      alpha2: 'PY',
      alpha3: 'PRY',
      officialName: 'Paraguay', 
      uFlag: '\u{1F1F5}\u{1F1FE}', 
      prefix: '595',
    );

  case EnumCountryCode.id604: 
    return const CountryCode(
      id: '604',
      alpha2: 'PE',
      alpha3: 'PER',
      officialName: 'Peru', 
      uFlag: '\u{1F1F5}\u{1F1EA}', 
      prefix: '51',
    );

  case EnumCountryCode.id608: 
    return const CountryCode(
      id: '608',
      alpha2: 'PH',
      alpha3: 'PHL',
      officialName: 'Philippines', 
      uFlag: '\u{1F1F5}\u{1F1ED}', 
      prefix: '63',
    );

  case EnumCountryCode.id612: 
    return const CountryCode(
      id: '612',
      alpha2: 'PN',
      alpha3: 'PCN',
      officialName: 'Pitcairn', 
      uFlag: '\u{1F1F5}\u{1F1F3}', 
      prefix: '64',
    );

  case EnumCountryCode.id616: 
    return const CountryCode(
      id: '616',
      alpha2: 'PL',
      alpha3: 'POL',
      officialName: 'Poland', 
      uFlag: '\u{1F1F5}\u{1F1F1}', 
      prefix: '48',
    );

  case EnumCountryCode.id620: 
    return const CountryCode(
      id: '620',
      alpha2: 'PT',
      alpha3: 'PRT',
      officialName: 'Portugal', 
      uFlag: '\u{1F1F5}\u{1F1F9}', 
      prefix: '351',
    );

  case EnumCountryCode.id624: 
    return const CountryCode(
      id: '624',
      alpha2: 'GW',
      alpha3: 'GNB',
      officialName: 'Guinea-Bissau', 
      uFlag: '\u{1F1EC}\u{1F1FC}', 
      prefix: '245',
    );

  case EnumCountryCode.id626: 
    return const CountryCode(
      id: '626',
      alpha2: 'TL',
      alpha3: 'TLS',
      officialName: 'Timor Leste', 
      uFlag: '\u{1F1F9}\u{1F1F1}', 
      prefix: '670',
    );

  case EnumCountryCode.id630: 
    return const CountryCode(
      id: '630',
      alpha2: 'PR',
      alpha3: 'PRI',
      officialName: 'Puerto Rico', 
      uFlag: '\u{1F1F5}\u{1F1F7}', 
      prefix: '1-787, 1-939',
    );

  case EnumCountryCode.id634: 
    return const CountryCode(
      id: '634',
      alpha2: 'QA',
      alpha3: 'QAT',
      officialName: 'Qatar', 
      uFlag: '\u{1F1F6}\u{1F1E6}', 
      prefix: '974',
    );

  case EnumCountryCode.id638: 
    return const CountryCode(
      id: '638',
      alpha2: 'RE',
      alpha3: 'REU',
      officialName: 'Réunion', 
      uFlag: '\u{1F1F7}\u{1F1EA}', 
      prefix: '262',
    );

  case EnumCountryCode.id642: 
    return const CountryCode(
      id: '642',
      alpha2: 'RO',
      alpha3: 'ROU',
      officialName: 'Romania', 
      uFlag: '\u{1F1F7}\u{1F1F4}', 
      prefix: '40',
    );

  case EnumCountryCode.id643: 
    return const CountryCode(
      id: '643',
      alpha2: 'RU',
      alpha3: 'RUS',
      officialName: 'Russian Federation', 
      uFlag: '\u{1F1F7}\u{1F1FA}', 
      prefix: '7',
    );

  case EnumCountryCode.id646: 
    return const CountryCode(
      id: '646',
      alpha2: 'RW',
      alpha3: 'RWA',
      officialName: 'Rwanda', 
      uFlag: '\u{1F1F7}\u{1F1FC}', 
      prefix: '250',
    );

  case EnumCountryCode.id652: 
    return const CountryCode(
      id: '652',
      alpha2: 'BL',
      alpha3: 'BLM',
      officialName: 'Saint Barthélemy', 
      uFlag: '\u{1F1E7}\u{1F1F1}', 
      prefix: '590',
    );

  case EnumCountryCode.id654: 
    return const CountryCode(
      id: '654',
      alpha2: 'SH',
      alpha3: 'SHN',
      officialName: 'Saint Helena, Ascension and Tristan Da Cunha', 
      uFlag: '\u{1F1F8}\u{1F1ED}', 
      prefix: '290',
    );

  case EnumCountryCode.id659: 
    return const CountryCode(
      id: '659',
      alpha2: 'KN',
      alpha3: 'KNA',
      officialName: 'Saint Kitts And Nevis', 
      uFlag: '\u{1F1F0}\u{1F1F3}', 
      prefix: '1-869',
      
  );

  case EnumCountryCode.id660: 
    return const CountryCode(
      id: '660',
      alpha2: 'AI',
      alpha3: 'AIA',
      officialName: 'Anguilla', 
      uFlag: '\u{1F1E6}\u{1F1EE}', 
      prefix: '1-264',
    );

  case EnumCountryCode.id662: 
    return const CountryCode(
      id: '662',
      alpha2: 'LC',
      alpha3: 'LCA',
      officialName: 'Saint Lucia', 
      uFlag: '\u{1F1F1}\u{1F1E8}', 
      prefix: '1-758',
    );

  case EnumCountryCode.id663: 
    return const CountryCode(
      id: '663',
      alpha2: 'MF',
      alpha3: 'MAF',
      officialName: 'Saint Martin', 
      uFlag: '\u{1F1F2}\u{1F1EB}', 
      prefix: '590',
    );

  case EnumCountryCode.id666: 
    return const CountryCode(
      id: '666',
      alpha2: 'PM',
      alpha3: 'SPM',
      officialName: 'Saint Pierre And Miquelon', 
      uFlag: '\u{1F1F5}\u{1F1F2}', 
      prefix: '508',
    );

  case EnumCountryCode.id670: 
    return const CountryCode(
      id: '670',
      alpha2: 'VC',
      alpha3: 'VCT',
      officialName: 'Saint Vincent And The Grenadines', 
      uFlag: '\u{1F1FB}\u{1F1E8}', 
      prefix: '1-784',
    );

  case EnumCountryCode.id674: 
    return const CountryCode(
      id: '674',
      alpha2: 'SM',
      alpha3: 'SMR',
      officialName: 'San Marino', 
      uFlag: '\u{1F1F8}\u{1F1F2}', 
      prefix: '378',
    );

  case EnumCountryCode.id678: 
    return const CountryCode(
      id: '678',
      alpha2: 'ST',
      alpha3: 'STP',
      officialName: 'Sao Tome And Principe', 
      uFlag: '\u{1F1F8}\u{1F1F9}', 
      prefix: '239',
    );

  case EnumCountryCode.id682: 
    return const CountryCode(
      id: '682',
      alpha2: 'SA',
      alpha3: 'SAU',
      officialName: 'Saudi Arabia', 
      uFlag: '\u{1F1F8}\u{1F1E6}',
      prefix: '966',
    );

  case EnumCountryCode.id686: 
    return const CountryCode(
      id: '686',
      alpha2: 'SN',
      alpha3: 'SEN',
      officialName: 'Senegal', 
      uFlag: '\u{1F1F8}\u{1F1F3}', 
      prefix: '221',
    );

  case EnumCountryCode.id688: 
    return const CountryCode(
      id: '688',
      alpha2: 'RS',
      alpha3: 'SRB',
      officialName: 'Serbia', 
      uFlag: '\u{1F1F7}\u{1F1F8}', 
      prefix: '381',
    );

  case EnumCountryCode.id690: 
    return const CountryCode(
      id: '690',
      alpha2: 'SC',
      alpha3: 'SYC',
      officialName: 'Seychelles', 
      uFlag: '\u{1F1F8}\u{1F1E8}', 
      prefix: '248',
    );

  case EnumCountryCode.id694: 
    return const CountryCode(
      id: '694',
      alpha2: 'SL',
      alpha3: 'SLE',
      officialName: 'Sierra Leone', 
      uFlag: '\u{1F1F8}\u{1F1F1}', 
      prefix: '232',
    );

  case EnumCountryCode.id702: 
    return const CountryCode(
      id: '702',
      alpha2: 'SG',
      alpha3: 'SGP',
      officialName: 'Singapore', 
      uFlag: '\u{1F1F8}\u{1F1EC}',
      prefix: '65',
    );

  case EnumCountryCode.id703: 
    return const CountryCode(
      id: '703',
      alpha2: 'SK',
      alpha3: 'SVK',
      officialName: 'Slovakia', 
      uFlag: '\u{1F1F8}\u{1F1F0}', 
      prefix: '421',
    );
  // Socialist Republic of Viet Nam
  case EnumCountryCode.id704: 
    return const CountryCode(
      id: '704',
      alpha2: 'VN',
      alpha3: 'VNM',
      officialName: 'Viet Nam', 
      uFlag: '\u{1F1FB}\u{1F1F3}', 
      prefix: '84',
    );

  case EnumCountryCode.id705: 
    return const CountryCode(
      id: '705',
      alpha2: 'SI',
      alpha3: 'SVN',
      officialName: 'Slovenia', 
      uFlag: '\u{1F1F8}\u{1F1EE}', 
      prefix: '386',
    );

  case EnumCountryCode.id706: 
    return const CountryCode(
      id: '706',
      alpha2: 'SO',
      alpha3: 'SOM',
      officialName: 'Somalia', 
      uFlag: '\u{1F1F8}\u{1F1F4}', 
      prefix: '252',
    );

  case EnumCountryCode.id710: 
    return const CountryCode(
      id: '710',
      alpha2: 'ZA',
      alpha3: 'ZAF',
      officialName: 'South Africa', 
      uFlag: '\u{1F1FF}\u{1F1E6}', 
      prefix: '27',
    );

  case EnumCountryCode.id716: 
    return const CountryCode(
      id: '716',
      alpha2: 'ZW',
      alpha3: 'ZWE',
      officialName: 'Zimbabwe', 
      uFlag: '\u{1F1FF}\u{1F1FC}', 
      prefix: '263',
    );

  case EnumCountryCode.id724: 
    return const CountryCode(
      id: '724',
      alpha2: 'ES',
      alpha3: 'ESP',
      officialName: 'Spain', 
      uFlag: '\u{1F1EA}\u{1F1F8}', 
      prefix: '34',
    );

  case EnumCountryCode.id728: 
    return const CountryCode(
      id: '728',
      alpha2: 'SS',
      alpha3: 'SSD',
      officialName: 'South Sudan', 
      uFlag: '\u{1F1F8}\u{1F1F8}', 
      prefix: '211',
    );

  case EnumCountryCode.id729: 
    return const CountryCode(
      id: '729',
      alpha2: 'SD',
      alpha3: 'SDN',
      officialName: 'Sudan', 
      uFlag: '\u{1F1F8}\u{1F1E9}', 
      prefix: '249',
    );

  case EnumCountryCode.id732: 
    return const CountryCode(
      id: '732',
      alpha2: 'EH',
      alpha3: 'ESH',
      officialName: 'Western Sahara', 
      uFlag: '\u{1F1EA}\u{1F1ED}', 
      prefix: '212',
    );

  case EnumCountryCode.id740: 
    return const CountryCode(
      id: '740',
      alpha2: 'SR',
      alpha3: 'SUR',
      officialName: 'Suriname', 
      uFlag: '\u{1F1F8}\u{1F1F7}', 
      prefix: '597',
    );

  case EnumCountryCode.id744: 
    return const CountryCode(
      id: '744',
      alpha2: 'SJ',
      alpha3: 'SJM',
      officialName: 'Svalbard And Jan Mayen', 
      uFlag: '\u{1F1F8}\u{1F1EF}', 
      prefix: '47',
    );

  case EnumCountryCode.id748: 
    return const CountryCode(
      id: '748',
      alpha2: 'SZ',
      alpha3: 'SWZ',
      officialName: 'Eswatini', 
      uFlag: '\u{1F1F8}\u{1F1FF}', 
      prefix: '268',
    );

  case EnumCountryCode.id752: 
    return const CountryCode(
      id: '752',
      alpha2: 'SE',
      alpha3: 'SWE',
      officialName: 'Sweden', 
      uFlag: '\u{1F1F8}\u{1F1EA}', 
      prefix: '46',
    );

  case EnumCountryCode.id756: 
    return const CountryCode(
      id: '756',
      alpha2: 'CH',
      alpha3: 'CHE',
      officialName: 'Switzerland', 
      uFlag: '\u{1F1E8}\u{1F1ED}', 
      prefix: '41',
    );

  case EnumCountryCode.id760: 
    return const CountryCode(
      id: '760',
      alpha2: 'SY',
      alpha3: 'SYR',
      officialName: 'Syrian Arab Republic', 
      uFlag: '\u{1F1F8}\u{1F1FE}', 
      prefix: '963',
    );

  case EnumCountryCode.id762: 
    return const CountryCode(
      id: '762',
      alpha2: 'TJ',
      alpha3: 'TJK',
      officialName: 'Tajikistan', 
      uFlag: '\u{1F1F9}\u{1F1EF}', 
      prefix: '992',
    );

  case EnumCountryCode.id764: 
    return const CountryCode(
      id: '764',
      alpha2: 'TH',
      alpha3: 'THA',
      officialName: 'Thailand', 
      uFlag: '\u{1F1F9}\u{1F1ED}', 
      prefix: '66',
    );

  case EnumCountryCode.id768: 
    return const CountryCode(
      id: '768',
      alpha2: 'TG',
      alpha3: 'TGO',
      officialName: 'Togo', 
      uFlag: '\u{1F1F9}\u{1F1EC}', 
      prefix: '228',
    );

  case EnumCountryCode.id772: 
    return const CountryCode(
      id: '772',
      alpha2: 'TK',
      alpha3: 'TKL',
      officialName: 'Tokelau', 
      uFlag: '\u{1F1F9}\u{1F1F0}', 
      prefix: '690',
    );

  case EnumCountryCode.id776: 
    return const CountryCode(
      id: '776',
      alpha2: 'TO',
      alpha3: 'TON',
      officialName: 'Tonga', 
      uFlag: '\u{1F1F9}\u{1F1F4}', 
      prefix: '676',
    );

  case EnumCountryCode.id780: 
    return const CountryCode(
      id: '780',
      alpha2: 'TT',
      alpha3: 'TTO',
      officialName: 'Trinidad And Tobago', 
      uFlag: '\u{1F1F9}\u{1F1F9}', 
      prefix: '1-868',
    );

  case EnumCountryCode.id784: 
    return const CountryCode(
      id: '784',
      alpha2: 'AE',
      alpha3: 'ARE',
      officialName: 'United Arab Emirates', 
      uFlag: '\u{1F1E6}\u{1F1EA}', 
      prefix: '971',
    );

  case EnumCountryCode.id788: 
    return const CountryCode(
      id: '788',
      alpha2: 'TN',
      alpha3: 'TUN',
      officialName: 'Tunisia', 
      uFlag: '\u{1F1F9}\u{1F1F3}', 
      prefix: '216',
    );

  case EnumCountryCode.id792: 
    return const CountryCode(
      id: '792',
      alpha2: 'TR',
      alpha3: 'TUR',
      officialName: 'Turkey', 
      uFlag: '\u{1F1F9}\u{1F1F7}', 
      prefix: '90',
    );

  case EnumCountryCode.id795: 
    return const CountryCode(
      id: '795',
      alpha2: 'TM',
      alpha3: 'TKM',
      officialName: 'Turkmenistan', 
      uFlag: '\u{1F1F9}\u{1F1F2}', 
      prefix: '993',
    );

  case EnumCountryCode.id796: 
    return const CountryCode(
      id: '796',
      alpha2: 'TC',
      alpha3: 'TCA',
      officialName: 'Turks And Caicos Islands', 
      uFlag: '\u{1F1F9}\u{1F1E8}', 
      prefix: '1-649',
    );

  case EnumCountryCode.id798: 
    return const CountryCode(
      id: '798',
      alpha2: 'TV',
      alpha3: 'TUV',
      officialName: 'Tuvalu', 
      uFlag: '\u{1F1F9}\u{1F1FB}', 
      prefix: '688',
    );

  case EnumCountryCode.id800: 
    return const CountryCode(
      id: '800',
      alpha2: 'UG',
      alpha3: 'UGA',
      officialName: 'Uganda', 
      uFlag: '\u{1F1FA}\u{1F1EC}', 
      prefix: '256',
    );

  case EnumCountryCode.id804: 
    return const CountryCode(
      id: '804',
      alpha2: 'UA',
      alpha3: 'UKR',
      officialName: 'Ukraine', 
      uFlag: '\u{1F1FA}\u{1F1E6}', 
      prefix: '380',
    );

  case EnumCountryCode.id807: 
    return const CountryCode(
      id: '807',
      alpha2: 'MK',
      alpha3: 'MKD',
      officialName: 'North Macedonia', 
      uFlag: '\u{1F1F2}\u{1F1F0}', 
      prefix: '389',
    );

  case EnumCountryCode.id818: 
    return const CountryCode(
      id: '818',
      alpha2: 'EG',
      alpha3: 'EGY',
      officialName: 'Egypt', 
      uFlag: '\u{1F1EA}\u{1F1EC}', 
      prefix: '20',
    );

  case EnumCountryCode.id826: 
    return const CountryCode(
      id: '826',
      alpha2: 'GB',
      alpha3: 'GBR',
      officialName: 'United Kingdom Of Great British And Northern Ireland', 
      uFlag: '\u{1F1EC}\u{1F1E7}', 
      prefix: '44',
    );

  case EnumCountryCode.id831: 
    return const CountryCode(
      id: '831',
      alpha2: 'GG',
      alpha3: 'GGY',
      officialName: 'Guernsey', 
      uFlag: '\u{1F1EC}\u{1F1EC}', prefix: '44-1481',
    );

  case EnumCountryCode.id832: 
    return const CountryCode(
      id: '832',
      alpha2: 'JE',
      alpha3: 'JEY',
      officialName: 'Jersey', 
      uFlag: '\u{1F1EF}\u{1F1EA}', 
      prefix: '44-1534',
    );

  case EnumCountryCode.id833: 
    return const CountryCode(
      id: '833',
      alpha2: 'IM',
      alpha3: 'IMN',
      officialName: 'Isle Of Man', 
      uFlag: '\u{1F1EE}\u{1F1F2}', 
      prefix: '44-1624',
    );

  case EnumCountryCode.id834: 
    return const CountryCode(
      id: '834',
      alpha2: 'TZ',
      alpha3: 'TZA',
      officialName: 'United Republic Of Tanzania', 
      uFlag: '\u{1F1F9}\u{1F1FF}', 
      prefix: '255',
    );

  case EnumCountryCode.id840: 
    return const CountryCode(
      id: '840',
      alpha2: 'US',
      alpha3: 'USA',
      officialName: 'United States Of America', 
      uFlag: '\u{1F1FA}\u{1F1F8}', 
      prefix: '1',
    );

  case EnumCountryCode.id850: 
    return const CountryCode(
      id: '850',
      alpha2: 'VI',
      alpha3: 'VIR',
      officialName: 'United States Virgin Islands', 
      uFlag: '\u{1F1FB}\u{1F1EE}', 
      prefix: '1-340',
    );

  case EnumCountryCode.id854: 
    return const CountryCode(
      id: '854',
      alpha2: 'BF',
      alpha3: 'BFA',
      officialName: 'Burkina Faso', 
      uFlag: '\u{1F1E7}\u{1F1EB}', 
      prefix: '226',
    );

  case EnumCountryCode.id858: 
    return const CountryCode(
      id: '858',
      alpha2: 'UY',
      alpha3: 'URY',
      officialName: 'Uruguay', 
      uFlag: '\u{1F1FA}\u{1F1FE}', 
      prefix: '598',
    );

  case EnumCountryCode.id860: 
    return const CountryCode(
      id: '860',
      alpha2: 'UZ',
      alpha3: 'UZB',
      officialName: 'Uzbekistan', 
      uFlag: '\u{1F1FA}\u{1F1FF}', 
      prefix: '998',
    );

  case EnumCountryCode.id862: 
    return const CountryCode(
      id: '862',
      alpha2: 'VE',
      alpha3: 'VEN',
      officialName: 'Venezuela', 
      uFlag: '\u{1F1FB}\u{1F1EA}', 
      prefix: '58',
    );

  case EnumCountryCode.id876: 
    return const CountryCode(
      id: '876',
      alpha2: 'WF',
      alpha3: 'WLF',
      officialName: 'Wallis And Futuna', 
      uFlag: '\u{1F1FC}\u{1F1EB}', 
      prefix: '681',
    );

  case EnumCountryCode.id882: 
    return const CountryCode(
      id: '882',
      alpha2: 'WS',
      alpha3: 'WSM',
      officialName: 'Samoa', 
      uFlag: '\u{1F1FC}\u{1F1F8}', 
      prefix: '685',
    );

  case EnumCountryCode.id887: 
    return const CountryCode(
      id: '887',
      alpha2: 'YE',
      alpha3: 'YEM',
      officialName: 'Yemen', 
      uFlag: '\u{1F1FE}\u{1F1EA}', 
      prefix: '967',
    );

  case EnumCountryCode.id894: 
    return const CountryCode(
      id: '894',
      alpha2: 'ZM',
      alpha3: 'ZMB',
      officialName: 'Zambia', 
      uFlag: '\u{1F1FF}\u{1F1F2}', 
      prefix: '260',
    );
    }
    
  }
}

enum EnumCountryCodeScope {
  alpha2, 
  alpha3, 
  id, 
  name
}