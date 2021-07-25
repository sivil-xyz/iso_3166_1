library iso_3166_1;

import 'country_alpha2.dart';
import 'country_alpha3.dart';
import 'country_code.dart';
import 'country_name.dart';

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

class CountryCodes {
  static const id004 = CountryCode(
    id: '004',
    alpha2: 'AF',
    alpha3: 'AFG',
    name: 'Afghanistan', 
    uFlag: '\u{1F1E6}\u{1F1EB}', 
    prefix: '93'    
  );

  static const id008 = CountryCode(
    id: '008',
    alpha2: 'AL',
    alpha3: 'ALB',
    name: 'Albania', 
    uFlag: '\u{1F1E6}\u{1F1F1}', 
    prefix: '355',    
  );

  static const id010 = CountryCode(
    id: '010',
    alpha2: 'AQ',
    alpha3: 'ATA',
    name: 'Antarctica', 
    uFlag: '\u{1F1E6}\u{1F1F6}', 
    prefix: '672',
  );

  static const id012 = CountryCode(
    id: '012',
    alpha2: 'DZ',
    alpha3: 'DZA',
    name: 'Algeria', 
    uFlag: '\u{1F1E9}\u{1F1FF}', 
    prefix: '213',
  );

  static const id016 = CountryCode(
    id: '016',
    alpha2: 'AS',
    alpha3: 'ASM',
    name: 'American Samoa', 
    uFlag: '\u{1F1E6}\u{1F1F8}', 
    prefix: '1-684',
  );

  static const id020 = CountryCode(
    id: '020',
    alpha2: 'AD',
    alpha3: 'AND',
    name: 'Andorra', 
    uFlag: '\u{1F1E6}\u{1F1E9}', 
    prefix: '376',
  );

  static const id024 = CountryCode(
    id: '024',
    alpha2: 'AO',
    alpha3: 'AGO',
    name: 'Angola', 
    uFlag: '\u{1F1E6}\u{1F1F4}', 
    prefix: '244',
  );

  static const id028 = CountryCode(
    id: '028',
    alpha2: 'AG',
    alpha3: 'ATG',
    name: 'Antigua and Barbuda', 
    uFlag: '\u{1F1E6}\u{1F1EC}', 
    prefix: '1-268',
  );

  static const id031 = CountryCode(
    id: '031',
    alpha2: 'AZ',
    alpha3: 'AZE',
    name: 'Azerbaijan', 
    uFlag: '\u{1F1E6}\u{1F1FF}', 
    prefix: '994',
  );

  static const id032 = CountryCode(
    id: '032',
    alpha2: 'AR',
    alpha3: 'ARG',
    name: 'Argentina', 
    uFlag: '\u{1F1E6}\u{1F1F7}', 
    prefix: '54',
  );

  static const id036 = CountryCode(
    id: '036',
    alpha2: 'AU',
    alpha3: 'AUS',
    name: 'Australia', 
    uFlag: '\u{1F1E6}\u{1F1FA}', 
    prefix: '61',
  );

  static const id040 = CountryCode(
    id: '040',
    alpha2: 'AT',
    alpha3: 'AUT',
    name: 'Austria', 
    uFlag: '\u{1F1E6}\u{1F1F9}', 
    prefix: '43',
  );

  static const id044 = CountryCode(
    id: '044',
    alpha2: 'BS',
    alpha3: 'BHS',
    name: 'Bahamas', 
    uFlag: '\u{1F1E7}\u{1F1F8}', 
    prefix: '1-242',
  );

  static const id048 = CountryCode(
    id: '048',
    alpha2: 'BH',
    alpha3: 'BHR',
    name: 'Bahrain', 
    uFlag: '\u{1F1E7}\u{1F1ED}', 
    prefix: '973',
  );

  static const id050 = CountryCode(
    id: '050',
    alpha2: 'BD',
    alpha3: 'BGD',
    name: 'Bangladesh', 
    uFlag: '\u{1F1E7}\u{1F1E9}', 
    prefix: '880',
  );

  static const id051 = CountryCode(
    id: '051',
    alpha2: 'AM',
    alpha3: 'ARM',
    name: 'Armenia', 
    uFlag: '\u{1F1E6}\u{1F1F2}', 
    prefix: '374',
  );

  static const id052 = CountryCode(
    id: '052',
    alpha2: 'BB',
    alpha3: 'BRB',
    name: 'Barbados', 
    uFlag: '\u{1F1E7}\u{1F1E7}', 
    prefix: '1-246',
  );

  static const id056 = CountryCode(
    id: '056',
    alpha2: 'BE',
    alpha3: 'BEL',
    name: 'Belgium', 
    uFlag: '\u{1F1E7}\u{1F1EA}', 
    prefix: '32',
  );

  static const id060 = CountryCode(
    id: '060',
    alpha2: 'BM',
    alpha3: 'BMU',
    name: 'Bermuda', 
    uFlag: '\u{1F1E7}\u{1F1F2}', 
    prefix: '1-441',
  );

  static const id064 = CountryCode(
    id: '064',
    alpha2: 'BT',
    alpha3: 'BTN',
    name: 'Bhutan', 
    uFlag: '\u{1F1E7}\u{1F1F9}', 
    prefix: '975',
  );

  static const id068 = CountryCode(
    id: '068',
    alpha2: 'BO',
    alpha3: 'BOL',
    name: 'Bolivia', 
    uFlag: '\u{1F1E7}\u{1F1F4}', 
    prefix: '591',
  );

  static const id070 = CountryCode(
    id: '070',
    alpha2: 'BA',
    alpha3: 'BIH',
    name: 'Bosnia and Herzegovina', 
    uFlag: '\u{1F1E7}\u{1F1E6}', 
    prefix: '387',
  );

  static const id072 = CountryCode(
    id: '072',
    alpha2: 'BW',
    alpha3: 'BWA',
    name: 'Botswana', 
    uFlag: '\u{1F1E7}\u{1F1FC}', 
    prefix: '267',
  );

  static const id074 = CountryCode(
    id: '074',
    alpha2: 'BV',
    alpha3: 'BVT',
    name: 'Bouvet Island', 
    uFlag: '\u{1F1E7}\u{1F1FB}', prefix: '',
  );

  static const id076 = CountryCode(
    id: '076',
    alpha2: 'BR',
    alpha3: 'BRA',
    name: 'Brazil', 
    uFlag: '\u{1F1E7}\u{1F1F7}', 
    prefix: '55',
  );

  static const id084 = CountryCode(
    id: '084',
    alpha2: 'BZ',
    alpha3: 'BLZ',
    name: 'Belize', 
    uFlag: '\u{1F1E7}\u{1F1FF}', 
    prefix: '501',
  );

  static const id086 = CountryCode(
    id: '086',
    alpha2: 'IO',
    alpha3: 'IOT',
    name: 'British Indian Ocean Territory', 
    uFlag: '\u{1F1EE}\u{1F1F4}', 
    prefix: '246',
  );

  static const id090 = CountryCode(
    id: '090',
    alpha2: 'SB',
    alpha3: 'SLB',
    name: 'Solomon Islands', 
    uFlag: '\u{1F1F8}\u{1F1E7}', 
    prefix: '677',
  );

  static const id092 = CountryCode(
    id: '092',
    alpha2: 'VG',
    alpha3: 'VGB',
    name: 'British Virgin Islands', 
    uFlag: '\u{1F1FB}\u{1F1EC}', 
    prefix: '1-284',
  );

  static const id096 = CountryCode(
    id: '096',
    alpha2: 'BN',
    alpha3: 'BRN',
    name: 'Brunei Darussalam', 
    uFlag: '\u{1F1E7}\u{1F1F3}', 
    prefix: '673',
  );

  static const id100 = CountryCode(
    id: '100',
    alpha2: 'BG',
    alpha3: 'BGR',
    name: 'Bulgaria', 
    uFlag: '\u{1F1E7}\u{1F1EC}', 
    prefix: '359',
  );

  static const id104 = CountryCode(
    id: '104',
    alpha2: 'MM',
    alpha3: 'MMR',
    name: 'Myanmar', 
    uFlag: '\u{1F1F2}\u{1F1F2}', 
    prefix: '95',
  );

  static const id108 = CountryCode(
    id: '108',
    alpha2: 'BI',
    alpha3: 'BDI',
    name: 'Burundi', 
    uFlag: '\u{1F1E7}\u{1F1EE}', 
    prefix: '257',
  );

  static const id112 = CountryCode(
    id: '112',
    alpha2: 'BY',
    alpha3: 'BLR',
    name: 'Belarus', 
    uFlag: '\u{1F1E7}\u{1F1FE}', 
    prefix: '375',
  );

  static const id116 = CountryCode(
    id: '116',
    alpha2: 'KH',
    alpha3: 'KHM',
    name: 'Cambodia', 
    uFlag: '\u{1F1F0}\u{1F1ED}', 
    prefix: '855',
  );

  static const id120 = CountryCode(
    id: '120',
    alpha2: 'CM',
    alpha3: 'CMR',
    name: 'Cameroon', 
    uFlag: '\u{1F1E8}\u{1F1F2}', 
    prefix: '237',
  );

  static const id124 = CountryCode(
    id: '124',
    alpha2: 'CA',
    alpha3: 'CAN',
    name: 'Canada', 
    uFlag: '\u{1F1E8}\u{1F1E6}', 
    prefix: '1',
  );

  static const id132 = CountryCode(
    id: '132',
    alpha2: 'CV',
    alpha3: 'CPV',
    name: 'Cabo Verde', 
    uFlag: '\u{1F1E8}\u{1F1FB}', 
    prefix: '238',
  );

  static const id136 = CountryCode(
    id: '136',
    alpha2: 'KY',
    alpha3: 'CYM',
    name: 'Cayman Islands', 
    uFlag: '\u{1F1F0}\u{1F1FE}', 
    prefix: '1-345',
  );

  static const id140 = CountryCode(
    id: '140',
    alpha2: 'CF',
    alpha3: 'CAF',
    name: 'Central African Republic', 
    uFlag: '\u{1F1E8}\u{1F1EB}', 
    prefix: '236',
  );

  static const id144 = CountryCode(
    id: '144',
    alpha2: 'LK',
    alpha3: 'LKA',
    name: 'Sri Lanka', 
    uFlag: '\u{1F1F1}\u{1F1F0}', 
    prefix: '94',
  );

  static const id148 = CountryCode(
    id: '148',
    alpha2: 'TD',
    alpha3: 'TCD',
    name: 'Chad', 
    uFlag: '\u{1F1F9}\u{1F1E9}', 
    prefix: '235',
  );

  static const id152 = CountryCode(
    id: '152',
    alpha2: 'CL',
    alpha3: 'CHL',
    name: 'Chile', 
    uFlag: '\u{1F1E8}\u{1F1F1}', 
    prefix: '56',
  );

  static const id156 = CountryCode(
    id: '156',
    alpha2: 'CN',
    alpha3: 'CHN',
    name: 'China', 
    uFlag: '\u{1F1E8}\u{1F1F3}', 
    prefix: '86',
  );

  static const id158 = CountryCode(
    id: '158',
    alpha2: 'TW',
    alpha3: 'TWN',
    name: 'Taiwan', 
    uFlag: '\u{1F1F9}\u{1F1FC}', 
    prefix: '886',
  );

  static const id162 = CountryCode(
    id: '162',
    alpha2: 'CX',
    alpha3: 'CXR',
    name: 'Christmas Islands', 
    uFlag: '\u{1F1E8}\u{1F1FD}', 
    prefix: '61',
  );

  static const id166 = CountryCode(
    id: '166',
    alpha2: 'CC',
    alpha3: 'CCK',
    name: 'Cocos Islands', 
    uFlag: '\u{1F1E8}\u{1F1E8}', 
    prefix: '61',
  );

  static const id170 = CountryCode(
    id: '170',
    alpha2: 'CO',
    alpha3: 'COL',
    name: 'Colombia', 
    uFlag: '\u{1F1E8}\u{1F1F4}', 
    prefix: '57',
  );

  static const id174 = CountryCode(
    id: '174',
    alpha2: 'KM',
    alpha3: 'COM',
    name: 'Comoros', 
    uFlag: '\u{1F1F0}\u{1F1F2}', 
    prefix: '269',
  );

  static const id175 = CountryCode(
    id: '175',
    alpha2: 'YT',
    alpha3: 'MYT',
    name: 'Mayotte', 
    uFlag: '\u{1F1FE}\u{1F1F9}', 
    prefix: '262',
  );
  //congo Republic
  static const id178 = CountryCode(
    id: '178',
    alpha2: 'CG',
    alpha3: 'COG',
    name: 'Congo', 
    uFlag: '\u{1F1E8}\u{1F1EC}', 
    prefix: '242',
  );
  //congo DR
  static const id180 = CountryCode(
    id: '180',
    alpha2: 'CD',
    alpha3: 'COD',
    name: 'Congo Democratic Republic', 
    uFlag: '\u{1F1E8}\u{1F1E9}', 
    prefix: '243',
  );

  static const id184 = CountryCode(
    id: '184',
    alpha2: 'CK',
    alpha3: 'COK',
    name: 'Cook Islands', 
    uFlag: '\u{1F1E8}\u{1F1F0}', 
    prefix: '682',
  );

  static const id188 = CountryCode(
    id: '188',
    alpha2: 'CR',
    alpha3: 'CRI',
    name: 'Costa Rica', 
    uFlag: '\u{1F1E8}\u{1F1F7}', prefix: '506',
  );
  

  static const id191 = CountryCode(
    id: '191',
    alpha2: 'HR',
    alpha3: 'HRV',
    name: 'Croatia', 
    uFlag: '\u{1F1ED}\u{1F1F7}', 
    prefix: '385',
  );

  static const id192 = CountryCode(
    id: '192',
    alpha2: 'CU',
    alpha3: 'CUB',
    name: 'Cuba', 
    uFlag: '\u{1F1E8}\u{1F1FA}', 
    prefix: '53',
  );

  static const id196 = CountryCode(
    id: '196',
    alpha2: 'CY',
    alpha3: 'CYP',
    name: 'Cyprus', 
    uFlag: '\u{1F1E8}\u{1F1FE}', 
    prefix: '357',
  );

  static const id203 = CountryCode(
    id: '203',
    alpha2: 'CZ',
    alpha3: 'CZE',
    name: 'Czechia', 
    uFlag: '\u{1F1E8}\u{1F1FF}', 
    prefix: '420',
  );

  static const id204 = CountryCode(
    id: '204',
    alpha2: 'BJ',
    alpha3: 'BEN',
    name: 'Benin', 
    uFlag: '\u{1F1E7}\u{1F1EF}', 
    prefix: '229',
  );

  static const id208 = CountryCode(
    id: '208',
    alpha2: 'DK',
    alpha3: 'DNK',
    name: 'Denmark', 
    uFlag: '\u{1F1E9}\u{1F1F0}', 
    prefix: '45',
  );

  static const id212 = CountryCode(
    id: '212',
    alpha2: 'DM',
    alpha3: 'DMA',
    name: 'Dominica', 
    uFlag: '\u{1F1E9}\u{1F1F2}', 
    prefix: '1-767',
  );

  static const id214 = CountryCode(
    id: '214',
    alpha2: 'DO',
    alpha3: 'DOM',
    name: 'Dominican Republic', 
    uFlag: '\u{1F1E9}\u{1F1F4}', prefix: '1-809, 1-829, 1-849',
  );

  static const id218 = CountryCode(
    id: '218',
    alpha2: 'EC',
    alpha3: 'ECU',
    name: 'Ecuador', 
    uFlag: '\u{1F1EA}\u{1F1E8}', 
    prefix: '593',
  );

  static const id222 = CountryCode(
    id: '222',
    alpha2: 'SV',
    alpha3: 'SLV',
    name: 'El Salvador', 
    uFlag: '\u{1F1F8}\u{1F1FB}', 
    prefix: '503',
  );

  static const id226 = CountryCode(
    id: '226',
    alpha2: 'GQ',
    alpha3: 'GNQ',
    name: 'Equatorial Guinea', 
    uFlag: '\u{1F1EC}\u{1F1F6}', 
    prefix: '240',
  );

  static const id231 = CountryCode(
    id: '231',
    alpha2: 'ET',
    alpha3: 'ETH',
    name: 'Ethiopia', 
    uFlag: '\u{1F1EA}\u{1F1F9}', 
    prefix: '251',
  );

  static const id232 = CountryCode(
    id: '232',
    alpha2: 'ER',
    alpha3: 'ERI',
    name: 'Eritrea', 
    uFlag: '\u{1F1EA}\u{1F1F7}', 
    prefix: '291',
  );

  static const id233 = CountryCode(
    id: '233',
    alpha2: 'EE',
    alpha3: 'EST',
    name: 'Estonia', 
    uFlag: '\u{1F1EA}\u{1F1EA}', 
    prefix: '372',
  );

  static const id234 = CountryCode(
    id: '234',
    alpha2: 'FO',
    alpha3: 'FRO',
    name: 'Faore Islands', 
    uFlag: '\u{1F1EB}\u{1F1F4}', 
    prefix: '298',
  );

  static const id238 = CountryCode(
    id: '238',
    alpha2: 'FK',
    alpha3: 'FLK',
    name: 'Falkland Islands', 
    uFlag: '\u{1F1EB}\u{1F1F0}', 
    prefix: '500',
  );

  static const id239 = CountryCode(
    id: '239',
    alpha2: 'GS',
    alpha3: 'SGS',
    name: 'South Georgia And The South Sandwich Islands', 
    uFlag: '\u{1F1EC}\u{1F1F8}', 
    prefix: '995',
  );

  static const id242 = CountryCode(
    id: '242',
    alpha2: 'FJ',
    alpha3: 'FJI',
    name: 'Fiji', 
    uFlag: '\u{1F1EB}\u{1F1EF}', 
    prefix: '679',
  );

  static const id246 = CountryCode(
    id: '246',
    alpha2: 'FI',
    alpha3: 'FIN',
    name: 'Finland', 
    uFlag: '\u{1F1EB}\u{1F1EE}', 
    prefix: '358',
  );

  static const id248 = CountryCode(
    id: '248',
    alpha2: 'AX',
    alpha3: 'ALA',
    name: 'Aland Islands', 
    uFlag: '\u{1F1E6}\u{1F1FD}', 
    prefix: '358-18, 358-457',
  );

  static const id250 = CountryCode(
    id: '250',
    alpha2: 'FR',
    alpha3: 'FRA',
    name: 'France', 
    uFlag: '\u{1F1EB}\u{1F1F7}', 
    prefix: '33',
  );

  static const id254 = CountryCode(
    id: '254',
    alpha2: 'GF',
    alpha3: 'GUF',
    name: 'French Guaiana', 
    uFlag: '\u{1F1EC}\u{1F1EB}', 
    prefix: '594',
  );

  static const id258 = CountryCode(
    id: '258',
    alpha2: 'PF',
    alpha3: 'PYF',
    name: 'French Polynesia', 
    uFlag: '\u{1F1F5}\u{1F1EB}', 
    prefix: '689',
  );

  static const id260 = CountryCode(
    id: '260',
    alpha2: 'TF',
    alpha3: 'ATF',
    name: 'French Southern Territories', 
    uFlag: '\u{1F1F9}\u{1F1EB}', 
    prefix: '262',
  );

  static const id262 = CountryCode(
    id: '262',
    alpha2: 'DJ',
    alpha3: 'DJI',
    name: 'Djibouti', 
    uFlag: '\u{1F1E9}\u{1F1EF}', 
    prefix: '253',
  );

  static const id266 = CountryCode(
    id: '266',
    alpha2: 'GA',
    alpha3: 'GAB',
    name: 'Gabon', 
    uFlag: '\u{1F1EC}\u{1F1E6}', 
    prefix: '241',
  );

  static const id268 = CountryCode(
    id: '268',
    alpha2: 'GE',
    alpha3: 'GEO',
    name: 'Georgia', 
    uFlag: '\u{1F1EC}\u{1F1EA}', 
    prefix: '995',
  );

  static const id270 = CountryCode(
    id: '270',
    alpha2: 'GM',
    alpha3: 'GMB',
    name: 'Gambia', 
    uFlag: '\u{1F1EC}\u{1F1F2}', 
    prefix: '220',
  );

  static const id275 = CountryCode(
    id: '275',
    alpha2: 'PS',
    alpha3: 'PSE',
    name: 'Palestine', 
    uFlag: '\u{1F1F5}\u{1F1F8}', 
    prefix: '970',
  );

  static const id276 = CountryCode(
    id: '276',
    alpha2: 'DE',
    alpha3: 'DEU',
    name: 'Germany', 
    uFlag: '\u{1F1E9}\u{1F1EA}', 
    prefix: '49',
  );

  static const id288 = CountryCode(
    id: '288',
    alpha2: 'GH',
    alpha3: 'GHA',
    name: 'Ghana', 
    uFlag: '\u{1F1EC}\u{1F1ED}', 
    prefix: '233',
  );

  static const id292 = CountryCode(
    id: '292',
    alpha2: 'GI',
    alpha3: 'GIB',
    name: 'Gibraltar', 
    uFlag: '\u{1F1EC}\u{1F1EE}', 
    prefix: '350',
  );

  static const id296 = CountryCode(
    id: '296',
    alpha2: 'KI',
    alpha3: 'KIR',
    name: 'Kiribati', 
    uFlag: '\u{1F1F0}\u{1F1EE}', 
    prefix: '686',
  );

  static const id300 = CountryCode(
    id: '300',
    alpha2: 'GR',
    alpha3: 'GRC',
    name: 'Greece', 
    uFlag: '\u{1F1EC}\u{1F1F7}', 
    prefix: '30',
  );

  static const id304 = CountryCode(
    id: '304',
    alpha2: 'GL',
    alpha3: 'GRL',
    name: 'Greenland', 
    uFlag: '\u{1F1EC}\u{1F1F1}', 
    prefix: '299',
  );

  static const id308 = CountryCode(
    id: '308',
    alpha2: 'GD',
    alpha3: 'GRD',
    name: 'Grenada', 
    uFlag: '\u{1F1EC}\u{1F1E9}', 
    prefix: '1-473',
  );

  static const id312 = CountryCode(
    id: '312',
    alpha2: 'GP',
    alpha3: 'GLP',
    name: 'Guadeloupe', 
    uFlag: '\u{1F1EC}\u{1F1F5}', 
    prefix: '590',
  );

  static const id316 = CountryCode(
    id: '316',
    alpha2: 'GU',
    alpha3: 'GUM',
    name: 'Guam', 
    uFlag: '\u{1F1EC}\u{1F1FA}', 
    prefix: '1-671',
  );

  static const id320 = CountryCode(
    id: '320',
    alpha2: 'GT',
    alpha3: 'GTM',
    name: 'Guatemala', 
    uFlag: '\u{1F1EC}\u{1F1F9}', 
    prefix: '502',
  );

  static const id324 = CountryCode(
    id: '324',
    alpha2: 'GN',
    alpha3: 'GIN',
    name: 'Guinea', 
    uFlag: '\u{1F1EC}\u{1F1F3}', 
    prefix: '224',
  );

  static const id328 = CountryCode(
    id: '328',
    alpha2: 'GY',
    alpha3: 'GUY',
    name: 'Guyana', 
    uFlag: '\u{1F1EC}\u{1F1FE}', 
    prefix: '592',
  );

  static const id332 = CountryCode(
    id: '332',
    alpha2: 'HT',
    alpha3: 'HTI',
    name: 'Haiti', 
    uFlag: '\u{1F1ED}\u{1F1F9}', 
    prefix: '509',
  );

  static const id334 = CountryCode(
    id: '334',
    alpha2: 'HM',
    alpha3: 'HMD',
    name: 'Heard Island And McDonald Islands', 
    uFlag: '\u{1F1ED}\u{1F1F2}', 
    prefix: '672',
  );
  //vatican city
  static const id336 = CountryCode(
    id: '336',
    alpha2: 'VA',
    alpha3: 'VAT',
    name: 'Holy See', 
    uFlag: '\u{1F1FB}\u{1F1E6}', 
    prefix: '379',
  );

  static const id340 = CountryCode(
    id: '340',
    alpha2: 'HN',
    alpha3: 'HND',
    name: 'Honduras', 
    uFlag: '\u{1F1ED}\u{1F1F3}', 
    prefix: '504',
  );

  static const id344 = CountryCode(
    id: '344',
    alpha2: 'HK',
    alpha3: 'HKG',
    name: 'Hong Kong', 
    uFlag: '\u{1F1ED}\u{1F1F0}', 
    prefix: '852',
  );

  static const id348 = CountryCode(
    id: '348',
    alpha2: 'HU',
    alpha3: 'HUN',
    name: 'Hungary', 
    uFlag: '\u{1F1ED}\u{1F1FA}', 
    prefix: '36',
  );

  static const id352 = CountryCode(
    id: '352',
    alpha2: 'IS',
    alpha3: 'ISL',
    name: 'Iceland', 
    uFlag: '\u{1F1EE}\u{1F1F8}', 
    prefix: '354',
  );

  static const id356 = CountryCode(
    id: '356',
    alpha2: 'IN',
    alpha3: 'IND',
    name: 'India', 
    uFlag: '\u{1F1EE}\u{1F1F3}', 
    prefix: '91',
  );

  static const id360 = CountryCode(
    id: '360',
    alpha2: 'ID',
    alpha3: 'IDN',
    name: 'Indonesia', 
    uFlag: '\u{1F1EE}\u{1F1E9}', 
    prefix: '62',
  );

  static const id364 = CountryCode(
    id: '364',
    alpha2: 'IR',
    alpha3: 'IRN',
    name: 'Iran', 
    uFlag: '\u{1F1EE}\u{1F1F7}', 
    prefix: '98',
  );

  static const id368 = CountryCode(
    id: '368',
    alpha2: 'IQ',
    alpha3: 'IRQ',
    name: 'Iraq', 
    uFlag: '\u{1F1EE}\u{1F1F6}', 
    prefix: '964',
  );

  static const id372 = CountryCode(
    id: '372',
    alpha2: 'IE',
    alpha3: 'IRL',
    name: 'Ireland', 
    uFlag: '\u{1F1EE}\u{1F1EA}', 
    prefix: '353',
  );

  static const id376 = CountryCode(
    id: '376',
    alpha2: 'IL',
    alpha3: 'ISR',
    name: 'Israel', 
    uFlag: '\u{1F1EE}\u{1F1F1}', 
    prefix: '972',
  );

  static const id380 = CountryCode(
    id: '380',
    alpha2: 'IT',
    alpha3: 'ITA',
    name: 'Italy', 
    uFlag: '\u{1F1EE}\u{1F1F9}', prefix: '39',
  );

  static const id384 = CountryCode(
    id: '384',
    alpha2: 'CI',
    alpha3: 'CIV',
    name: 'Cote D\'Ivoire', 
    uFlag: '\u{1F1E8}\u{1F1EE}', 
    prefix: '225', 
  );

  static const id388 = CountryCode(
    id: '388',
    alpha2: 'JM',
    alpha3: 'JAM',
    name: 'Jamaica', 
    uFlag: '\u{1F1EF}\u{1F1F2}', 
    prefix: '1-876',
  );

  static const id392 = CountryCode(
    id: '392',
    alpha2: 'JP',
    alpha3: 'JPN',
    name: 'Japan', 
    uFlag: '\u{1F1EF}\u{1F1F5}', 
    prefix: '81',
  );

  static const id398 = CountryCode(
    id: '398',
    alpha2: 'KZ',
    alpha3: 'KAZ',
    name: 'Kazakhstan', 
    uFlag: '\u{1F1F0}\u{1F1FF}', 
    prefix: '7',
  );

  static const id400 = CountryCode(
    id: '400',
    alpha2: 'JO',
    alpha3: 'JOR',
    name: 'Jordan', 
    uFlag: '\u{1F1EF}\u{1F1F4}', 
    prefix: '962',
  );

  static const id404 = CountryCode(
    id: '404',
    alpha2: 'KE',
    alpha3: 'KEN',
    name: 'Kenya', 
    uFlag: '\u{1F1F0}\u{1F1EA}', 
    prefix: '254',
  );
  //north korea
  static const id408 = CountryCode(
    id: '408',
    alpha2: 'KP',
    alpha3: 'MMR',
    name: 'Democratic People\'s Republic Of Korea', 
    uFlag: '\u{1F1F0}\u{1F1F5}', 
    prefix: '850',
  );
  //south korea
  static const id410 = CountryCode(
    id: '410',
    alpha2: 'KR',
    alpha3: 'PRK',
    name: 'Republic Of Korea',     
    uFlag: '\u{1F1F0}\u{1F1F7}', 
    prefix: '82',
  );

  static const id414 = CountryCode(
    id: '414',
    alpha2: 'KW',
    alpha3: 'KWT',
    name: 'Kuwait', 
    uFlag: '\u{1F1F0}\u{1F1FC}', 
    prefix: '965',
  );

  static const id417 = CountryCode(
    id: '417',
    alpha2: 'KG',
    alpha3: 'KGZ',
    name: 'Kyrgyzstan', 
    uFlag: '\u{1F1F0}\u{1F1EC}', 
    prefix: '996',
  );

  static const id418 = CountryCode(
    id: '418',
    alpha2: 'LA',
    alpha3: 'LAO',
    name: 'Lao People\'s Democratic Republic', 
    uFlag: '\u{1F1F1}\u{1F1E6}', 
    prefix: '856',
  );

  static const id422 = CountryCode(
    id: '422',
    alpha2: 'LB',
    alpha3: 'LBN',
    name: 'Lebanon', 
    uFlag: '\u{1F1F1}\u{1F1E7}', 
    prefix: '961',
  );

  static const id426 = CountryCode(
    id: '426',
    alpha2: 'LS',
    alpha3: 'LSO',
    name: 'Lesotho', 
    uFlag: '\u{1F1F1}\u{1F1F8}', 
    prefix: '266',
  );

  static const id428 = CountryCode(
    id: '428',
    alpha2: 'LV',
    alpha3: 'LVA',
    name: 'Latvia', 
    uFlag: '\u{1F1F1}\u{1F1FB}', 
    prefix: '371',
  );

  static const id430 = CountryCode(
    id: '430',
    alpha2: 'LR',
    alpha3: 'LBR',
    name: 'Liberia', 
    uFlag: '\u{1F1F1}\u{1F1F7}', 
    prefix: '231',
  );

  static const id434 = CountryCode(
    id: '434',
    alpha2: 'LY',
    alpha3: 'LBY',
    name: 'Libya', 
    uFlag: '\u{1F1F1}\u{1F1FE}', 
    prefix: '218',
  );

  static const id438 = CountryCode(
    id: '438',
    alpha2: 'LI',
    alpha3: 'LIE',
    name: 'Liechtenstein', 
    uFlag: '\u{1F1F1}\u{1F1EE}', 
    prefix: '423',
  );

  static const id440 = CountryCode(
    id: '440',
    alpha2: 'LT',
    alpha3: 'LTU',
    name: 'Lithuania', 
    uFlag: '\u{1F1F1}\u{1F1F9}', 
    prefix: '370',
  );

  static const id442 = CountryCode(
    id: '442',
    alpha2: 'LU',
    alpha3: 'LUX',
    name: 'Luxembourg', 
    uFlag: '\u{1F1F1}\u{1F1FA}', 
    prefix: '352',
  );

  static const id446 = CountryCode(
    id: '446',
    alpha2: 'MO',
    alpha3: 'MAC',
    name: 'Macao', 
    uFlag: '\u{1F1F2}\u{1F1F4}', 
    prefix: '853',
  );

  static const id450 = CountryCode(
    id: '450',
    alpha2: 'MG',
    alpha3: 'MDG',
    name: 'Madagascar', 
    uFlag: '\u{1F1F2}\u{1F1EC}', 
    prefix: '261',
  );

  static const id454 = CountryCode(
    id: '454',
    alpha2: 'MW',
    alpha3: 'MWI',
    name: 'Malawi', 
    uFlag: '\u{1F1F2}\u{1F1FC}', 
    prefix: '265',
  );

  static const id458 = CountryCode(
    id: '458',
    alpha2: 'MY',
    alpha3: 'MYS',
    name: 'Malaysia', 
    uFlag: '\u{1F1F2}\u{1F1FE}', 
    prefix: '60',
  );

  static const id462 = CountryCode(
    id: '462',
    alpha2: 'MV',
    alpha3: 'MDV',
    name: 'Maldives', 
    uFlag: '\u{1F1F2}\u{1F1FB}', 
    prefix: '960',
  );

  static const id466 = CountryCode(
    id: '466',
    alpha2: 'ML',
    alpha3: 'MLI',
    name: 'Mali', 
    uFlag: '\u{1F1F2}\u{1F1F1}', 
    prefix: '223',
  );

  static const id470 = CountryCode(
    id: '470',
    alpha2: 'MT',
    alpha3: 'MLT',
    name: 'Malta', 
    uFlag: '\u{1F1F2}\u{1F1F9}', 
    prefix: '356',
  );

  static const id474 = CountryCode(
    id: '474',
    alpha2: 'MQ',
    alpha3: 'MTQ',
    name: 'Martinique', 
    uFlag: '\u{1F1F2}\u{1F1F6}', 
    prefix: '596',
  );

  static const id478 = CountryCode(
    id: '478',
    alpha2: 'MR',
    alpha3: 'MRT',
    name: 'Mauritania', 
    uFlag: '\u{1F1F2}\u{1F1F7}', 
    prefix: '222',
  );

  static const id480 = CountryCode(
    id: '480',
    alpha2: 'MU',
    alpha3: 'MUS',
    name: 'Mauritius', 
    uFlag: '\u{1F1F2}\u{1F1FA}', 
    prefix: '230',
  );

  static const id484 = CountryCode(
    id: '484',
    alpha2: 'MX',
    alpha3: 'MEX',
    name: 'Mexico', 
    uFlag: '\u{1F1F2}\u{1F1FD}', 
    prefix: '52',
  );

  static const id492 = CountryCode(
    id: '492',
    alpha2: 'MC',
    alpha3: 'MCO',
    name: 'Monaco', 
    uFlag: '\u{1F1F2}\u{1F1E8}', 
    prefix: '377',
  );

  static const id496 = CountryCode(
    id: '496',
    alpha2: 'MN',
    alpha3: 'MNG',
    name: 'Mongolia', 
    uFlag: '\u{1F1F2}\u{1F1F3}', 
    prefix: '976',
  );

  static const id498 = CountryCode(
    id: '498',
    alpha2: 'MD',
    alpha3: 'MDA',
    name: 'Republic Of Moldova', 
    uFlag: '\u{1F1F2}\u{1F1E9}', 
    prefix: '373',
  );

  static const id499 = CountryCode(
    id: '499',
    alpha2: 'ME',
    alpha3: 'MNE',
    name: 'Montenegro', 
    uFlag: '\u{1F1F2}\u{1F1EA}', 
    prefix: '382',
  );

  static const id500 = CountryCode(
    id: '500',
    alpha2: 'MS',
    alpha3: 'MSR',
    name: 'Montserrat', 
    uFlag: '\u{1F1F2}\u{1F1F8}', 
    prefix: '1-664',
  );

  static const id504 = CountryCode(
    id: '504',
    alpha2: 'MA',
    alpha3: 'MAR',
    name: 'Morocco', 
    uFlag: '\u{1F1F2}\u{1F1E6}', 
    prefix: '212',
  );

  static const id508 = CountryCode(
    id: '508',
    alpha2: 'MZ',
    alpha3: 'MOZ',
    name: 'Mozambique', 
    uFlag: '\u{1F1F2}\u{1F1FF}', 
    prefix: '258',
  );

  static const id512 = CountryCode(
    id: '512',
    alpha2: 'OM',
    alpha3: 'OMN',
    name: 'Oman', 
    uFlag: '\u{1F1F4}\u{1F1F2}', 
    prefix: '968',
  );

  static const id516 = CountryCode(
    id: '516',
    alpha2: 'NA',
    alpha3: 'NAM',
    name: 'Namibia', 
    uFlag: '\u{1F1F3}\u{1F1E6}', 
    prefix: '264',
  );

  static const id520 = CountryCode(
    id: '520',
    alpha2: 'NR',
    alpha3: 'NRU',
    name: 'Nauru', 
    uFlag: '\u{1F1F3}\u{1F1F7}', 
    prefix: '674',
  );

  static const id524 = CountryCode(
    id: '524',
    alpha2: 'NP',
    alpha3: 'NPL',
    name: 'Nepal', 
    uFlag: '\u{1F1F3}\u{1F1F5}', 
    prefix: '977',
  );

  static const id528 = CountryCode(
    id: '528',
    alpha2: 'NL',
    alpha3: 'NLD',
    name: 'Netherlands', 
    uFlag: '\u{1F1F3}\u{1F1F1}', 
    prefix: '31',
  );

  static const id531 = CountryCode(
    id: '531',
    alpha2: 'CW',
    alpha3: 'CUW',
    name: 'Curaçao', 
    uFlag: '\u{1F1E8}\u{1F1FC}', 
    prefix: '599',
  );

  static const id533 = CountryCode(
    id: '533',
    alpha2: 'AW',
    alpha3: 'ABW',
    name: 'Aruba', 
    uFlag: '\u{1F1E6}\u{1F1FC}', 
    prefix: '297',
  );

  static const id534 = CountryCode(
    id: '534',
    alpha2: 'SX',
    alpha3: 'SXM',
    name: 'Sint Maarten', 
    uFlag: '\u{1F1F8}\u{1F1FD}', 
    prefix: '1-721',
  );

  static const id535 = CountryCode(
    id: '535',
    alpha2: 'BQ',
    alpha3: 'BES',
    name: 'Bonaire Sint Eustatius And Saba', 
    uFlag: '\u{1F1E7}\u{1F1F6}', 
    prefix: '599',
  );

  static const id540 = CountryCode(
    id: '540',
    alpha2: 'NC',
    alpha3: 'NCL',
    name: 'New Caledonia', 
    uFlag: '\u{1F1F3}\u{1F1E8}', 
    prefix: '687',
  );

  static const id548 = CountryCode(
    id: '548',
    alpha2: 'VU',
    alpha3: 'VUT',
    name: 'Vanuatu', 
    uFlag: '\u{1F1FB}\u{1F1FA}', 
    prefix: '678',
  );

  static const id554 = CountryCode(
    id: '554',
    alpha2: 'NZ',
    alpha3: 'NZL',
    name: 'New Zealand', 
    uFlag: '\u{1F1F3}\u{1F1FF}', 
    prefix: '64',
  );

  static const id558 = CountryCode(
    id: '558',
    alpha2: 'NI',
    alpha3: 'NIC',
    name: 'Nicaragua', 
    uFlag: '\u{1F1F3}\u{1F1EE}', 
    prefix: '505',
  );

  static const id562 = CountryCode(
    id: '562',
    alpha2: 'NE',
    alpha3: 'NER',
    name: 'Niger', 
    uFlag: '\u{1F1F3}\u{1F1EA}', 
    prefix: '227',
  );

  static const id566 = CountryCode(
    id: '566',
    alpha2: 'NG',
    alpha3: 'NGA',
    name: 'Nigeria', 
    uFlag: '\u{1F1F3}\u{1F1EC}', 
    prefix: '234',
  );

  static const id570 = CountryCode(
    id: '570',
    alpha2: 'NU',
    alpha3: 'NIU',
    name: 'Niue', 
    uFlag: '\u{1F1F3}\u{1F1FA}', 
    prefix: '683',
  );

  static const id574 = CountryCode(
    id: '574',
    alpha2: 'NF',
    alpha3: 'NFK',
    name: 'Norfolk Island', 
    uFlag: '\u{1F1F3}\u{1F1EB}', 
    prefix: '672',
  );

  static const id578 = CountryCode(
    id: '578',
    alpha2: 'NO',
    alpha3: 'NOR',
    name: 'Norway', 
    uFlag: '\u{1F1F3}\u{1F1F4}', 
    prefix: '47',
  );

  static const id580 = CountryCode(
    id: '580',
    alpha2: 'MP',
    alpha3: 'MNP',
    name: 'Northern Marian Islands', 
    uFlag: '\u{1F1F2}\u{1F1F5}', 
    prefix: '1-670',
  );

  static const id581 = CountryCode(
    id: '581',
    alpha2: 'UM',
    alpha3: 'UMI',
    name: 'United States Minor Outlying Islands', 
    uFlag: '\u{1F1FA}\u{1F1F2}', 
    prefix: '1',
  );

  static const id583 = CountryCode(
    id: '583',
    alpha2: 'FM',
    alpha3: 'FSM',
    name: 'Federated States Of Micronesia', 
    uFlag: '\u{1F1EB}\u{1F1F2}', 
    prefix: '691',
  );

  static const id584 = CountryCode(
    id: '584',
    alpha2: 'MH',
    alpha3: 'MHL',
    name: 'Marshall Islands', 
    uFlag: '\u{1F1F2}\u{1F1ED}', 
    prefix: '692',
  );

  static const id585 = CountryCode(
    id: '585',
    alpha2: 'PW',
    alpha3: 'PLW',
    name: 'Palau', 
    uFlag: '\u{1F1F5}\u{1F1FC}', 
    prefix: '680',
  );

  static const id586 = CountryCode(
    id: '586',
    alpha2: 'PK',
    alpha3: 'PAK',
    name: 'Pakistan', 
    uFlag: '\u{1F1F5}\u{1F1F0}', 
    prefix: '92',
  );

  static const id591 = CountryCode(
    id: '591',
    alpha2: 'PA',
    alpha3: 'PAN',
    name: 'Panama', 
    uFlag: '\u{1F1F5}\u{1F1E6}', 
    prefix: '507',
  );

  static const id598 = CountryCode(
    id: '598',
    alpha2: 'PG',
    alpha3: 'PNG',
    name: 'Papua New Guinea', 
    uFlag: '\u{1F1F5}\u{1F1EC}', 
    prefix: '675',
  );

  static const id600 = CountryCode(
    id: '600',
    alpha2: 'PY',
    alpha3: 'PRY',
    name: 'Paraguay', 
    uFlag: '\u{1F1F5}\u{1F1FE}', 
    prefix: '595',
  );

  static const id604 = CountryCode(
    id: '604',
    alpha2: 'PE',
    alpha3: 'PER',
    name: 'Peru', 
    uFlag: '\u{1F1F5}\u{1F1EA}', 
    prefix: '51',
  );

  static const id608 = CountryCode(
    id: '608',
    alpha2: 'PH',
    alpha3: 'PHL',
    name: 'Philippines', 
    uFlag: '\u{1F1F5}\u{1F1ED}', 
    prefix: '63',
  );

  static const id612 = CountryCode(
    id: '612',
    alpha2: 'PN',
    alpha3: 'PCN',
    name: 'Pitcairn', 
    uFlag: '\u{1F1F5}\u{1F1F3}', 
    prefix: '64',
  );

  static const id616 = CountryCode(
    id: '616',
    alpha2: 'PL',
    alpha3: 'POL',
    name: 'Poland', 
    uFlag: '\u{1F1F5}\u{1F1F1}', 
    prefix: '48',
  );

  static const id620 = CountryCode(
    id: '620',
    alpha2: 'PT',
    alpha3: 'PRT',
    name: 'Portugal', 
    uFlag: '\u{1F1F5}\u{1F1F9}', 
    prefix: '351',
  );

  static const id624 = CountryCode(
    id: '624',
    alpha2: 'GW',
    alpha3: 'GNB',
    name: 'Guinea-Bissau', 
    uFlag: '\u{1F1EC}\u{1F1FC}', 
    prefix: '245',
  );

  static const id626 = CountryCode(
    id: '626',
    alpha2: 'TL',
    alpha3: 'TLS',
    name: 'Timor Leste', 
    uFlag: '\u{1F1F9}\u{1F1F1}', 
    prefix: '670',
  );

  static const id630 = CountryCode(
    id: '630',
    alpha2: 'PR',
    alpha3: 'PRI',
    name: 'Puerto Rico', 
    uFlag: '\u{1F1F5}\u{1F1F7}', 
    prefix: '1-787, 1-939',
  );

  static const id634 = CountryCode(
    id: '634',
    alpha2: 'QA',
    alpha3: 'QAT',
    name: 'Qatar', 
    uFlag: '\u{1F1F6}\u{1F1E6}', 
    prefix: '974',
  );

  static const id638 = CountryCode(
    id: '638',
    alpha2: 'RE',
    alpha3: 'REU',
    name: 'Réunion', 
    uFlag: '\u{1F1F7}\u{1F1EA}', 
    prefix: '262',
  );

  static const id642 = CountryCode(
    id: '642',
    alpha2: 'RO',
    alpha3: 'ROU',
    name: 'Romania', 
    uFlag: '\u{1F1F7}\u{1F1F4}', 
    prefix: '40',
  );

  static const id643 = CountryCode(
    id: '643',
    alpha2: 'RU',
    alpha3: 'RUS',
    name: 'Russian Federation', 
    uFlag: '\u{1F1F7}\u{1F1FA}', 
    prefix: '7',
  );

  static const id646 = CountryCode(
    id: '646',
    alpha2: 'RW',
    alpha3: 'RWA',
    name: 'Rwanda', 
    uFlag: '\u{1F1F7}\u{1F1FC}', 
    prefix: '250',
  );

  static const id652 = CountryCode(
    id: '652',
    alpha2: 'BL',
    alpha3: 'BLM',
    name: 'Saint Barthélemy', 
    uFlag: '\u{1F1E7}\u{1F1F1}', 
    prefix: '590',
  );

  static const id654 = CountryCode(
    id: '654',
    alpha2: 'SH',
    alpha3: 'SHN',
    name: 'Saint Helena, Ascension and Tristan Da Cunha', 
    uFlag: '\u{1F1F8}\u{1F1ED}', 
    prefix: '290',
  );

  static const id659 = CountryCode(
    id: '659',
    alpha2: 'KN',
    alpha3: 'KNA',
    name: 'Saint Kitts And Nevis', 
    uFlag: '\u{1F1F0}\u{1F1F3}', 
    prefix: '1-869',
    
  );

  static const id660 = CountryCode(
    id: '660',
    alpha2: 'AI',
    alpha3: 'AIA',
    name: 'Anguilla', 
    uFlag: '\u{1F1E6}\u{1F1EE}', 
    prefix: '1-264',
  );

  static const id662 = CountryCode(
    id: '662',
    alpha2: 'LC',
    alpha3: 'LCA',
    name: 'Saint Lucia', 
    uFlag: '\u{1F1F1}\u{1F1E8}', 
    prefix: '1-758',
  );

  static const id663 = CountryCode(
    id: '663',
    alpha2: 'MF',
    alpha3: 'MAF',
    name: 'Saint Martin', 
    uFlag: '\u{1F1F2}\u{1F1EB}', 
    prefix: '590',
  );

  static const id666 = CountryCode(
    id: '666',
    alpha2: 'PM',
    alpha3: 'SPM',
    name: 'Saint Pierre And Miquelon', 
    uFlag: '\u{1F1F5}\u{1F1F2}', 
    prefix: '508',
  );

  static const id670 = CountryCode(
    id: '670',
    alpha2: 'VC',
    alpha3: 'VCT',
    name: 'Saint Vincent And The Grenadines', 
    uFlag: '\u{1F1FB}\u{1F1E8}', 
    prefix: '1-784',
  );

  static const id674 = CountryCode(
    id: '674',
    alpha2: 'SM',
    alpha3: 'SMR',
    name: 'San Marino', 
    uFlag: '\u{1F1F8}\u{1F1F2}', 
    prefix: '378',
  );

  static const id678 = CountryCode(
    id: '678',
    alpha2: 'ST',
    alpha3: 'STP',
    name: 'Sao Tome And Principe', 
    uFlag: '\u{1F1F8}\u{1F1F9}', 
    prefix: '239',
  );

  static const id682 = CountryCode(
    id: '682',
    alpha2: 'SA',
    alpha3: 'SAU',
    name: 'Saudi Arabia', 
    uFlag: '\u{1F1F8}\u{1F1E6}',
    prefix: '966',
  );

  static const id686 = CountryCode(
    id: '686',
    alpha2: 'SN',
    alpha3: 'SEN',
    name: 'Senegal', 
    uFlag: '\u{1F1F8}\u{1F1F3}', 
    prefix: '221',
  );

  static const id688 = CountryCode(
    id: '688',
    alpha2: 'RS',
    alpha3: 'SRB',
    name: 'Serbia', 
    uFlag: '\u{1F1F7}\u{1F1F8}', 
    prefix: '381',
  );

  static const id690 = CountryCode(
    id: '690',
    alpha2: 'SC',
    alpha3: 'SYC',
    name: 'Seychelles', 
    uFlag: '\u{1F1F8}\u{1F1E8}', 
    prefix: '248',
  );

  static const id694 = CountryCode(
    id: '694',
    alpha2: 'SL',
    alpha3: 'SLE',
    name: 'Sierra Leone', 
    uFlag: '\u{1F1F8}\u{1F1F1}', 
    prefix: '232',
  );

  static const id702 = CountryCode(
    id: '702',
    alpha2: 'SG',
    alpha3: 'SGP',
    name: 'Singapore', 
    uFlag: '\u{1F1F8}\u{1F1EC}',
    prefix: '65',
  );

  static const id703 = CountryCode(
    id: '703',
    alpha2: 'SK',
    alpha3: 'SVK',
    name: 'Slovakia', 
    uFlag: '\u{1F1F8}\u{1F1F0}', 
    prefix: '421',
  );
  // Socialist Republic of Viet Nam
  static const id704 = CountryCode(
    id: '704',
    alpha2: 'VN',
    alpha3: 'VNM',
    name: 'Viet Nam', 
    uFlag: '\u{1F1FB}\u{1F1F3}', 
    prefix: '84',
  );

  static const id705 = CountryCode(
    id: '705',
    alpha2: 'SI',
    alpha3: 'SVN',
    name: 'Slovenia', 
    uFlag: '\u{1F1F8}\u{1F1EE}', 
    prefix: '386',
  );

  static const id706 = CountryCode(
    id: '706',
    alpha2: 'SO',
    alpha3: 'SOM',
    name: 'Somalia', 
    uFlag: '\u{1F1F8}\u{1F1F4}', 
    prefix: '252',
  );

  static const id710 = CountryCode(
    id: '710',
    alpha2: 'ZA',
    alpha3: 'ZAF',
    name: 'South Africa', 
    uFlag: '\u{1F1FF}\u{1F1E6}', 
    prefix: '27',
  );

  static const id716 = CountryCode(
    id: '716',
    alpha2: 'ZW',
    alpha3: 'ZWE',
    name: 'Zimbabwe', 
    uFlag: '\u{1F1FF}\u{1F1FC}', 
    prefix: '263',
  );

  static const id724 = CountryCode(
    id: '724',
    alpha2: 'ES',
    alpha3: 'ESP',
    name: 'Spain', 
    uFlag: '\u{1F1EA}\u{1F1F8}', 
    prefix: '34',
  );

  static const id728 = CountryCode(
    id: '728',
    alpha2: 'SS',
    alpha3: 'SSD',
    name: 'South Sudan', 
    uFlag: '\u{1F1F8}\u{1F1F8}', 
    prefix: '211',
  );

  static const id729 = CountryCode(
    id: '729',
    alpha2: 'SD',
    alpha3: 'SDN',
    name: 'Sudan', 
    uFlag: '\u{1F1F8}\u{1F1E9}', 
    prefix: '249',
  );

  static const id732 = CountryCode(
    id: '732',
    alpha2: 'EH',
    alpha3: 'ESH',
    name: 'Western Sahara', 
    uFlag: '\u{1F1EA}\u{1F1ED}', 
    prefix: '212',
  );

  static const id740 = CountryCode(
    id: '740',
    alpha2: 'SR',
    alpha3: 'SUR',
    name: 'Suriname', 
    uFlag: '\u{1F1F8}\u{1F1F7}', 
    prefix: '597',
  );

  static const id744 = CountryCode(
    id: '744',
    alpha2: 'SJ',
    alpha3: 'SJM',
    name: 'Svalbard And Jan Mayen', 
    uFlag: '\u{1F1F8}\u{1F1EF}', 
    prefix: '47',
  );

  static const id748 = CountryCode(
    id: '748',
    alpha2: 'SZ',
    alpha3: 'SWZ',
    name: 'Eswatini', 
    uFlag: '\u{1F1F8}\u{1F1FF}', 
    prefix: '268',
  );

  static const id752 = CountryCode(
    id: '752',
    alpha2: 'SE',
    alpha3: 'SWE',
    name: 'Sweden', 
    uFlag: '\u{1F1F8}\u{1F1EA}', 
    prefix: '46',
  );

  static const id756 = CountryCode(
    id: '756',
    alpha2: 'CH',
    alpha3: 'CHE',
    name: 'Switzerland', 
    uFlag: '\u{1F1E8}\u{1F1ED}', 
    prefix: '41',
  );

  static const id760 = CountryCode(
    id: '760',
    alpha2: 'SY',
    alpha3: 'SYR',
    name: 'Syrian Arab Republic', 
    uFlag: '\u{1F1F8}\u{1F1FE}', 
    prefix: '963',
  );

  static const id762 = CountryCode(
    id: '762',
    alpha2: 'TJ',
    alpha3: 'TJK',
    name: 'Tajikistan', 
    uFlag: '\u{1F1F9}\u{1F1EF}', 
    prefix: '992',
  );

  static const id764 = CountryCode(
    id: '764',
    alpha2: 'TH',
    alpha3: 'THA',
    name: 'Thailand', 
    uFlag: '\u{1F1F9}\u{1F1ED}', 
    prefix: '66',
  );

  static const id768 = CountryCode(
    id: '768',
    alpha2: 'TG',
    alpha3: 'TGO',
    name: 'Togo', 
    uFlag: '\u{1F1F9}\u{1F1EC}', 
    prefix: '228',
  );

  static const id772 = CountryCode(
    id: '772',
    alpha2: 'TK',
    alpha3: 'TKL',
    name: 'Tokelau', 
    uFlag: '\u{1F1F9}\u{1F1F0}', 
    prefix: '690',
  );

  static const id776 = CountryCode(
    id: '776',
    alpha2: 'TO',
    alpha3: 'TON',
    name: 'Tonga', 
    uFlag: '\u{1F1F9}\u{1F1F4}', 
    prefix: '676',
  );

  static const id780 = CountryCode(
    id: '780',
    alpha2: 'TT',
    alpha3: 'TTO',
    name: 'Trinidad And Tobago', 
    uFlag: '\u{1F1F9}\u{1F1F9}', 
    prefix: '1-868',
  );

  static const id784 = CountryCode(
    id: '784',
    alpha2: 'AE',
    alpha3: 'ARE',
    name: 'United Arab Emirates', 
    uFlag: '\u{1F1E6}\u{1F1EA}', 
    prefix: '971',
  );

  static const id788 = CountryCode(
    id: '788',
    alpha2: 'TN',
    alpha3: 'TUN',
    name: 'Tunisia', 
    uFlag: '\u{1F1F9}\u{1F1F3}', 
    prefix: '216',
  );

  static const id792 = CountryCode(
    id: '792',
    alpha2: 'TR',
    alpha3: 'TUR',
    name: 'Turkey', 
    uFlag: '\u{1F1F9}\u{1F1F7}', 
    prefix: '90',
  );

  static const id795 = CountryCode(
    id: '795',
    alpha2: 'TM',
    alpha3: 'TKM',
    name: 'Turkmenistan', 
    uFlag: '\u{1F1F9}\u{1F1F2}', 
    prefix: '993',
  );

  static const id796 = CountryCode(
    id: '796',
    alpha2: 'TC',
    alpha3: 'TCA',
    name: 'Turks And Caicos Islands', 
    uFlag: '\u{1F1F9}\u{1F1E8}', 
    prefix: '1-649',
  );

  static const id798 = CountryCode(
    id: '798',
    alpha2: 'TV',
    alpha3: 'TUV',
    name: 'Tuvalu', 
    uFlag: '\u{1F1F9}\u{1F1FB}', 
    prefix: '688',
  );

  static const id800 = CountryCode(
    id: '800',
    alpha2: 'UG',
    alpha3: 'UGA',
    name: 'Uganda', 
    uFlag: '\u{1F1FA}\u{1F1EC}', 
    prefix: '256',
  );

  static const id804 = CountryCode(
    id: '804',
    alpha2: 'UA',
    alpha3: 'UKR',
    name: 'Ukraine', 
    uFlag: '\u{1F1FA}\u{1F1E6}', 
    prefix: '380',
  );

  static const id807 = CountryCode(
    id: '807',
    alpha2: 'MK',
    alpha3: 'MKD',
    name: 'North Macedonia', 
    uFlag: '\u{1F1F2}\u{1F1F0}', 
    prefix: '389',
  );

  static const id818 = CountryCode(
    id: '818',
    alpha2: 'EG',
    alpha3: 'EGY',
    name: 'Egypt', 
    uFlag: '\u{1F1EA}\u{1F1EC}', 
    prefix: '20',
  );

  static const id826 = CountryCode(
    id: '826',
    alpha2: 'GB',
    alpha3: 'GBR',
    name: 'United Kingdom Of Great British And Northern Ireland', 
    uFlag: '\u{1F1EC}\u{1F1E7}', 
    prefix: '44',
  );

  static const id831 = CountryCode(
    id: '831',
    alpha2: 'GG',
    alpha3: 'GGY',
    name: 'Guernsey', 
    uFlag: '\u{1F1EC}\u{1F1EC}', prefix: '44-1481',
  );

  static const id832 = CountryCode(
    id: '832',
    alpha2: 'JE',
    alpha3: 'JEY',
    name: 'Jersey', 
    uFlag: '\u{1F1EF}\u{1F1EA}', 
    prefix: '44-1534',
  );

  static const id833 = CountryCode(
    id: '833',
    alpha2: 'IM',
    alpha3: 'IMN',
    name: 'Isle Of Man', 
    uFlag: '\u{1F1EE}\u{1F1F2}', 
    prefix: '44-1624',
  );

  static const id834 = CountryCode(
    id: '834',
    alpha2: 'TZ',
    alpha3: 'TZA',
    name: 'United Republic Of Tanzania', 
    uFlag: '\u{1F1F9}\u{1F1FF}', 
    prefix: '255',
  );

  static const id840 = CountryCode(
    id: '840',
    alpha2: 'US',
    alpha3: 'USA',
    name: 'United States Of America', 
    uFlag: '\u{1F1FA}\u{1F1F8}', 
    prefix: '1',
  );

  static const id850 = CountryCode(
    id: '850',
    alpha2: 'VI',
    alpha3: 'VIR',
    name: 'United States Virgin Islands', 
    uFlag: '\u{1F1FB}\u{1F1EE}', 
    prefix: '1-340',
  );

  static const id854 = CountryCode(
    id: '854',
    alpha2: 'BF',
    alpha3: 'BFA',
    name: 'Burkina Faso', 
    uFlag: '\u{1F1E7}\u{1F1EB}', 
    prefix: '226',
  );

  static const id858 = CountryCode(
    id: '858',
    alpha2: 'UY',
    alpha3: 'URY',
    name: 'Uruguay', 
    uFlag: '\u{1F1FA}\u{1F1FE}', 
    prefix: '598',
  );

  static const id860 = CountryCode(
    id: '860',
    alpha2: 'UZ',
    alpha3: 'UZB',
    name: 'Uzbekistan', 
    uFlag: '\u{1F1FA}\u{1F1FF}', 
    prefix: '998',
  );

  static const id862 = CountryCode(
    id: '862',
    alpha2: 'VE',
    alpha3: 'VEN',
    name: 'Venezuela', 
    uFlag: '\u{1F1FB}\u{1F1EA}', 
    prefix: '58',
  );

  static const id876 = CountryCode(
    id: '876',
    alpha2: 'WF',
    alpha3: 'WLF',
    name: 'Wallis And Futuna', 
    uFlag: '\u{1F1FC}\u{1F1EB}', 
    prefix: '681',
  );

  static const id882 = CountryCode(
    id: '882',
    alpha2: 'WS',
    alpha3: 'WSM',
    name: 'Samoa', 
    uFlag: '\u{1F1FC}\u{1F1F8}', 
    prefix: '685',
  );

  static const id887 = CountryCode(
    id: '887',
    alpha2: 'YE',
    alpha3: 'YEM',
    name: 'Yemen', 
    uFlag: '\u{1F1FE}\u{1F1EA}', 
    prefix: '967',
  );

  static const id894 = CountryCode(
    id: '894',
    alpha2: 'ZM',
    alpha3: 'ZMB',
    name: 'Zambia', 
    uFlag: '\u{1F1FF}\u{1F1F2}', 
    prefix: '260',
  );

  static final List<CountryCode> values = [
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
  ];

  static final names = CountryName();
  static final alphas2 = CountryAlpha2();
  static final alphas3 = CountryAlpha3();
  final byName = CountryName();
  final byalpha2 = CountryAlpha2();
  final byalpha3 = CountryAlpha3();

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
      {List<CountryCodeScope> scopes = const [
        CountryCodeScope.alpha2,
        CountryCodeScope.alpha3,
        CountryCodeScope.id,
        CountryCodeScope.name
      ]}) {
    key = key.trim().toLowerCase();
    CountryCode? countryCode;
    if(countryCode == null && scopes.contains(CountryCodeScope.id)) {
      for(var cc in values) {
        if(int.tryParse(cc.id.toLowerCase()) == int.tryParse(key)) {
          countryCode = cc;
        }
      }
    }
    if(countryCode == null && scopes.contains(CountryCodeScope.name)) {
      for(var cc in names.values) {
        if(cc.name.toLowerCase() == key) {
          countryCode = cc;
          break;
        }
      }
    }
    if(countryCode == null  && scopes.contains(CountryCodeScope.alpha2)) {
      for(var cc in alphas2.values) {
        if(cc.alpha2.toLowerCase() == key) {
          countryCode = cc;
          break;
        }
      }      
    }
    if(countryCode == null  && scopes.contains(CountryCodeScope.alpha3)) {
      for(var cc in alphas3.values) {
        if(cc.alpha3.toLowerCase() == key) {
          countryCode = cc;
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

}

enum CountryCodeScope {alpha2, alpha3, id, name}