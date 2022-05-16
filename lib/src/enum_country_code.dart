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
  id004( 
    CountryCode(
      id: '004',
      alpha2: 'AF',
      alpha3: 'AFG',
      officialName: 'Afghanistan', 
      uFlag: '\u{1F1E6}\u{1F1EB}', 
      prefix: '93'    
    )
  ),
  id008( 
    CountryCode(
      id: '008',
      alpha2: 'AL',
      alpha3: 'ALB',
      officialName: 'Albania', 
      uFlag: '\u{1F1E6}\u{1F1F1}', 
      prefix: '355',    
    )
  ),
  id010( 
    CountryCode(
      id: '010',
      alpha2: 'AQ',
      alpha3: 'ATA',
      officialName: 'Antarctica', 
      uFlag: '\u{1F1E6}\u{1F1F6}', 
      prefix: '672',
    )
  ),
  id012( 
    CountryCode(
      id: '012',
      alpha2: 'DZ',
      alpha3: 'DZA',
      officialName: 'Algeria', 
      uFlag: 'U+1F1E9 U+1F1FF', 
      prefix: '213',
    )
  ),
  id016( 
    CountryCode(
      id: '016',
      alpha2: 'AS',
      alpha3: 'ASM',
      officialName: 'American Samoa', 
      uFlag: '\u{1F1E6}\u{1F1F8}', 
      prefix: '1-684',
    )
  ),
  id020( 
    CountryCode(
      id: '020',
      alpha2: 'AD',
      alpha3: 'AND',
      officialName: 'Andorra', 
      uFlag: '\u{1F1E6} \u{1F1E9}', 
      prefix: '376',
    )
  ),
  id024( 
    CountryCode(
      id: '024',
      alpha2: 'AO',
      alpha3: 'AGO',
      officialName: 'Angola', 
      uFlag: '\u{1F1E6}\u{1F1F4}', 
      prefix: '244',
    )
  ),
  id028( 
    CountryCode(
      id: '028',
      alpha2: 'AG',
      alpha3: 'ATG',
      officialName: 'Antigua and Barbuda', 
      uFlag: '\u{1F1E6}\u{1F1EC}', 
      prefix: '1-268',
    )
  ),
  id031( 
    CountryCode(
      id: '031',
      alpha2: 'AZ',
      alpha3: 'AZE',
      officialName: 'Azerbaijan', 
      uFlag: '\u{1F1E6}\u{1F1FF}', 
      prefix: '994',
    )
  ),
  id032( 
    CountryCode(
      id: '032',
      alpha2: 'AR',
      alpha3: 'ARG',
      officialName: 'Argentina', 
      uFlag: '\u{1F1E6}\u{1F1F7}', 
      prefix: '54',
    )
  ),
  id036( 
    CountryCode(
      id: '036',
      alpha2: 'AU',
      alpha3: 'AUS',
      officialName: 'Australia', 
      uFlag: '\u{1F1E6}\u{1F1FA}', 
      prefix: '61',
    )
  ),
  id040( 
    CountryCode(
      id: '040',
      alpha2: 'AT',
      alpha3: 'AUT',
      officialName: 'Austria', 
      uFlag: '\u{1F1E6}\u{1F1F9}', 
      prefix: '43',
    )
  ),
  id044( 
    CountryCode(
      id: '044',
      alpha2: 'BS',
      alpha3: 'BHS',
      officialName: 'Bahamas', 
      uFlag: '\u{1F1E7}\u{1F1F8}', 
      prefix: '1-242',
    )
  ),
  id048( 
    CountryCode(
      id: '048',
      alpha2: 'BH',
      alpha3: 'BHR',
      officialName: 'Bahrain', 
      uFlag: '\u{1F1E7}\u{1F1ED}', 
      prefix: '973',
    )
  ),
  id050( 
    CountryCode(
      id: '050',
      alpha2: 'BD',
      alpha3: 'BGD',
      officialName: 'Bangladesh', 
      uFlag: '\u{1F1E7}\u{1F1E9}', 
      prefix: '880',
    )
  ),
  id051( 
    CountryCode(
      id: '051',
      alpha2: 'AM',
      alpha3: 'ARM',
      officialName: 'Armenia', 
      uFlag: '\u{1F1E6}\u{1F1F2}', 
      prefix: '374',
    )
  ),
  id052( 
    CountryCode(
      id: '052',
      alpha2: 'BB',
      alpha3: 'BRB',
      officialName: 'Barbados', 
      uFlag: '\u{1F1E7}\u{1F1E7}', 
      prefix: '1-246',
    )
  ),
  id056( 
    CountryCode(
      id: '056',
      alpha2: 'BE',
      alpha3: 'BEL',
      officialName: 'Belgium', 
      uFlag: '\u{1F1E7}\u{1F1EA}', 
      prefix: '32',
    )
  ),
  id060( 
    CountryCode(
      id: '060',
      alpha2: 'BM',
      alpha3: 'BMU',
      officialName: 'Bermuda', 
      uFlag: '\u{1F1E7}\u{1F1F2}', 
      prefix: '1-441',
    )
  ),
  id064( 
    CountryCode(
      id: '064',
      alpha2: 'BT',
      alpha3: 'BTN',
      officialName: 'Bhutan', 
      uFlag: '\u{1F1E7}\u{1F1F9}', 
      prefix: '975',
    )
  ),
  id068( 
    CountryCode(
      id: '068',
      alpha2: 'BO',
      alpha3: 'BOL',
      officialName: 'Bolivia', 
      uFlag: '\u{1F1E7}\u{1F1F4}', 
      prefix: '591',
    )
  ),
  id070( 
    CountryCode(
      id: '070',
      alpha2: 'BA',
      alpha3: 'BIH',
      officialName: 'Bosnia and Herzegovina', 
      uFlag: '\u{1F1E7}\u{1F1E6}', 
      prefix: '387',
    )
  ),
  id072( 
    CountryCode(
      id: '072',
      alpha2: 'BW',
      alpha3: 'BWA',
      officialName: 'Botswana', 
      uFlag: '\u{1F1E7}\u{1F1FC}', 
      prefix: '267',
    )
  ),
  id074(CountryCode(
      id: '074',
      alpha2: 'BV',
      alpha3: 'BVT',
      officialName: 'Bouvet Island', 
      uFlag: '\u{1F1E7}\u{1F1FB}', prefix: '',
    )
  ),
  id076( 
    CountryCode(
      id: '076',
      alpha2: 'BR',
      alpha3: 'BRA',
      officialName: 'Brazil', 
      uFlag: '\u{1F1E7}\u{1F1F7}', 
      prefix: '55',
    )
  ),
  id084( 
    CountryCode(
      id: '084',
      alpha2: 'BZ',
      alpha3: 'BLZ',
      officialName: 'Belize', 
      uFlag: '\u{1F1E7}\u{1F1FF}', 
      prefix: '501',
    )
  ),
  id086( 
    CountryCode(
      id: '086',
      alpha2: 'IO',
      alpha3: 'IOT',
      officialName: 'British Indian Ocean Territory', 
      uFlag: '\u{1F1EE}\u{1F1F4}', 
      prefix: '246',
    )
  ),
  id090( 
    CountryCode(
      id: '090',
      alpha2: 'SB',
      alpha3: 'SLB',
      officialName: 'Solomon Islands', 
      uFlag: '\u{1F1F8}\u{1F1E7}', 
      prefix: '677',
    )
  ),
  id092( 
    CountryCode(
      id: '092',
      alpha2: 'VG',
      alpha3: 'VGB',
      officialName: 'British Virgin Islands', 
      uFlag: '\u{1F1FB}\u{1F1EC}', 
      prefix: '1-284',
    )
  ),
  id096( 
    CountryCode(
      id: '096',
      alpha2: 'BN',
      alpha3: 'BRN',
      officialName: 'Brunei Darussalam', 
      uFlag: '\u{1F1E7}\u{1F1F3}', 
      prefix: '673',
    )
  ),
  id100( 
    CountryCode(
      id: '100',
      alpha2: 'BG',
      alpha3: 'BGR',
      officialName: 'Bulgaria', 
      uFlag: '\u{1F1E7}\u{1F1EC}', 
      prefix: '359',
    )
  ),
  id104( 
    CountryCode(
      id: '104',
      alpha2: 'MM',
      alpha3: 'MMR',
      officialName: 'Myanmar', 
      uFlag: '\u{1F1F2}\u{1F1F2}', 
      prefix: '95',
    )
  ),
  id108( 
    CountryCode(
      id: '108',
      alpha2: 'BI',
      alpha3: 'BDI',
      officialName: 'Burundi', 
      uFlag: '\u{1F1E7}\u{1F1EE}', 
      prefix: '257',
    )
  ),
  id112( 
    CountryCode(
      id: '112',
      alpha2: 'BY',
      alpha3: 'BLR',
      officialName: 'Belarus', 
      uFlag: '\u{1F1E7}\u{1F1FE}', 
      prefix: '375',
    )
  ),
  id116( 
    CountryCode(
      id: '116',
      alpha2: 'KH',
      alpha3: 'KHM',
      officialName: 'Cambodia', 
      uFlag: '\u{1F1F0}\u{1F1ED}', 
      prefix: '855',
    )
  ),
  id120( 
    CountryCode(
      id: '120',
      alpha2: 'CM',
      alpha3: 'CMR',
      officialName: 'Cameroon', 
      uFlag: '\u{1F1E8}\u{1F1F2}', 
      prefix: '237',
    )
  ),
  id124( 
    CountryCode(
      id: '124',
      alpha2: 'CA',
      alpha3: 'CAN',
      officialName: 'Canada', 
      uFlag: '\u{1F1E8}\u{1F1E6}', 
      prefix: '1',
    )
  ),
  id132( 
    CountryCode(
      id: '132',
      alpha2: 'CV',
      alpha3: 'CPV',
      officialName: 'Cabo Verde', 
      uFlag: '\u{1F1E8}\u{1F1FB}', 
      prefix: '238',
    )
  ),
  id136( 
    CountryCode(
      id: '136',
      alpha2: 'KY',
      alpha3: 'CYM',
      officialName: 'Cayman Islands', 
      uFlag: '\u{1F1F0}\u{1F1FE}', 
      prefix: '1-345',
    )
  ),
  id140( 
    CountryCode(
      id: '140',
      alpha2: 'CF',
      alpha3: 'CAF',
      officialName: 'Central African Republic', 
      uFlag: '\u{1F1E8}\u{1F1EB}', 
      prefix: '236',
    )
  ),
  id144( 
    CountryCode(
      id: '144',
      alpha2: 'LK',
      alpha3: 'LKA',
      officialName: 'Sri Lanka', 
      uFlag: '\u{1F1F1}\u{1F1F0}', 
      prefix: '94',
    )
  ),
  id148( 
    CountryCode(
      id: '148',
      alpha2: 'TD',
      alpha3: 'TCD',
      officialName: 'Chad', 
      uFlag: '\u{1F1F9}\u{1F1E9}', 
      prefix: '235',
    )
  ),
  id152( 
    CountryCode(
      id: '152',
      alpha2: 'CL',
      alpha3: 'CHL',
      officialName: 'Chile', 
      uFlag: '\u1F1E8\u1F1F1', 
      prefix: '56',
    )
  ),
  id156( 
    CountryCode(
      id: '156',
      alpha2: 'CN',
      alpha3: 'CHN',
      officialName: 'China', 
      uFlag: '\u1F1E8\u1F1F3', 
      prefix: '86',
    )
  ),
  id158( 
    CountryCode(
      id: '158',
      alpha2: 'TW',
      alpha3: 'TWN',
      officialName: 'Taiwan', 
      uFlag: '\u{1F1F9}\u{1F1FC}', 
      prefix: '886',
    )
  ),
  id162( 
    CountryCode(
      id: '162',
      alpha2: 'CX',
      alpha3: 'CXR',
      officialName: 'Christmas Islands', 
      uFlag: '\u{1F1E8}\u{1F1FD}', 
      prefix: '61',
    )
  ),
  id166( 
    CountryCode(
      id: '166',
      alpha2: 'CC',
      alpha3: 'CCK',
      officialName: 'Cocos Islands', 
      uFlag: '\u{1F1E8}\u{1F1E8}', 
      prefix: '61',
    )
  ),
  id170( 
    CountryCode(
      id: '170',
      alpha2: 'CO',
      alpha3: 'COL',
      officialName: 'Colombia', 
      uFlag: '\u{1F1E8}\u{1F1F4}', 
      prefix: '57',
    )
  ),
  id174( 
    CountryCode(
      id: '174',
      alpha2: 'KM',
      alpha3: 'COM',
      officialName: 'Comoros', 
      uFlag: '\u{1F1F0}\u{1F1F2}', 
      prefix: '269',
    )
  ),
  id175( 
    CountryCode(
      id: '175',
      alpha2: 'YT',
      alpha3: 'MYT',
      officialName: 'Mayotte', 
      uFlag: '\u{1F1FE}\u{1F1F9}', 
      prefix: '262',
    )
  ),
  //congo Republic
  id178( 
    CountryCode(
      id: '178',
      alpha2: 'CG',
      alpha3: 'COG',
      officialName: 'Congo', 
      uFlag: '\u{1F1E8}\u{1F1EC}', 
      prefix: '242',
    )
  ),
  //congo DR
  id180( 
    CountryCode(
      id: '180',
      alpha2: 'CD',
      alpha3: 'COD',
      officialName: 'Congo Democratic Republic', 
      uFlag: '\u{1F1E8}\u{1F1E9}', 
      prefix: '243',
    )
  ),
  id184( 
    CountryCode(
      id: '184',
      alpha2: 'CK',
      alpha3: 'COK',
      officialName: 'Cook Islands', 
      uFlag: '\u{1F1E8}\u{1F1F0}', 
      prefix: '682',
    )
  ),
  id188( 
    CountryCode(
      id: '188',
      alpha2: 'CR',
      alpha3: 'CRI',
      officialName: 'Costa Rica', 
      uFlag: '\u{1F1E8}\u{1F1F7}', prefix: '506',
    )
  ),
id191( 
    CountryCode(
      id: '191',
      alpha2: 'HR',
      alpha3: 'HRV',
      officialName: 'Croatia', 
      uFlag: '\u{1F1ED}\u{1F1F7}', 
      prefix: '385',
    )
  ),
  id192( 
    CountryCode(
      id: '192',
      alpha2: 'CU',
      alpha3: 'CUB',
      officialName: 'Cuba', 
      uFlag: '\u{1F1E8}\u{1F1FA}', 
      prefix: '53',
    )
  ),
  id196( 
    CountryCode(
      id: '196',
      alpha2: 'CY',
      alpha3: 'CYP',
      officialName: 'Cyprus', 
      uFlag: '\u1F1E8\u1F1FE', 
      prefix: '357',
    )
  ),
  id203( 
    CountryCode(
      id: '203',
      alpha2: 'CZ',
      alpha3: 'CZE',
      officialName: 'Czechia', 
      uFlag: '\u{1F1E8}\u{1F1FF}', 
      prefix: '420',
    )
  ),
  id204( 
    CountryCode(
      id: '204',
      alpha2: 'BJ',
      alpha3: 'BEN',
      officialName: 'Benin', 
      uFlag: '\u{1F1E7}\u{1F1EF}', 
      prefix: '229',
    )
  ),
  id208( 
    CountryCode(
      id: '208',
      alpha2: 'DK',
      alpha3: 'DNK',
      officialName: 'Denmark', 
      uFlag: '\u1F1E9\u1F1F0', 
      prefix: '45',
    )
  ),
  id212( 
    CountryCode(
      id: '212',
      alpha2: 'DM',
      alpha3: 'DMA',
      officialName: 'Dominica', 
      uFlag: '\u{1F1E9}\u{1F1F2}', 
      prefix: '1-767',
    )
  ),
  id214(CountryCode(
      id: '214',
      alpha2: 'DO',
      alpha3: 'DOM',
      officialName: 'Dominican Republic', 
      uFlag: '\u{1F1E9}\u{1F1F4}', 
      prefix: '1-809, 1-829, 1-849',
    )
  ),
  id218( 
    CountryCode(
      id: '218',
      alpha2: 'EC',
      alpha3: 'ECU',
      officialName: 'Ecuador', 
      uFlag: '\u{1F1EA}\u{1F1E8}', 
      prefix: '593',
    )
  ),
  id222( 
    CountryCode(
      id: '222',
      alpha2: 'SV',
      alpha3: 'SLV',
      officialName: 'El Salvador', 
      uFlag: '\u{1F1F8}\u{1F1FB}', 
      prefix: '503',
    )
  ),
  id226( 
    CountryCode(
      id: '226',
      alpha2: 'GQ',
      alpha3: 'GNQ',
      officialName: 'Equatorial Guinea', 
      uFlag: '\u{1F1EC}\u{1F1F6}', 
      prefix: '240',
    )
  ),
  id231( 
    CountryCode(
      id: '231',
      alpha2: 'ET',
      alpha3: 'ETH',
      officialName: 'Ethiopia', 
      uFlag: '\u{1F1EA}\u{1F1F9}', 
      prefix: '251',
    )
  ),
  id232( 
    CountryCode(
      id: '232',
      alpha2: 'ER',
      alpha3: 'ERI',
      officialName: 'Eritrea', 
      uFlag: '\u{1F1EA}\u{1F1F7}', 
      prefix: '291',
    )
  ),
  id233( 
    CountryCode(
      id: '233',
      alpha2: 'EE',
      alpha3: 'EST',
      officialName: 'Estonia', 
      uFlag: '\u{1F1EA}\u{1F1EA}', 
      prefix: '372',
    )
  ),
  id234( 
    CountryCode(
      id: '234',
      alpha2: 'FO',
      alpha3: 'FRO',
      officialName: 'Faore Islands', 
      uFlag: '\u{1F1EB}\u{1F1F4}', 
      prefix: '298',
    )
  ),
  id238( 
    CountryCode(
      id: '238',
      alpha2: 'FK',
      alpha3: 'FLK',
      officialName: 'Falkland Islands', 
      uFlag: '\u{1F1EB}\u{1F1F0}', 
      prefix: '500',
    )
  ),
  id239( 
    CountryCode(
      id: '239',
      alpha2: 'GS',
      alpha3: 'SGS',
      officialName: 'South Georgia And The South Sandwich Islands', 
      uFlag: '\u{1F1EC}\u{1F1F8}', 
      prefix: '995',
    )
  ),
  id242( 
    CountryCode(
      id: '242',
      alpha2: 'FJ',
      alpha3: 'FJI',
      officialName: 'Fiji', 
      uFlag: '\u{1F1EB}\u{1F1EF}', 
      prefix: '679',
    )
  ),
  id246( 
    CountryCode(
      id: '246',
      alpha2: 'FI',
      alpha3: 'FIN',
      officialName: 'Finland', 
      uFlag: '\u{1F1EB}\u{1F1EE}', 
      prefix: '358',
    )
  ),
  id248( 
    CountryCode(
      id: '248',
      alpha2: 'AX',
      alpha3: 'ALA',
      officialName: 'Aland Islands', 
      uFlag: '\u{1F1E6}\u{1F1FD}', 
      prefix: '358-18, 358-457',
    )
  ),
  id250( 
    CountryCode(
      id: '250',
      alpha2: 'FR',
      alpha3: 'FRA',
      officialName: 'France', 
      uFlag: '\u{1F1EB}\u{1F1F7}', 
      prefix: '33',
    )
  ),
  id254( 
    CountryCode(
      id: '254',
      alpha2: 'GF',
      alpha3: 'GUF',
      officialName: 'French Guaiana', 
      uFlag: '\u{1F1EC}\u{1F1EB}', 
      prefix: '594',
    )
  ),
  id258( 
    CountryCode(
      id: '258',
      alpha2: 'PF',
      alpha3: 'PYF',
      officialName: 'French Polynesia', 
      uFlag: '\u{1F1F5}\u{1F1EB}', 
      prefix: '689',
    )
  ),
  id260( 
    CountryCode(
      id: '260',
      alpha2: 'TF',
      alpha3: 'ATF',
      officialName: 'French Southern Territories', 
      uFlag: '\u{1F1F9}\u{1F1EB}', 
      prefix: '262',
    )
  ),
  id262( 
    CountryCode(
      id: '262',
      alpha2: 'DJ',
      alpha3: 'DJI',
      officialName: 'Djibouti', 
      uFlag: '\u{1F1E9}\u{1F1EF}', 
      prefix: '253',
    )
  ),
  id266( 
    CountryCode(
      id: '266',
      alpha2: 'GA',
      alpha3: 'GAB',
      officialName: 'Gabon', 
      uFlag: '\u{1F1EC}\u{1F1E6}', 
      prefix: '241',
    )
  ),
  id268( 
    CountryCode(
      id: '268',
      alpha2: 'GE',
      alpha3: 'GEO',
      officialName: 'Georgia', 
      uFlag: '\u{1F1EC}\u{1F1EA}', 
      prefix: '995',
    )
  ),
  id270( 
    CountryCode(
      id: '270',
      alpha2: 'GM',
      alpha3: 'GMB',
      officialName: 'Gambia', 
      uFlag: '\u{1F1EC}\u{1F1F2}', 
      prefix: '220',
    )
  ),
  id275( 
    CountryCode(
      id: '275',
      alpha2: 'PS',
      alpha3: 'PSE',
      officialName: 'Palestine', 
      uFlag: '\u{1F1F5}\u{1F1F8}', 
      prefix: '970',
    )
  ),
  id276( 
    CountryCode(
      id: '276',
      alpha2: 'DE',
      alpha3: 'DEU',
      officialName: 'Germany', 
      uFlag: '\u{1F1E9}\u{1F1EA}', 
      prefix: '49',
    )
  ),
  id288( 
    CountryCode(
      id: '288',
      alpha2: 'GH',
      alpha3: 'GHA',
      officialName: 'Ghana', 
      uFlag: '\u{1F1EC}\u{1F1ED}', 
      prefix: '233',
    )
  ),
  id292( 
    CountryCode(
      id: '292',
      alpha2: 'GI',
      alpha3: 'GIB',
      officialName: 'Gibraltar', 
      uFlag: '\u{1F1EC}\u{1F1EE}', 
      prefix: '350',
    )
  ),
  id296( 
    CountryCode(
      id: '296',
      alpha2: 'KI',
      alpha3: 'KIR',
      officialName: 'Kiribati', 
      uFlag: '\u{1F1F0}\u{1F1EE}', 
      prefix: '686',
    )
  ),
  id300( 
    CountryCode(
      id: '300',
      alpha2: 'GR',
      alpha3: 'GRC',
      officialName: 'Greece', 
      uFlag: '\u{1F1EC}\u{1F1F7}', 
      prefix: '30',
    )
  ),
  id304( 
    CountryCode(
      id: '304',
      alpha2: 'GL',
      alpha3: 'GRL',
      officialName: 'Greenland', 
      uFlag: '\u{1F1EC}\u{1F1F1}', 
      prefix: '299',
    )
  ),
  id308( 
    CountryCode(
      id: '308',
      alpha2: 'GD',
      alpha3: 'GRD',
      officialName: 'Grenada', 
      uFlag: '\u{1F1EC}\u{1F1E9}', 
      prefix: '1-473',
    )
  ),
  id312( 
    CountryCode(
      id: '312',
      alpha2: 'GP',
      alpha3: 'GLP',
      officialName: 'Guadeloupe', 
      uFlag: '\u{1F1EC}\u{1F1F5}', 
      prefix: '590',
    )
  ),
  id316( 
    CountryCode(
      id: '316',
      alpha2: 'GU',
      alpha3: 'GUM',
      officialName: 'Guam', 
      uFlag: '\u{1F1EC}\u{1F1FA}', 
      prefix: '1-671',
    )
  ),
  id320( 
    CountryCode(
      id: '320',
      alpha2: 'GT',
      alpha3: 'GTM',
      officialName: 'Guatemala', 
      uFlag: '\u{1F1EC}\u{1F1F9}', 
      prefix: '502',
    )
  ),
  id324( 
    CountryCode(
      id: '324',
      alpha2: 'GN',
      alpha3: 'GIN',
      officialName: 'Guinea', 
      uFlag: '\u{1F1EC}\u{1F1F3}', 
      prefix: '224',
    )
  ),
  id328( 
    CountryCode(
      id: '328',
      alpha2: 'GY',
      alpha3: 'GUY',
      officialName: 'Guyana', 
      uFlag: 'U+1F1EC U+1F1FE', 
      prefix: '592',
    )
  ),
  id332( 
    CountryCode(
      id: '332',
      alpha2: 'HT',
      alpha3: 'HTI',
      officialName: 'Haiti', 
      uFlag: '\u{1F1ED}\u{1F1F9}', 
      prefix: '509',
    )
  ),
  id334( 
    CountryCode(
      id: '334',
      alpha2: 'HM',
      alpha3: 'HMD',
      officialName: 'Heard Island And McDonald Islands', 
      uFlag: '\u{1F1ED}\u{1F1F2}', 
      prefix: '672',
    )
  ),
  //vatican city
  id336( 
    CountryCode(
      id: '336',
      alpha2: 'VA',
      alpha3: 'VAT',
      officialName: 'Holy See', 
      uFlag: '\u{1F1FB}\u{1F1E6}', 
      prefix: '379',
    )
  ),
  id340( 
    CountryCode(
      id: '340',
      alpha2: 'HN',
      alpha3: 'HND',
      officialName: 'Honduras', 
      uFlag: '\u{1F1ED}\u{1F1F3}', 
      prefix: '504',
    )
  ),
  id344( 
    CountryCode(
      id: '344',
      alpha2: 'HK',
      alpha3: 'HKG',
      officialName: 'Hong Kong', 
      uFlag: '\u{1F1ED}\u{1F1F0}', 
      prefix: '852',
    )
  ),
  id348( 
    CountryCode(
      id: '348',
      alpha2: 'HU',
      alpha3: 'HUN',
      officialName: 'Hungary', 
      uFlag: '\u{1F1ED}\u{1F1FA}', 
      prefix: '36',
    )
  ),
  id352( 
    CountryCode(
      id: '352',
      alpha2: 'IS',
      alpha3: 'ISL',
      officialName: 'Iceland', 
      uFlag: '\u{1F1EE}\u{1F1F8}', 
      prefix: '354',
    )
  ),
  id356( 
    CountryCode(
      id: '356',
      alpha2: 'IN',
      alpha3: 'IND',
      officialName: 'India', 
      uFlag: '\u{1F1EE}\u{1F1F3}', 
      prefix: '91',
    )
  ),
  id360( 
    CountryCode(
      id: '360',
      alpha2: 'ID',
      alpha3: 'IDN',
      officialName: 'Indonesia', 
      uFlag: '\u{1F1EE}\u{1F1E9}', 
      prefix: '62',
    )
  ),
  id364( 
    CountryCode(
      id: '364',
      alpha2: 'IR',
      alpha3: 'IRN',
      officialName: 'Iran', 
      uFlag: '\u{1F1EE}\u{1F1F7}', 
      prefix: '98',
    )
  ),
  id368( 
    CountryCode(
      id: '368',
      alpha2: 'IQ',
      alpha3: 'IRQ',
      officialName: 'Iraq', 
      uFlag: '\u{1F1EE}\u{1F1F6}', 
      prefix: '964',
    )
  ),
  id372( 
    CountryCode(
      id: '372',
      alpha2: 'IE',
      alpha3: 'IRL',
      officialName: 'Ireland', 
      uFlag: '\u{1F1EE}\u{1F1EA}', 
      prefix: '353',
    )
  ),
  id376( 
    CountryCode(
      id: '376',
      alpha2: 'IL',
      alpha3: 'ISR',
      officialName: 'Israel', 
      uFlag: '\u{1F1EE}\u{1F1F1}', 
      prefix: '972',
    )
  ),
  id380(CountryCode(
      id: '380',
      alpha2: 'IT',
      alpha3: 'ITA',
      officialName: 'Italy', 
      uFlag: '\u{1F1EE}\u{1F1F9}', prefix: '39',
    )
  ),
  id384( 
    CountryCode(
      id: '384',
      alpha2: 'CI',
      alpha3: 'CIV',
      officialName: 'Cote D\'Ivoire', 
      uFlag: '\u{1F1E8}\u{1F1EE}', 
      prefix: '225', 
    )
  ),
  id388( 
    CountryCode(
      id: '388',
      alpha2: 'JM',
      alpha3: 'JAM',
      officialName: 'Jamaica', 
      uFlag: '\u{1F1EF}\u{1F1F2}', 
      prefix: '1-876',
    )
  ),
  id392( 
    CountryCode(
      id: '392',
      alpha2: 'JP',
      alpha3: 'JPN',
      officialName: 'Japan', 
      uFlag: '\u{1F1EF}\u{1F1F5}', 
      prefix: '81',
    )
  ),
  id398( 
    CountryCode(
      id: '398',
      alpha2: 'KZ',
      alpha3: 'KAZ',
      officialName: 'Kazakhstan', 
      uFlag: '\u{1F1F0}\u{1F1FF}', 
      prefix: '7',
    )
  ),
  id400( 
    CountryCode(
      id: '400',
      alpha2: 'JO',
      alpha3: 'JOR',
      officialName: 'Jordan', 
      uFlag: '\u{1F1EF}\u{1F1F4}', 
      prefix: '962',
    )
  ),
  id404( 
    CountryCode(
      id: '404',
      alpha2: 'KE',
      alpha3: 'KEN',
      officialName: 'Kenya', 
      uFlag: '\u{1F1F0}\u{1F1EA}', 
      prefix: '254',
    )
  ),
  //north korea
  id408( 
    CountryCode(
      id: '408',
      alpha2: 'KP',
      alpha3: 'MMR',
      officialName: 'Democratic People\'s Republic Of Korea', 
      uFlag: '\u{1F1F0}\u{1F1F5}', 
      prefix: '850',
    )
  ),
  //south korea
  id410( 
    CountryCode(
      id: '410',
      alpha2: 'KR',
      alpha3: 'PRK',
      officialName: 'Republic Of Korea',     
      uFlag: '\u{1F1F0}\u{1F1F7}', 
      prefix: '82',
    )
  ),
  id414( 
    CountryCode(
      id: '414',
      alpha2: 'KW',
      alpha3: 'KWT',
      officialName: 'Kuwait', 
      uFlag: '\u{1F1F0}\u{1F1FC}', 
      prefix: '965',
    )
  ),
  id417( 
    CountryCode(
      id: '417',
      alpha2: 'KG',
      alpha3: 'KGZ',
      officialName: 'Kyrgyzstan', 
      uFlag: '\u{1F1F0}\u{1F1EC}', 
      prefix: '996',
    )
  ),
  id418( 
    CountryCode(
      id: '418',
      alpha2: 'LA',
      alpha3: 'LAO',
      officialName: 'Lao People\'s Democratic Republic', 
      uFlag: '\u{1F1F1}\u{1F1E6}', 
      prefix: '856',
    )
  ),
  id422( 
    CountryCode(
      id: '422',
      alpha2: 'LB',
      alpha3: 'LBN',
      officialName: 'Lebanon', 
      uFlag: '\u{1F1F1}\u{1F1E7}', 
      prefix: '961',
    )
  ),
  id426( 
    CountryCode(
      id: '426',
      alpha2: 'LS',
      alpha3: 'LSO',
      officialName: 'Lesotho', 
      uFlag: '\u{1F1F1}\u{1F1F8}', 
      prefix: '266',
    )
  ),
  id428( 
    CountryCode(
      id: '428',
      alpha2: 'LV',
      alpha3: 'LVA',
      officialName: 'Latvia', 
      uFlag: '\u{1F1F1}\u{1F1FB}', 
      prefix: '371',
    )
  ),
  id430( 
    CountryCode(
      id: '430',
      alpha2: 'LR',
      alpha3: 'LBR',
      officialName: 'Liberia', 
      uFlag: '\u{1F1F1}\u{1F1F7}', 
      prefix: '231',
    )
  ),
  id434( 
    CountryCode(
      id: '434',
      alpha2: 'LY',
      alpha3: 'LBY',
      officialName: 'Libya', 
      uFlag: '\u{1F1F1}\u{1F1FE}', 
      prefix: '218',
    )
  ),
  id438( 
    CountryCode(
      id: '438',
      alpha2: 'LI',
      alpha3: 'LIE',
      officialName: 'Liechtenstein', 
      uFlag: '\u{1F1F1}\u{1F1EE}', 
      prefix: '423',
    )
  ),
  id440( 
    CountryCode(
      id: '440',
      alpha2: 'LT',
      alpha3: 'LTU',
      officialName: 'Lithuania', 
      uFlag: '\u{1F1F1}\u{1F1F9}', 
      prefix: '370',
    )
  ),
  id442( 
    CountryCode(
      id: '442',
      alpha2: 'LU',
      alpha3: 'LUX',
      officialName: 'Luxembourg', 
      uFlag: '\u{1F1F1}\u{1F1FA}', 
      prefix: '352',
    )
  ),
  id446( 
    CountryCode(
      id: '446',
      alpha2: 'MO',
      alpha3: 'MAC',
      officialName: 'Macao', 
      uFlag: '\u{1F1F2}\u{1F1F4}', 
      prefix: '853',
    )
  ),
  id450( 
    CountryCode(
      id: '450',
      alpha2: 'MG',
      alpha3: 'MDG',
      officialName: 'Madagascar', 
      uFlag: '\u{1F1F2}\u{1F1EC}', 
      prefix: '261',
    )
  ),
  id454( 
    CountryCode(
      id: '454',
      alpha2: 'MW',
      alpha3: 'MWI',
      officialName: 'Malawi', 
      uFlag: '\u{1F1F2}\u{1F1FC}', 
      prefix: '265',
    )
  ),
  id458( 
    CountryCode(
      id: '458',
      alpha2: 'MY',
      alpha3: 'MYS',
      officialName: 'Malaysia', 
      uFlag: '\u{1F1F2}\u{1F1FE}', 
      prefix: '60',
    )
  ),
  id462( 
    CountryCode(
      id: '462',
      alpha2: 'MV',
      alpha3: 'MDV',
      officialName: 'Maldives', 
      uFlag: '\u{1F1F2}\u{1F1FB}', 
      prefix: '960',
    )
  ),
  id466( 
    CountryCode(
      id: '466',
      alpha2: 'ML',
      alpha3: 'MLI',
      officialName: 'Mali', 
      uFlag: '\u{1F1F2}\u{1F1F1}', 
      prefix: '223',
    )
  ),
  id470( 
    CountryCode(
      id: '470',
      alpha2: 'MT',
      alpha3: 'MLT',
      officialName: 'Malta', 
      uFlag: '\u{1F1F2}\u{1F1F9}', 
      prefix: '356',
    )
  ),
  id474( 
    CountryCode(
      id: '474',
      alpha2: 'MQ',
      alpha3: 'MTQ',
      officialName: 'Martinique', 
      uFlag: '\u{1F1F2}\u{1F1F6}', 
      prefix: '596',
    )
  ),
  id478( 
    CountryCode(
      id: '478',
      alpha2: 'MR',
      alpha3: 'MRT',
      officialName: 'Mauritania', 
      uFlag: '\u{1F1F2}\u{1F1F7}', 
      prefix: '222',
    )
  ),
  id480( 
    CountryCode(
      id: '480',
      alpha2: 'MU',
      alpha3: 'MUS',
      officialName: 'Mauritius', 
      uFlag: '\u{1F1F2}\u{1F1FA}', 
      prefix: '230',
    )
  ),
  id484( 
    CountryCode(
      id: '484',
      alpha2: 'MX',
      alpha3: 'MEX',
      officialName: 'Mexico', 
      uFlag: '\u{1F1F2}\u{1F1FD}', 
      prefix: '52',
    )
  ),
  id492( 
    CountryCode(
      id: '492',
      alpha2: 'MC',
      alpha3: 'MCO',
      officialName: 'Monaco', 
      uFlag: '\u{1F1F2}\u{1F1E8}', 
      prefix: '377',
    )
  ),
  id496( 
    CountryCode(
      id: '496',
      alpha2: 'MN',
      alpha3: 'MNG',
      officialName: 'Mongolia', 
      uFlag: '\u{1F1F2}\u{1F1F3}', 
      prefix: '976',
    )
  ),
  id498( 
    CountryCode(
      id: '498',
      alpha2: 'MD',
      alpha3: 'MDA',
      officialName: 'Republic Of Moldova', 
      uFlag: '\u{1F1F2}\u{1F1E9}', 
      prefix: '373',
    )
  ),
  id499( 
    CountryCode(
      id: '499',
      alpha2: 'ME',
      alpha3: 'MNE',
      officialName: 'Montenegro', 
      uFlag: '\u{1F1F2}\u{1F1EA}', 
      prefix: '382',
    )
  ),
  id500( 
    CountryCode(
      id: '500',
      alpha2: 'MS',
      alpha3: 'MSR',
      officialName: 'Montserrat', 
      uFlag: '\u{1F1F2}\u{1F1F8}', 
      prefix: '1-664',
    )
  ),
  id504( 
    CountryCode(
      id: '504',
      alpha2: 'MA',
      alpha3: 'MAR',
      officialName: 'Morocco', 
      uFlag: '\u{1F1F2}\u{1F1E6}', 
      prefix: '212',
    )
  ),
  id508( 
    CountryCode(
      id: '508',
      alpha2: 'MZ',
      alpha3: 'MOZ',
      officialName: 'Mozambique', 
      uFlag: '\u{1F1F2}\u{1F1FF}', 
      prefix: '258',
    )
  ),
  id512( 
    CountryCode(
      id: '512',
      alpha2: 'OM',
      alpha3: 'OMN',
      officialName: 'Oman', 
      uFlag: '\u{1F1F4}\u{1F1F2}', 
      prefix: '968',
    )
  ),
  id516( 
    CountryCode(
      id: '516',
      alpha2: 'NA',
      alpha3: 'NAM',
      officialName: 'Namibia', 
      uFlag: '\u{1F1F3}\u{1F1E6}', 
      prefix: '264',
    )
  ),
  id520( 
    CountryCode(
      id: '520',
      alpha2: 'NR',
      alpha3: 'NRU',
      officialName: 'Nauru', 
      uFlag: '\u{1F1F3}\u{1F1F7}', 
      prefix: '674',
    )
  ),
  id524( 
    CountryCode(
      id: '524',
      alpha2: 'NP',
      alpha3: 'NPL',
      officialName: 'Nepal', 
      uFlag: '\u{1F1F3}\u{1F1F5}', 
      prefix: '977',
    )
  ),
  id528( 
    CountryCode(
      id: '528',
      alpha2: 'NL',
      alpha3: 'NLD',
      officialName: 'Netherlands', 
      uFlag: '\u{1F1F3}\u{1F1F1}', 
      prefix: '31',
    )
  ),
  id531( 
    CountryCode(
      id: '531',
      alpha2: 'CW',
      alpha3: 'CUW',
      officialName: 'Curaçao', 
      uFlag: '\u{1F1E8}\u{1F1FC}', 
      prefix: '599',
    )
  ),
  id533( 
    CountryCode(
      id: '533',
      alpha2: 'AW',
      alpha3: 'ABW',
      officialName: 'Aruba', 
      uFlag: '\u{1F1E6}\u{1F1FC}', 
      prefix: '297',
    )
  ),
  id534( 
    CountryCode(
      id: '534',
      alpha2: 'SX',
      alpha3: 'SXM',
      officialName: 'Sint Maarten', 
      uFlag: '\u{1F1F8}\u{1F1FD}', 
      prefix: '1-721',
    )
  ),
  id535( 
    CountryCode(
      id: '535',
      alpha2: 'BQ',
      alpha3: 'BES',
      officialName: 'Bonaire Sint Eustatius And Saba', 
      uFlag: '\u{1F1E7}\u{1F1F6}', 
      prefix: '599',
    )
  ),
  id540( 
    CountryCode(
      id: '540',
      alpha2: 'NC',
      alpha3: 'NCL',
      officialName: 'New Caledonia', 
      uFlag: '\u{1F1F3}\u{1F1E8}', 
      prefix: '687',
    )
  ),
  id548( 
    CountryCode(
      id: '548',
      alpha2: 'VU',
      alpha3: 'VUT',
      officialName: 'Vanuatu', 
      uFlag: '\u{1F1FB}\u{1F1FA}', 
      prefix: '678',
    )
  ),
  id554( 
    CountryCode(
      id: '554',
      alpha2: 'NZ',
      alpha3: 'NZL',
      officialName: 'New Zealand', 
      uFlag: '\u{1F1F3}\u{1F1FF}', 
      prefix: '64',
    )
  ),
  id558( 
    CountryCode(
      id: '558',
      alpha2: 'NI',
      alpha3: 'NIC',
      officialName: 'Nicaragua', 
      uFlag: '\u{1F1F3}\u{1F1EE}', 
      prefix: '505',
    )
  ),
  id562( 
    CountryCode(
      id: '562',
      alpha2: 'NE',
      alpha3: 'NER',
      officialName: 'Niger', 
      uFlag: '\u{1F1F3}\u{1F1EA}', 
      prefix: '227',
    )
  ),
  id566( 
    CountryCode(
      id: '566',
      alpha2: 'NG',
      alpha3: 'NGA',
      officialName: 'Nigeria', 
      uFlag: '\u{1F1F3}\u{1F1EC}', 
      prefix: '234',
    )
  ),
  id570( 
    CountryCode(
      id: '570',
      alpha2: 'NU',
      alpha3: 'NIU',
      officialName: 'Niue', 
      uFlag: '\u{1F1F3}\u{1F1FA}', 
      prefix: '683',
    )
  ),
  id574( 
    CountryCode(
      id: '574',
      alpha2: 'NF',
      alpha3: 'NFK',
      officialName: 'Norfolk Island', 
      uFlag: '\u{1F1F3}\u{1F1EB}', 
      prefix: '672',
    )
  ),
  id578( 
    CountryCode(
      id: '578',
      alpha2: 'NO',
      alpha3: 'NOR',
      officialName: 'Norway', 
      uFlag: '\u{1F1F3}\u{1F1F4}', 
      prefix: '47',
    )
  ),
  id580( 
    CountryCode(
      id: '580',
      alpha2: 'MP',
      alpha3: 'MNP',
      officialName: 'Northern Marian Islands', 
      uFlag: '\u{1F1F2}\u{1F1F5}', 
      prefix: '1-670',
    )
  ),
  id581( 
    CountryCode(
      id: '581',
      alpha2: 'UM',
      alpha3: 'UMI',
      officialName: 'United States Minor Outlying Islands', 
      uFlag: '\u{1F1FA}\u{1F1F2}', 
      prefix: '1',
    )
  ),
  id583( 
    CountryCode(
      id: '583',
      alpha2: 'FM',
      alpha3: 'FSM',
      officialName: 'Federated States Of Micronesia', 
      uFlag: '\u{1F1EB}\u{1F1F2}', 
      prefix: '691',
    )
  ),
  id584( 
    CountryCode(
      id: '584',
      alpha2: 'MH',
      alpha3: 'MHL',
      officialName: 'Marshall Islands', 
      uFlag: '\u{1F1F2}\u{1F1ED}', 
      prefix: '692',
    )
  ),
  id585( 
    CountryCode(
      id: '585',
      alpha2: 'PW',
      alpha3: 'PLW',
      officialName: 'Palau', 
      uFlag: '\u{1F1F5}\u{1F1FC}', 
      prefix: '680',
    )
  ),
  id586( 
    CountryCode(
      id: '586',
      alpha2: 'PK',
      alpha3: 'PAK',
      officialName: 'Pakistan', 
      uFlag: '\u{1F1F5}\u{1F1F0}', 
      prefix: '92',
    )
  ),
  id591( 
    CountryCode(
      id: '591',
      alpha2: 'PA',
      alpha3: 'PAN',
      officialName: 'Panama', 
      uFlag: '\u{1F1F5}\u{1F1E6}', 
      prefix: '507',
    )
  ),
  id598( 
    CountryCode(
      id: '598',
      alpha2: 'PG',
      alpha3: 'PNG',
      officialName: 'Papua New Guinea', 
      uFlag: '\u{1F1F5}\u{1F1EC}', 
      prefix: '675',
    )
  ),
  id600( 
    CountryCode(
      id: '600',
      alpha2: 'PY',
      alpha3: 'PRY',
      officialName: 'Paraguay', 
      uFlag: '\u{1F1F5}\u{1F1FE}', 
      prefix: '595',
    )
  ),
  id604( 
    CountryCode(
      id: '604',
      alpha2: 'PE',
      alpha3: 'PER',
      officialName: 'Peru', 
      uFlag: '\u{1F1F5}\u{1F1EA}', 
      prefix: '51',
    )
  ),
  id608( 
    CountryCode(
      id: '608',
      alpha2: 'PH',
      alpha3: 'PHL',
      officialName: 'Philippines', 
      uFlag: '\u{1F1F5}\u{1F1ED}', 
      prefix: '63',
    )
  ),
  id612( 
    CountryCode(
      id: '612',
      alpha2: 'PN',
      alpha3: 'PCN',
      officialName: 'Pitcairn', 
      uFlag: '\u{1F1F5}\u{1F1F3}', 
      prefix: '64',
    )
  ),
  id616( 
    CountryCode(
      id: '616',
      alpha2: 'PL',
      alpha3: 'POL',
      officialName: 'Poland', 
      uFlag: '\u{1F1F5}\u{1F1F1}', 
      prefix: '48',
    )
  ),
  id620( 
    CountryCode(
      id: '620',
      alpha2: 'PT',
      alpha3: 'PRT',
      officialName: 'Portugal', 
      uFlag: '\u{1F1F5}\u{1F1F9}', 
      prefix: '351',
    )
  ),
  id624( 
    CountryCode(
      id: '624',
      alpha2: 'GW',
      alpha3: 'GNB',
      officialName: 'Guinea-Bissau', 
      uFlag: '\u{1F1EC}\u{1F1FC}', 
      prefix: '245',
    )
  ),
  id626( 
    CountryCode(
      id: '626',
      alpha2: 'TL',
      alpha3: 'TLS',
      officialName: 'Timor Leste', 
      uFlag: '\u{1F1F9}\u{1F1F1}', 
      prefix: '670',
    )
  ),
  id630( 
    CountryCode(
      id: '630',
      alpha2: 'PR',
      alpha3: 'PRI',
      officialName: 'Puerto Rico', 
      uFlag: '\u{1F1F5}\u{1F1F7}', 
      prefix: '1-787, 1-939',
    )
  ),
  id634( 
    CountryCode(
      id: '634',
      alpha2: 'QA',
      alpha3: 'QAT',
      officialName: 'Qatar', 
      uFlag: '\u{1F1F6}\u{1F1E6}', 
      prefix: '974',
    )
  ),
  id638( 
    CountryCode(
      id: '638',
      alpha2: 'RE',
      alpha3: 'REU',
      officialName: 'Réunion', 
      uFlag: '\u{1F1F7}\u{1F1EA}', 
      prefix: '262',
    )
  ),
  id642( 
    CountryCode(
      id: '642',
      alpha2: 'RO',
      alpha3: 'ROU',
      officialName: 'Romania', 
      uFlag: '\u{1F1F7}\u{1F1F4}', 
      prefix: '40',
    )
  ),
  id643( 
    CountryCode(
      id: '643',
      alpha2: 'RU',
      alpha3: 'RUS',
      officialName: 'Russian Federation', 
      uFlag: '\u{1F1F7}\u{1F1FA}', 
      prefix: '7',
    )
  ),
  id646( 
    CountryCode(
      id: '646',
      alpha2: 'RW',
      alpha3: 'RWA',
      officialName: 'Rwanda', 
      uFlag: '\u{1F1F7}\u{1F1FC}', 
      prefix: '250',
    )
  ),
  id652( 
    CountryCode(
      id: '652',
      alpha2: 'BL',
      alpha3: 'BLM',
      officialName: 'Saint Barthélemy', 
      uFlag: '\u{1F1E7}\u{1F1F1}', 
      prefix: '590',
    )
  ),
  id654( 
    CountryCode(
      id: '654',
      alpha2: 'SH',
      alpha3: 'SHN',
      officialName: 'Saint Helena, Ascension and Tristan Da Cunha', 
      uFlag: '\u{1F1F8}\u{1F1ED}', 
      prefix: '290',
    )
  ),
  id659( 
    CountryCode(
      id: '659',
      alpha2: 'KN',
      alpha3: 'KNA',
      officialName: 'Saint Kitts And Nevis', 
      uFlag: '\u{1F1F0}\u{1F1F3}', 
      prefix: '1-869',
    ),
  ),
id660( 
    CountryCode(
      id: '660',
      alpha2: 'AI',
      alpha3: 'AIA',
      officialName: 'Anguilla', 
      uFlag: '\u{1F1E6}\u{1F1EE}', 
      prefix: '1-264',
    )
  ),
  id662( 
    CountryCode(
      id: '662',
      alpha2: 'LC',
      alpha3: 'LCA',
      officialName: 'Saint Lucia', 
      uFlag: '\u{1F1F1}\u{1F1E8}', 
      prefix: '1-758',
    )
  ),
  id663( 
    CountryCode(
      id: '663',
      alpha2: 'MF',
      alpha3: 'MAF',
      officialName: 'Saint Martin', 
      uFlag: '\u{1F1F2}\u{1F1EB}', 
      prefix: '590',
    )
  ),
  id666( 
    CountryCode(
      id: '666',
      alpha2: 'PM',
      alpha3: 'SPM',
      officialName: 'Saint Pierre And Miquelon', 
      uFlag: '\u{1F1F5}\u{1F1F2}', 
      prefix: '508',
    )
  ),
  id670( 
    CountryCode(
      id: '670',
      alpha2: 'VC',
      alpha3: 'VCT',
      officialName: 'Saint Vincent And The Grenadines', 
      uFlag: '\u{1F1FB}\u{1F1E8}', 
      prefix: '1-784',
    )
  ),
  id674( 
    CountryCode(
      id: '674',
      alpha2: 'SM',
      alpha3: 'SMR',
      officialName: 'San Marino', 
      uFlag: '\u{1F1F8}\u{1F1F2}', 
      prefix: '378',
    )
  ),
  id678( 
    CountryCode(
      id: '678',
      alpha2: 'ST',
      alpha3: 'STP',
      officialName: 'Sao Tome And Principe', 
      uFlag: '\u{1F1F8}\u{1F1F9}', 
      prefix: '239',
    )
  ),
  id682( 
    CountryCode(
      id: '682',
      alpha2: 'SA',
      alpha3: 'SAU',
      officialName: 'Saudi Arabia', 
      uFlag: '\u{1F1F8}\u{1F1E6}',
      prefix: '966',
    )
  ),
  id686( 
    CountryCode(
      id: '686',
      alpha2: 'SN',
      alpha3: 'SEN',
      officialName: 'Senegal', 
      uFlag: '\u{1F1F8}\u{1F1F3}', 
      prefix: '221',
    )
  ),
  id688( 
    CountryCode(
      id: '688',
      alpha2: 'RS',
      alpha3: 'SRB',
      officialName: 'Serbia', 
      uFlag: '\u{1F1F7}\u{1F1F8}', 
      prefix: '381',
    )
  ),
  id690( 
    CountryCode(
      id: '690',
      alpha2: 'SC',
      alpha3: 'SYC',
      officialName: 'Seychelles', 
      uFlag: '\u{1F1F8}\u{1F1E8}', 
      prefix: '248',
    )
  ),
  id694( 
    CountryCode(
      id: '694',
      alpha2: 'SL',
      alpha3: 'SLE',
      officialName: 'Sierra Leone', 
      uFlag: '\u{1F1F8}\u{1F1F1}', 
      prefix: '232',
    )
  ),
  id702( 
    CountryCode(
      id: '702',
      alpha2: 'SG',
      alpha3: 'SGP',
      officialName: 'Singapore', 
      uFlag: '\u{1F1F8}\u{1F1EC}',
      prefix: '65',
    )
  ),
  id703( 
    CountryCode(
      id: '703',
      alpha2: 'SK',
      alpha3: 'SVK',
      officialName: 'Slovakia', 
      uFlag: '\u{1F1F8}\u{1F1F0}', 
      prefix: '421',
    )
  ),
  // Socialist Republic of Viet Nam
  id704( 
    CountryCode(
      id: '704',
      alpha2: 'VN',
      alpha3: 'VNM',
      officialName: 'Viet Nam', 
      uFlag: '\u{1F1FB}\u{1F1F3}', 
      prefix: '84',
    )
  ),
  id705( 
    CountryCode(
      id: '705',
      alpha2: 'SI',
      alpha3: 'SVN',
      officialName: 'Slovenia', 
      uFlag: '\u{1F1F8}\u{1F1EE}', 
      prefix: '386',
    )
  ),
  id706( 
    CountryCode(
      id: '706',
      alpha2: 'SO',
      alpha3: 'SOM',
      officialName: 'Somalia', 
      uFlag: '\u{1F1F8}\u{1F1F4}', 
      prefix: '252',
    )
  ),
  id710( 
    CountryCode(
      id: '710',
      alpha2: 'ZA',
      alpha3: 'ZAF',
      officialName: 'South Africa', 
      uFlag: '\u{1F1FF}\u{1F1E6}', 
      prefix: '27',
    )
  ),
  id716( 
    CountryCode(
      id: '716',
      alpha2: 'ZW',
      alpha3: 'ZWE',
      officialName: 'Zimbabwe', 
      uFlag: '\u{1F1FF}\u{1F1FC}', 
      prefix: '263',
    )
  ),
  id724( 
    CountryCode(
      id: '724',
      alpha2: 'ES',
      alpha3: 'ESP',
      officialName: 'Spain', 
      uFlag: '\u{1F1EA}\u{1F1F8}', 
      prefix: '34',
    )
  ),
  id728( 
    CountryCode(
      id: '728',
      alpha2: 'SS',
      alpha3: 'SSD',
      officialName: 'South Sudan', 
      uFlag: '\u{1F1F8}\u{1F1F8}', 
      prefix: '211',
    )
  ),
  id729( 
    CountryCode(
      id: '729',
      alpha2: 'SD',
      alpha3: 'SDN',
      officialName: 'Sudan', 
      uFlag: '\u{1F1F8}\u{1F1E9}', 
      prefix: '249',
    )
  ),
  id732( 
    CountryCode(
      id: '732',
      alpha2: 'EH',
      alpha3: 'ESH',
      officialName: 'Western Sahara', 
      uFlag: '\u{1F1EA}\u{1F1ED}', 
      prefix: '212',
    )
  ),
  id740( 
    CountryCode(
      id: '740',
      alpha2: 'SR',
      alpha3: 'SUR',
      officialName: 'Suriname', 
      uFlag: '\u{1F1F8}\u{1F1F7}', 
      prefix: '597',
    )
  ),
  id744( 
    CountryCode(
      id: '744',
      alpha2: 'SJ',
      alpha3: 'SJM',
      officialName: 'Svalbard And Jan Mayen', 
      uFlag: '\u{1F1F8}\u{1F1EF}', 
      prefix: '47',
    )
  ),
  id748( 
    CountryCode(
      id: '748',
      alpha2: 'SZ',
      alpha3: 'SWZ',
      officialName: 'Eswatini', 
      uFlag: '\u{1F1F8}\u{1F1FF}', 
      prefix: '268',
    )
  ),
  id752( 
    CountryCode(
      id: '752',
      alpha2: 'SE',
      alpha3: 'SWE',
      officialName: 'Sweden', 
      uFlag: '\u{1F1F8}\u{1F1EA}', 
      prefix: '46',
    )
  ),
  id756( 
    CountryCode(
      id: '756',
      alpha2: 'CH',
      alpha3: 'CHE',
      officialName: 'Switzerland', 
      uFlag: '\u{1F1E8}\u{1F1ED}', 
      prefix: '41',
    )
  ),
  id760( 
    CountryCode(
      id: '760',
      alpha2: 'SY',
      alpha3: 'SYR',
      officialName: 'Syrian Arab Republic', 
      uFlag: '\u{1F1F8}\u{1F1FE}', 
      prefix: '963',
    )
  ),
  id762( 
    CountryCode(
      id: '762',
      alpha2: 'TJ',
      alpha3: 'TJK',
      officialName: 'Tajikistan', 
      uFlag: '\u{1F1F9}\u{1F1EF}', 
      prefix: '992',
    )
  ),
  id764( 
    CountryCode(
      id: '764',
      alpha2: 'TH',
      alpha3: 'THA',
      officialName: 'Thailand', 
      uFlag: '\u{1F1F9}\u{1F1ED}', 
      prefix: '66',
    )
  ),
  id768( 
    CountryCode(
      id: '768',
      alpha2: 'TG',
      alpha3: 'TGO',
      officialName: 'Togo', 
      uFlag: '\u{1F1F9}\u{1F1EC}', 
      prefix: '228',
    )
  ),
  id772( 
    CountryCode(
      id: '772',
      alpha2: 'TK',
      alpha3: 'TKL',
      officialName: 'Tokelau', 
      uFlag: '\u{1F1F9}\u{1F1F0}', 
      prefix: '690',
    )
  ),
  id776( 
    CountryCode(
      id: '776',
      alpha2: 'TO',
      alpha3: 'TON',
      officialName: 'Tonga', 
      uFlag: '\u{1F1F9}\u{1F1F4}', 
      prefix: '676',
    )
  ),
  id780( 
    CountryCode(
      id: '780',
      alpha2: 'TT',
      alpha3: 'TTO',
      officialName: 'Trinidad And Tobago', 
      uFlag: '\u{1F1F9}\u{1F1F9}', 
      prefix: '1-868',
    )
  ),
  id784( 
    CountryCode(
      id: '784',
      alpha2: 'AE',
      alpha3: 'ARE',
      officialName: 'United Arab Emirates', 
      uFlag: '\u{1F1E6}\u{1F1EA}', 
      prefix: '971',
    )
  ),
  id788( 
    CountryCode(
      id: '788',
      alpha2: 'TN',
      alpha3: 'TUN',
      officialName: 'Tunisia', 
      uFlag: '\u{1F1F9}\u{1F1F3}', 
      prefix: '216',
    )
  ),
  id792( 
    CountryCode(
      id: '792',
      alpha2: 'TR',
      alpha3: 'TUR',
      officialName: 'Turkey', 
      uFlag: '\u{1F1F9}\u{1F1F7}', 
      prefix: '90',
    )
  ),
  id795( 
    CountryCode(
      id: '795',
      alpha2: 'TM',
      alpha3: 'TKM',
      officialName: 'Turkmenistan', 
      uFlag: '\u{1F1F9}\u{1F1F2}', 
      prefix: '993',
    )
  ),
  id796( 
    CountryCode(
      id: '796',
      alpha2: 'TC',
      alpha3: 'TCA',
      officialName: 'Turks And Caicos Islands', 
      uFlag: '\u{1F1F9}\u{1F1E8}', 
      prefix: '1-649',
    )
  ),
  id798( 
    CountryCode(
      id: '798',
      alpha2: 'TV',
      alpha3: 'TUV',
      officialName: 'Tuvalu', 
      uFlag: '\u{1F1F9}\u{1F1FB}', 
      prefix: '688',
    )
  ),
  id800( 
    CountryCode(
      id: '800',
      alpha2: 'UG',
      alpha3: 'UGA',
      officialName: 'Uganda', 
      uFlag: '\u{1F1FA}\u{1F1EC}', 
      prefix: '256',
    )
  ),
  id804( 
    CountryCode(
      id: '804',
      alpha2: 'UA',
      alpha3: 'UKR',
      officialName: 'Ukraine', 
      uFlag: '\u{1F1FA}\u{1F1E6}', 
      prefix: '380',
    )
  ),
  id807( 
    CountryCode(
      id: '807',
      alpha2: 'MK',
      alpha3: 'MKD',
      officialName: 'North Macedonia', 
      uFlag: '\u{1F1F2}\u{1F1F0}', 
      prefix: '389',
    )
  ),
  id818( 
    CountryCode(
      id: '818',
      alpha2: 'EG',
      alpha3: 'EGY',
      officialName: 'Egypt', 
      uFlag: '\u{1F1EA}\u{1F1EC}', 
      prefix: '20',
    )
  ),
  id826( 
    CountryCode(
      id: '826',
      alpha2: 'GB',
      alpha3: 'GBR',
      officialName: 'United Kingdom Of Great British And Northern Ireland', 
      uFlag: '\u{1F1EC}\u{1F1E7}', 
      prefix: '44',
    )
  ),
  id831(CountryCode(
      id: '831',
      alpha2: 'GG',
      alpha3: 'GGY',
      officialName: 'Guernsey', 
      uFlag: '\u{1F1EC}\u{1F1EC}', prefix: '44-1481',
    )
  ),
  id832( 
    CountryCode(
      id: '832',
      alpha2: 'JE',
      alpha3: 'JEY',
      officialName: 'Jersey', 
      uFlag: '\u{1F1EF}\u{1F1EA}', 
      prefix: '44-1534',
    )
  ),
  id833( 
    CountryCode(
      id: '833',
      alpha2: 'IM',
      alpha3: 'IMN',
      officialName: 'Isle Of Man', 
      uFlag: '\u{1F1EE}\u{1F1F2}', 
      prefix: '44-1624',
    )
  ),
  id834( 
    CountryCode(
      id: '834',
      alpha2: 'TZ',
      alpha3: 'TZA',
      officialName: 'United Republic Of Tanzania', 
      uFlag: '\u{1F1F9}\u{1F1FF}', 
      prefix: '255',
    )
  ),
  id840( 
    CountryCode(
      id: '840',
      alpha2: 'US',
      alpha3: 'USA',
      officialName: 'United States Of America', 
      uFlag: '\u{1F1FA}\u{1F1F8}', 
      prefix: '1',
    )
  ),
  id850( 
    CountryCode(
      id: '850',
      alpha2: 'VI',
      alpha3: 'VIR',
      officialName: 'United States Virgin Islands', 
      uFlag: '\u{1F1FB}\u{1F1EE}', 
      prefix: '1-340',
    )
  ),
  id854( 
    CountryCode(
      id: '854',
      alpha2: 'BF',
      alpha3: 'BFA',
      officialName: 'Burkina Faso', 
      uFlag: '\u{1F1E7}\u{1F1EB}', 
      prefix: '226',
    )
  ),
  id858( 
    CountryCode(
      id: '858',
      alpha2: 'UY',
      alpha3: 'URY',
      officialName: 'Uruguay', 
      uFlag: '\u{1F1FA}\u{1F1FE}', 
      prefix: '598',
    )
  ),
  id860( 
    CountryCode(
      id: '860',
      alpha2: 'UZ',
      alpha3: 'UZB',
      officialName: 'Uzbekistan', 
      uFlag: '\u{1F1FA}\u{1F1FF}', 
      prefix: '998',
    )
  ),
  id862( 
    CountryCode(
      id: '862',
      alpha2: 'VE',
      alpha3: 'VEN',
      officialName: 'Venezuela', 
      uFlag: '\u{1F1FB}\u{1F1EA}', 
      prefix: '58',
    )
  ),
  id876( 
    CountryCode(
      id: '876',
      alpha2: 'WF',
      alpha3: 'WLF',
      officialName: 'Wallis And Futuna', 
      uFlag: '\u{1F1FC}\u{1F1EB}', 
      prefix: '681',
    )
  ),
  id882( 
    CountryCode(
      id: '882',
      alpha2: 'WS',
      alpha3: 'WSM',
      officialName: 'Samoa', 
      uFlag: '\u{1F1FC}\u{1F1F8}', 
      prefix: '685',
    )
  ),
  id887( 
    CountryCode(
      id: '887',
      alpha2: 'YE',
      alpha3: 'YEM',
      officialName: 'Yemen', 
      uFlag: '\u{1F1FE}\u{1F1EA}', 
      prefix: '967',
    )
  ),
  id894( 
    CountryCode(
      id: '894',
      alpha2: 'ZM',
      alpha3: 'ZMB',
      officialName: 'Zambia', 
      uFlag: '\u{1F1FF}\u{1F1F2}', 
      prefix: '260',
    ));
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
        element.code.id.toLowerCase() == id.toLowerCase());
  }
static EnumCountryCode byAlpha2(String alpha2) {
    return EnumCountryCode.values
      .firstWhere((element) => 
        element.code.alpha2.toLowerCase() == alpha2.toLowerCase());
  }
static EnumCountryCode byAlpha3(String alpha3) {
    return EnumCountryCode.values
      .firstWhere((element) => 
        element.code.alpha3.toLowerCase() == alpha3.toLowerCase());
  }
static EnumCountryCode? byIdOrNull(String id) {
    return EnumCountryCode.values
      .firstWhereOrNull((element) => 
        element.code.id.toLowerCase() == id.toLowerCase());
  }
static EnumCountryCode? byAlpha2OrNull(String alpha2) {
    return EnumCountryCode.values
      .firstWhereOrNull((element) => 
        element.code.alpha2.toLowerCase() == alpha2.toLowerCase());
  }
static EnumCountryCode? byAlpha3OrNull(String alpha3) {
    return EnumCountryCode.values
      .firstWhereOrNull((element) => 
        element.code.alpha3.toLowerCase() == alpha3.toLowerCase());
  }
static List<CountryCode> codes = EnumCountryCode.values
    .map((e) => e.code).toList();
  final CountryCode code;
  const EnumCountryCode(this.code);
}


enum EnumCountryCodeScope {
  alpha2, 
  alpha3, 
  id, 
  name
}