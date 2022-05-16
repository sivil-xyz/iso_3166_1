import 'package:iso_3166_1/iso_3166_1.dart';

enum EnumLanguage {
    afrikaans,
    albanian,
    amharic,
    arabic,
    armenian,
    azeri,
    basque,
    belarusian,
    bengali,
    bosnian,
    bulgarian,
    burmese,
    cambodian,
    catalan,
    cebuano,
    chichewa,
    chinese,
    corsican,
    croatian,
    czech,
    danish,
    dutch,
    english,
    esperanto,
    estonian,
    filipino,
    finnish,
    french,
    frisian,
    gaelic,
    galician,
    georgian,
    german,
    greek,
    gujarati,
    haitian,
    hausa,
    hawaiian,
    hebrew,
    hindi,
    hmong,
    hungarian,
    icelandic,
    igbo,
    indonesian,
    irish,
    italian,
    japanese,
    javanese,
    kannada,
    kazakh,
    kinyarwanda,
    korean,
    kurdish,
    kyrgyz,
    lao,
    laotian,
    latvian,
    lithuanian,
    luxembourguish,
    macedonian,
    malagasy,
    malay,
    malayalam,
    malaysian,
    maltese,
    mandarin,
    maori,
    marathi,
    mongolian,
    nepali,
    norwegian,
    oriya,
    pashto,
    persian,
    polish,
    portuguese,
    punjabi,
    romanian,
    russian,
    samoan,
    scottish,
    serbian,
    sesotho,
    shona,
    sindhi,
    sinhala,
    sinhalese,
    slovak,
    slovenian,
    somali,
    spanish,
    swahili,
    swedish,
    tagalog,
    tajik,
    tamil,
    tartar,
    telugu,
    thai,
    turkish,
    turkmen,
    ukrainian,
    urdu,
    uyghur,
    uzbek,
    vietnamese,
    welsh,
    xhosa,
    yoruba,
    zulu;

  Map<EnumCountryName, CountryCode> get countries {
    switch(this) {
      case EnumLanguage.afrikaans:
        return {
          EnumCountryName.namibia : EnumCountryName.namibia.code,
          EnumCountryName.southAfrica : EnumCountryName.southAfrica.code,
          EnumCountryName.botswana : EnumCountryName.botswana.code,
        };
      case EnumLanguage.albanian: 
        return {
          EnumCountryName.albania : EnumCountryName.albania.code,
          EnumCountryName.greece : EnumCountryName.greece.code,
          EnumCountryName.italy : EnumCountryName.italy.code,
          EnumCountryName.montenegro : EnumCountryName.montenegro.code,
          EnumCountryName.northMacedonia : EnumCountryName.northMacedonia.code,
          EnumCountryName.serbia : EnumCountryName.serbia.code,
          EnumCountryName.romania : EnumCountryName.romania.code,  
        };
      case EnumLanguage.amharic: 
        return {
          EnumCountryName.ethiopia : EnumCountryName.ethiopia.code,
        };
      case EnumLanguage.arabic: 
        return {
          EnumCountryName.egypt : EnumCountryName.egypt.code,
          EnumCountryName.algeria : EnumCountryName.algeria.code,
          EnumCountryName.sudan : EnumCountryName.sudan.code,
          EnumCountryName.iraq : EnumCountryName.iraq.code,
          EnumCountryName.morocco : EnumCountryName.morocco.code,
          EnumCountryName.saudiArabia : EnumCountryName.saudiArabia.code,
          EnumCountryName.yemen : EnumCountryName.yemen.code,
          EnumCountryName.syrianArabRepublic : EnumCountryName.syrianArabRepublic.code,
          EnumCountryName.tunisia : EnumCountryName.tunisia.code,
          EnumCountryName.somalia : EnumCountryName.somalia.code,
          EnumCountryName.chad : EnumCountryName.chad.code,
          EnumCountryName.unitedArabEmirates : EnumCountryName.unitedArabEmirates.code,
          EnumCountryName.jordan : EnumCountryName.jordan.code,
          EnumCountryName.eritrea : EnumCountryName.eritrea.code,
          EnumCountryName.libya : EnumCountryName.libya.code,
          EnumCountryName.lebanon : EnumCountryName.lebanon.code,
          EnumCountryName.palestine : EnumCountryName.palestine.code,
          EnumCountryName.oman : EnumCountryName.oman.code,
          EnumCountryName.mauritania : EnumCountryName.mauritania.code,
          EnumCountryName.kuwait : EnumCountryName.kuwait.code,
          EnumCountryName.qatar : EnumCountryName.qatar.code,
          EnumCountryName.bahrain : EnumCountryName.bahrain.code,
          EnumCountryName.tanzaniaUnitedRepublicOf : EnumCountryName.tanzaniaUnitedRepublicOf.code,
          EnumCountryName.djibouti : EnumCountryName.djibouti.code,
          EnumCountryName.comoros : EnumCountryName.comoros.code,
        };
      case EnumLanguage.armenian: 
        return {
          EnumCountryName.armenia : EnumCountryName.armenia.code, 
        };
      case EnumLanguage.azeri: 
        return {
          EnumCountryName.azerbaijan : EnumCountryName.azerbaijan.code,
        };
      case EnumLanguage.basque: 
        return {
          EnumCountryName.spain : EnumCountryName.spain.code,
        };
      case EnumLanguage.belarusian: 
        return {
          EnumCountryName.belarus : EnumCountryName.belarus.code,
          EnumCountryName.poland : EnumCountryName.poland.code,
          EnumCountryName.czechia : EnumCountryName.czechia.code,
          EnumCountryName.russianFederation : EnumCountryName.russianFederation.code,
          EnumCountryName.ukraine : EnumCountryName.ukraine.code,
        };
      case EnumLanguage.bengali: 
        return {
          EnumCountryName.bangladesh : EnumCountryName.bangladesh.code,
          EnumCountryName.india : EnumCountryName.india.code,
        };
      case EnumLanguage.bosnian: 
        return {
          EnumCountryName.bosniaAndHerzegovina : 
          EnumCountryName.bosniaAndHerzegovina.code,
          EnumCountryName.montenegro : EnumCountryName.montenegro.code,
          EnumCountryName.serbia : EnumCountryName.serbia.code,
          EnumCountryName.croatia : EnumCountryName.croatia.code,
          EnumCountryName.northMacedonia : EnumCountryName.northMacedonia.code,
          EnumCountryName.slovenia : EnumCountryName.slovenia.code,
        };
      case EnumLanguage.bulgarian: 
        return {
          EnumCountryName.bulgaria : EnumCountryName.bulgaria.code,
          EnumCountryName.albania : EnumCountryName.albania.code,
          EnumCountryName.greece : EnumCountryName.greece.code,
          EnumCountryName.romania : EnumCountryName.romania.code,
          EnumCountryName.northMacedonia : EnumCountryName.northMacedonia.code,
          EnumCountryName.moldovaRepublicOf : EnumCountryName.moldovaRepublicOf.code,
          EnumCountryName.serbia : EnumCountryName.serbia.code,
          EnumCountryName.turkey : EnumCountryName.turkey.code,
          EnumCountryName.ukraine : EnumCountryName.ukraine.code,
        };
      case EnumLanguage.burmese: 
        return {
          EnumCountryName.myanmar : EnumCountryName.myanmar.code,
        };
      case EnumLanguage.cambodian: 
        return {
          EnumCountryName.cambodia : EnumCountryName.cambodia.code,
          EnumCountryName.thailand : EnumCountryName.thailand.code,
          EnumCountryName.vietNam : EnumCountryName.vietNam.code,
        };
      case EnumLanguage.catalan: 
        return {
          EnumCountryName.spain : EnumCountryName.spain.code,
        };
      case EnumLanguage.cebuano: 
        return {
          EnumCountryName.philippines : EnumCountryName.philippines.code,
        };
      case EnumLanguage.chichewa: 
        return {
          EnumCountryName.malawi : EnumCountryName.malawi.code,
          EnumCountryName.mozambique : EnumCountryName.mozambique.code,
          EnumCountryName.zambia : EnumCountryName.zambia.code,
          EnumCountryName.zimbabwe : EnumCountryName.zimbabwe.code,
        };
      case EnumLanguage.chinese: 
        return {
          EnumCountryName.china : EnumCountryName.china.code,
          EnumCountryName.singapore : EnumCountryName.singapore.code,
          EnumCountryName.taiwan : EnumCountryName.taiwan.code,
          EnumCountryName.hongKong : EnumCountryName.hongKong.code,
          EnumCountryName.macao : EnumCountryName.macao.code,
        };
      case EnumLanguage.corsican: 
        return {
          EnumCountryName.france : EnumCountryName.france.code,
          EnumCountryName.italy : EnumCountryName.italy.code,
        };
      case EnumLanguage.croatian: 
        return {
          EnumCountryName.croatia : EnumCountryName.croatia.code,
          EnumCountryName.bosniaAndHerzegovina : EnumCountryName.bosniaAndHerzegovina.code,
          EnumCountryName.serbia : EnumCountryName.serbia.code,
          EnumCountryName.montenegro : EnumCountryName.montenegro.code,
          EnumCountryName.romania : EnumCountryName.romania.code,
        };
      case EnumLanguage.czech: 
        return {
          EnumCountryName.czechia : EnumCountryName.czechia.code,
        };
      case EnumLanguage.danish: 
        return {
          EnumCountryName.denmark : EnumCountryName.denmark.code,
        };
      case EnumLanguage.dutch: 
        return {
          EnumCountryName.denmark : EnumCountryName.denmark.code,
          EnumCountryName.germany : EnumCountryName.germany.code,
          EnumCountryName.faroeIslands : EnumCountryName.faroeIslands.code,
          EnumCountryName.greenland : EnumCountryName.greenland.code,
        };
      case EnumLanguage.english: 
        return {
          EnumCountryName.unitedKingdomOfGreatBritrainAndNorthernIreland : 
          EnumCountryName.unitedKingdomOfGreatBritrainAndNorthernIreland.code,
          EnumCountryName.unitedStatesOfAmerica : EnumCountryName.unitedStatesOfAmerica.code,
          EnumCountryName.australia : EnumCountryName.australia.code,
          EnumCountryName.newZealand : EnumCountryName.newZealand.code,
          EnumCountryName.ireland : EnumCountryName.ireland.code,
          EnumCountryName.canada : EnumCountryName.canada.code,
          EnumCountryName.nigeria : EnumCountryName.nigeria.code,
          EnumCountryName.ghana : EnumCountryName.ghana.code,
          EnumCountryName.fiji : EnumCountryName.fiji.code,
          EnumCountryName.singapore : EnumCountryName.singapore.code,
          EnumCountryName.kenya : EnumCountryName.kenya.code,
          EnumCountryName.southAfrica : EnumCountryName.southAfrica.code,
          EnumCountryName.malawi : EnumCountryName.malawi.code,
          EnumCountryName.zambia : EnumCountryName.zambia.code,
          EnumCountryName.southSudan : EnumCountryName.southSudan.code,
          EnumCountryName.papuaNewGuinea : EnumCountryName.papuaNewGuinea.code,
          EnumCountryName.sierraLeone : EnumCountryName.sierraLeone.code,
          EnumCountryName.liberia : EnumCountryName.liberia.code,
          EnumCountryName.jamaica : EnumCountryName.jamaica.code,
          EnumCountryName.botswana : EnumCountryName.botswana.code,
          EnumCountryName.gambia : EnumCountryName.gambia.code,
          EnumCountryName.trinidadAndTobago : EnumCountryName.trinidadAndTobago.code,
          EnumCountryName.guyana : EnumCountryName.guyana.code,
          EnumCountryName.solomonIslands : EnumCountryName.solomonIslands.code,
          EnumCountryName.bahamas : EnumCountryName.bahamas.code,
          EnumCountryName.barbados : EnumCountryName.barbados.code,
          EnumCountryName.belize : EnumCountryName.belize.code,
          EnumCountryName.saintLucia : EnumCountryName.saintLucia.code,
          EnumCountryName.saintVincentAndTheGrenadines : 
            EnumCountryName.saintVincentAndTheGrenadines.code,
          EnumCountryName.micronesiaFederatedStatesOf : EnumCountryName.micronesiaFederatedStatesOf.code,
          EnumCountryName.antiguaAndBarbuda : EnumCountryName.antiguaAndBarbuda.code,
          EnumCountryName.dominica : EnumCountryName.dominica.code,
          EnumCountryName.saintKittsAndNevis : EnumCountryName.saintKittsAndNevis.code,
          EnumCountryName.zimbabwe : EnumCountryName.zimbabwe.code,
          EnumCountryName.namibia : EnumCountryName.namibia.code,
          EnumCountryName.india : EnumCountryName.india.code,
          EnumCountryName.nauru : EnumCountryName.nauru.code,
          EnumCountryName.malta : EnumCountryName.malta.code,
          EnumCountryName.pakistan : EnumCountryName.pakistan.code,
          EnumCountryName.philippines : EnumCountryName.philippines.code,
          EnumCountryName.bahrain : EnumCountryName.bahrain.code,
          EnumCountryName.bangladesh : EnumCountryName.bangladesh.code,
          EnumCountryName.bruneiDarussalam : EnumCountryName.bruneiDarussalam.code,
          EnumCountryName.cambodia : EnumCountryName.cambodia.code,
          EnumCountryName.cyprus : EnumCountryName.cyprus.code,
          EnumCountryName.eritrea : EnumCountryName.eritrea.code,
          EnumCountryName.ethiopia : EnumCountryName.ethiopia.code,
          EnumCountryName.israel : EnumCountryName.israel.code,
          EnumCountryName.jordan : EnumCountryName.jordan.code,
          EnumCountryName.kuwait : EnumCountryName.kuwait.code,
          EnumCountryName.malaysia : EnumCountryName.malaysia.code,
          EnumCountryName.maldives : EnumCountryName.maldives.code,
          EnumCountryName.mauritius : EnumCountryName.mauritius.code,
          EnumCountryName.myanmar : EnumCountryName.myanmar.code,
          EnumCountryName.oman : EnumCountryName.oman.code,
          EnumCountryName.qatar : EnumCountryName.qatar.code,
          EnumCountryName.rwanda : EnumCountryName.rwanda.code,
          EnumCountryName.sriLanka : EnumCountryName.sriLanka.code,
          EnumCountryName.uganda : EnumCountryName.uganda.code,
          EnumCountryName.unitedArabEmirates : EnumCountryName.unitedArabEmirates.code,
        };
      case EnumLanguage.esperanto: 
        return Map.fromIterables(
          EnumCountryName.values, EnumCountryCode.codes
        );
      case EnumLanguage.estonian: 
        return {
          EnumCountryName.estonia : EnumCountryName.estonia.code,
        };
      case EnumLanguage.filipino: 
        return {
          EnumCountryName.philippines : EnumCountryName.philippines.code,
        };
      case EnumLanguage.finnish: 
        return {
          EnumCountryName.finland : EnumCountryName.finland.code,
          EnumCountryName.sweden : EnumCountryName.sweden.code,
          EnumCountryName.norway : EnumCountryName.norway.code,
          EnumCountryName.russianFederation : EnumCountryName.russianFederation.code,
        };
      case EnumLanguage.french: 
        return {
          EnumCountryName.france : EnumCountryName.france.code,
          EnumCountryName.canada : EnumCountryName.canada.code,
          EnumCountryName.belgium : EnumCountryName.belgium.code,
          EnumCountryName.switzerland : EnumCountryName.switzerland.code,
          EnumCountryName.benin : EnumCountryName.benin.code,
          EnumCountryName.burkinaFaso : EnumCountryName.burkinaFaso.code,
          EnumCountryName.congo : EnumCountryName.congo.code,
          EnumCountryName.congoDemocraticRepublic : 
            EnumCountryName.congoDemocraticRepublic.code,
          EnumCountryName.coteDIvoire : EnumCountryName.coteDIvoire.code,
          EnumCountryName.gabon : EnumCountryName.gabon.code,
          EnumCountryName.guinea : EnumCountryName.guinea.code,
          EnumCountryName.mali : EnumCountryName.mali.code,
          EnumCountryName.monaco : EnumCountryName.monaco.code,
          EnumCountryName.niger : EnumCountryName.niger.code,
          EnumCountryName.senegal : EnumCountryName.senegal.code,
          EnumCountryName.togo : EnumCountryName.togo.code,
          EnumCountryName.burundi : EnumCountryName.burundi.code,
          EnumCountryName.cameroon : EnumCountryName.cameroon.code,
          EnumCountryName.chad : EnumCountryName.chad.code,
          EnumCountryName.centralAfricanRepublic : EnumCountryName.centralAfricanRepublic.code,
          EnumCountryName.comoros : EnumCountryName.comoros.code,
          EnumCountryName.djibouti : EnumCountryName.djibouti.code,
          EnumCountryName.equatorialGuinea : EnumCountryName.equatorialGuinea.code,
          EnumCountryName.haiti : EnumCountryName.haiti.code,
          EnumCountryName.luxembourg : EnumCountryName.luxembourg.code,
          EnumCountryName.madagascar : EnumCountryName.madagascar.code,
          EnumCountryName.rwanda : EnumCountryName.rwanda.code,
          EnumCountryName.seychelles : EnumCountryName.seychelles.code,
          EnumCountryName.vanuatu : EnumCountryName.vanuatu.code,
          EnumCountryName.guernsey : EnumCountryName.guernsey.code,
          EnumCountryName.lebanon : EnumCountryName.lebanon.code,
          EnumCountryName.mauritius : EnumCountryName.mauritius.code,
          EnumCountryName.holySee : EnumCountryName.holySee.code,
        };
      case EnumLanguage.frisian: 
        return {
          EnumCountryName.netherlands : EnumCountryName.netherlands.code,
          EnumCountryName.germany : EnumCountryName.germany.code,
        };
      case EnumLanguage.gaelic: 
        return {
          EnumCountryName.ireland : EnumCountryName.ireland.code,
        };
      case EnumLanguage.galician: 
        return {
          EnumCountryName.spain : EnumCountryName.spain.code, 
        };
      case EnumLanguage.georgian: 
        return {
          EnumCountryName.georgia : EnumCountryName.georgia.code,
        };
      case EnumLanguage.german: 
        return {
          EnumCountryName.germany : EnumCountryName.germany.code,
          EnumCountryName.belgium : EnumCountryName.belgium.code,
          EnumCountryName.austria : EnumCountryName.austria.code,
          EnumCountryName.switzerland : EnumCountryName.switzerland.code,
          EnumCountryName.luxembourg : EnumCountryName.luxembourg.code,
          EnumCountryName.liechtenstein : EnumCountryName.liechtenstein.code,
          EnumCountryName.brazil : EnumCountryName.brazil.code,
          EnumCountryName.czechia : EnumCountryName.czechia.code,
          EnumCountryName.denmark : EnumCountryName.denmark.code,
          EnumCountryName.hungary : EnumCountryName.hungary.code,
          EnumCountryName.namibia : EnumCountryName.namibia.code,
          EnumCountryName.poland : EnumCountryName.poland.code,
          EnumCountryName.romania : EnumCountryName.romania.code,
          EnumCountryName.russianFederation : EnumCountryName.russianFederation.code,
          EnumCountryName.slovakia : EnumCountryName.slovakia.code,
        };
      case EnumLanguage.greek: 
        return {
          EnumCountryName.greece : EnumCountryName.greece.code,
          EnumCountryName.cyprus : EnumCountryName.cyprus.code,
        };
      case EnumLanguage.gujarati: 
        return {
          EnumCountryName.india : EnumCountryName.india.code,
        };
      case EnumLanguage.haitian: 
        return {
           EnumCountryName.haiti : EnumCountryName.haiti.code,
        };
      case EnumLanguage.hausa: 
        return {
          EnumCountryName.niger : EnumCountryName.niger.code,
          EnumCountryName.nigeria : EnumCountryName.nigeria.code,
          EnumCountryName.cameroon : EnumCountryName.cameroon.code,
          EnumCountryName.benin : EnumCountryName.benin.code,
          EnumCountryName.chad : EnumCountryName.chad.code,
          EnumCountryName.ghana : EnumCountryName.ghana.code, 
        };
      case EnumLanguage.hawaiian: 
        return {
          EnumCountryName.unitedStatesOfAmerica : EnumCountryName.unitedStatesOfAmerica.code,
        };
      case EnumLanguage.hebrew: 
        return {
          EnumCountryName.israel : EnumCountryName.israel.code,
          EnumCountryName.poland : EnumCountryName.poland.code,
          EnumCountryName.southAfrica : EnumCountryName.southAfrica.code,
        };
      case EnumLanguage.hindi: 
        return {
          EnumCountryName.india : EnumCountryName.india.code,
          EnumCountryName.southAfrica : EnumCountryName.southAfrica.code,
          EnumCountryName.unitedArabEmirates : EnumCountryName.unitedArabEmirates.code, 
        };
      case EnumLanguage.hmong: 
        return {
          EnumCountryName.china : EnumCountryName.china.code,
          EnumCountryName.vietNam : EnumCountryName.vietNam.code,
          EnumCountryName.laoPeoplesDemocraticRepublic : 
            EnumCountryName.laoPeoplesDemocraticRepublic.code,
          EnumCountryName.myanmar : EnumCountryName.myanmar.code,
          EnumCountryName.thailand : EnumCountryName.thailand.code,
        };
      case EnumLanguage.hungarian: 
        return {
          EnumCountryName.hungary : EnumCountryName.hungary.code,
          EnumCountryName.romania : EnumCountryName.romania.code,
          EnumCountryName.serbia : EnumCountryName.serbia.code,
          EnumCountryName.croatia : EnumCountryName.croatia.code,
          EnumCountryName.slovakia : EnumCountryName.slovakia.code,
          EnumCountryName.slovenia : EnumCountryName.slovenia.code,
          EnumCountryName.austria : EnumCountryName.austria.code,
          EnumCountryName.ukraine : EnumCountryName.ukraine.code,
        };
      case EnumLanguage.icelandic: 
        return {
          EnumCountryName.iceland : EnumCountryName.iceland.code,
        };
      case EnumLanguage.igbo: 
        return {
          EnumCountryName.nigeria : EnumCountryName.nigeria.code,
          EnumCountryName.equatorialGuinea : EnumCountryName.equatorialGuinea.code,
          EnumCountryName.cameroon : EnumCountryName.cameroon.code, 
        };
      case EnumLanguage.indonesian: 
        return {
          EnumCountryName.indonesia : EnumCountryName.indonesia.code,
          EnumCountryName.timorLeste : EnumCountryName.timorLeste.code,
        };
      case EnumLanguage.irish: 
        return {
          EnumCountryName.ireland : EnumCountryName.ireland.code,
          EnumCountryName.unitedKingdomOfGreatBritrainAndNorthernIreland : 
            EnumCountryName.unitedKingdomOfGreatBritrainAndNorthernIreland.code,
        };
      case EnumLanguage.italian: 
        return {
          EnumCountryName.italy : EnumCountryName.italy.code,
          EnumCountryName.switzerland : EnumCountryName.switzerland.code,
          EnumCountryName.sanMarino : EnumCountryName.sanMarino.code,
          EnumCountryName.slovenia : EnumCountryName.slovenia.code,
          EnumCountryName.holySee : EnumCountryName.holySee.code,
          EnumCountryName.croatia : EnumCountryName.croatia.code,
        };
      case EnumLanguage.japanese: 
        return {
          EnumCountryName.japan : EnumCountryName.japan.code,
          EnumCountryName.palau : EnumCountryName.palau.code,
        };
      case EnumLanguage.javanese: 
        return {
          EnumCountryName.indonesia : EnumCountryName.indonesia.code,
        };
      case EnumLanguage.kannada: 
        return {
          EnumCountryName.india : EnumCountryName.india.code,
        };
      case EnumLanguage.kazakh: 
        return {
          EnumCountryName.kazakhstan : EnumCountryName.kazakhstan.code,
          EnumCountryName.china : EnumCountryName.china.code,
          EnumCountryName.cameroon : EnumCountryName.cameroon.code,
        };
      case EnumLanguage.kinyarwanda: 
        return {
          EnumCountryName.rwanda : EnumCountryName.rwanda.code,
          EnumCountryName.uganda : EnumCountryName.uganda.code,
          EnumCountryName.congoDemocraticRepublic : EnumCountryName.cameroon.code,
          EnumCountryName.tanzaniaUnitedRepublicOf : EnumCountryName.tanzaniaUnitedRepublicOf.code,
        };
      case EnumLanguage.korean: 
        return {
          EnumCountryName.koreaDemocraticPeoplesRepublicOf : 
          EnumCountryName.koreaDemocraticPeoplesRepublicOf.code,
          EnumCountryName.koreaRepublicOF : EnumCountryName.koreaRepublicOF.code,
          EnumCountryName.china : EnumCountryName.china.code,
          EnumCountryName.russianFederation : EnumCountryName.russianFederation.code, 
        };
      case EnumLanguage.kurdish: 
        return {
          EnumCountryName.turkey : EnumCountryName.turkey.code,
          EnumCountryName.iraq : EnumCountryName.iraq.code,
          EnumCountryName.iran : EnumCountryName.iran.code,
          EnumCountryName.syrianArabRepublic : EnumCountryName.syrianArabRepublic.code,
          EnumCountryName.armenia : EnumCountryName.armenia.code,
          EnumCountryName.azerbaijan : EnumCountryName.azerbaijan.code,
        };
      case EnumLanguage.kyrgyz: 
        return {
          EnumCountryName.kyrgyzstan : EnumCountryName.kyrgyzstan.code,
          EnumCountryName.afghanistan : EnumCountryName.afghanistan.code,
          EnumCountryName.tajikistan : EnumCountryName.tajikistan.code,
          EnumCountryName.pakistan : EnumCountryName.pakistan.code,
          EnumCountryName.china : EnumCountryName.china.code,
        };
      case EnumLanguage.lao: 
        return {
          EnumCountryName.laoPeoplesDemocraticRepublic : 
          EnumCountryName.laoPeoplesDemocraticRepublic.code,
          EnumCountryName.thailand : EnumCountryName.thailand.code,
          EnumCountryName.cambodia : EnumCountryName.cambodia.code,
        };
      case EnumLanguage.laotian: 
        return {
          EnumCountryName.laoPeoplesDemocraticRepublic : 
          EnumCountryName.laoPeoplesDemocraticRepublic.code,
          EnumCountryName.thailand : EnumCountryName.thailand.code,
          EnumCountryName.cambodia : EnumCountryName.cambodia.code,  
        };
      case EnumLanguage.latvian: 
        return {
          EnumCountryName.latvia : EnumCountryName.latvia.code,
        };
      case EnumLanguage.lithuanian: 
        return {
          EnumCountryName.lithuania : EnumCountryName.lithuania.code,
          EnumCountryName.poland : EnumCountryName.poland.code,  
        };
      case EnumLanguage.luxembourguish: 
        return {
          EnumCountryName.luxembourg : EnumCountryName.luxembourg.code,
          EnumCountryName.belgium : EnumCountryName.belgium.code,
          EnumCountryName.france : EnumCountryName.france.code,
          EnumCountryName.germany : EnumCountryName.germany.code,
        };
      case EnumLanguage.macedonian: 
        return {
          EnumCountryName.northMacedonia : EnumCountryName.northMacedonia.code,
          EnumCountryName.albania : EnumCountryName.albania.code,
          EnumCountryName.bulgaria : EnumCountryName.bulgaria.code,
          EnumCountryName.greece : EnumCountryName.greece.code,
          EnumCountryName.romania : EnumCountryName.romania.code,
          EnumCountryName.serbia : EnumCountryName.serbia.code,
        };
      case EnumLanguage.malagasy: 
        return {
          EnumCountryName.madagascar : EnumCountryName.madagascar.code,
        };
      case EnumLanguage.malay: 
        return {
          EnumCountryName.malaysia : EnumCountryName.malaysia.code,
          EnumCountryName.indonesia : EnumCountryName.indonesia.code,
          EnumCountryName.timorLeste : EnumCountryName.timorLeste.code,
          EnumCountryName.bruneiDarussalam : EnumCountryName.bruneiDarussalam.code,
          EnumCountryName.singapore : EnumCountryName.singapore.code,
          EnumCountryName.christmasIslands : EnumCountryName.christmasIslands.code,
          EnumCountryName.cocosIslands : EnumCountryName.cocosIslands.code,
        };
      case EnumLanguage.malayalam: 
        return {
          EnumCountryName.india : EnumCountryName.india.code,
        };
      case EnumLanguage.malaysian: 
        return {
          EnumCountryName.malaysia : EnumCountryName.malaysia.code,
        };
      case EnumLanguage.maltese: 
        return {
          EnumCountryName.malta : EnumCountryName.malta.code,
        };
      case EnumLanguage.mandarin: 
        return {
          EnumCountryName.china : EnumCountryName.china.code,
          EnumCountryName.taiwan : EnumCountryName.taiwan.code,
          EnumCountryName.singapore : EnumCountryName.singapore.code,
        };
      case EnumLanguage.maori: 
        return {
          EnumCountryName.newZealand : EnumCountryName.newZealand.code,
        };
      case EnumLanguage.marathi: 
        return {
          EnumCountryName.india : EnumCountryName.india.code,
        };
      case EnumLanguage.mongolian: 
        return {
          EnumCountryName.mongolia : EnumCountryName.mongolia.code,
          EnumCountryName.china : EnumCountryName.china.code,
        };
      case EnumLanguage.nepali: 
        return {
          EnumCountryName.nepal : EnumCountryName.nepal.code,
          EnumCountryName.india : EnumCountryName.india.code,
        };
      case EnumLanguage.norwegian: 
        return {
          EnumCountryName.norway : EnumCountryName.norway.code,
        };
      case EnumLanguage.oriya: 
        return {
          EnumCountryName.india : EnumCountryName.india.code,
        };
      case EnumLanguage.pashto: 
        return {
          EnumCountryName.afghanistan : EnumCountryName.afghanistan.code,
          EnumCountryName.pakistan : EnumCountryName.pakistan.code,
        };
      case EnumLanguage.persian: 
        return {
          EnumCountryName.iran : EnumCountryName.iran.code,
          EnumCountryName.afghanistan : EnumCountryName.afghanistan.code,
          EnumCountryName.tajikistan : EnumCountryName.tajikistan.code,
        };
      case EnumLanguage.polish: 
        return {
          EnumCountryName.poland : EnumCountryName.poland.code,
          EnumCountryName.germany : EnumCountryName.germany.code,
          EnumCountryName.czechia : EnumCountryName.czechia.code,
          EnumCountryName.slovakia : EnumCountryName.slovakia.code,
          EnumCountryName.hungary : EnumCountryName.hungary.code,
          EnumCountryName.lithuania : EnumCountryName.lithuania.code,
          EnumCountryName.latvia : EnumCountryName.latvia.code,
          EnumCountryName.ukraine : EnumCountryName.ukraine.code,
          EnumCountryName.belarus : EnumCountryName.belarus.code,
        };
      case EnumLanguage.portuguese: 
        return {
          EnumCountryName.portugal : EnumCountryName.portugal.code,
          EnumCountryName.brazil : EnumCountryName.brazil.code,
          EnumCountryName.angola : EnumCountryName.angola.code,
          EnumCountryName.mozambique : EnumCountryName.mozambique.code,
          EnumCountryName.guineaBissau : EnumCountryName.guineaBissau.code,
          EnumCountryName.timorLeste : EnumCountryName.timorLeste.code,
          EnumCountryName.equatorialGuinea : EnumCountryName.equatorialGuinea.code,
          EnumCountryName.macao : EnumCountryName.macao.code,
          EnumCountryName.caboVerde : EnumCountryName.caboVerde.code,
          EnumCountryName.saoTomeAndPrincipe : EnumCountryName.saoTomeAndPrincipe.code,
        };
      case EnumLanguage.punjabi: 
        return {
          EnumCountryName.india : EnumCountryName.india.code,
          EnumCountryName.pakistan : EnumCountryName.pakistan.code,
        };
      case EnumLanguage.romanian: 
        return {
          EnumCountryName.romania : EnumCountryName.romania.code,
          EnumCountryName.moldovaRepublicOf : EnumCountryName.moldovaRepublicOf.code,
          EnumCountryName.serbia : EnumCountryName.serbia.code,
          EnumCountryName.hungary : EnumCountryName.hungary.code,
          EnumCountryName.ukraine : EnumCountryName.ukraine.code,
        };
      case EnumLanguage.russian: 
        return {
          EnumCountryName.russianFederation : EnumCountryName.russianFederation.code,
          EnumCountryName.belarus : EnumCountryName.belarus.code,
          EnumCountryName.kazakhstan : EnumCountryName.kazakhstan.code,
          EnumCountryName.kyrgyzstan : EnumCountryName.kyrgyzstan.code,
          EnumCountryName.tajikistan : EnumCountryName.tajikistan.code,
          EnumCountryName.ukraine : EnumCountryName.ukraine.code,
          EnumCountryName.moldovaRepublicOf : EnumCountryName.moldovaRepublicOf.code,
          EnumCountryName.uzbekistan : EnumCountryName.uzbekistan.code,
          EnumCountryName.armenia : EnumCountryName.armenia.code,
          EnumCountryName.poland : EnumCountryName.poland.code,
          EnumCountryName.romania : EnumCountryName.romania.code,
        };
      case EnumLanguage.samoan: 
        return {
          EnumCountryName.samoa : EnumCountryName.samoa.code,
        };
      case EnumLanguage.scottish: 
        return {
          EnumCountryName.unitedKingdomOfGreatBritrainAndNorthernIreland : 
          EnumCountryName.unitedKingdomOfGreatBritrainAndNorthernIreland.code,
          EnumCountryName.canada : EnumCountryName.canada.code,
        };
      case EnumLanguage.serbian: 
        return {
          EnumCountryName.serbia : EnumCountryName.serbia.code,
          EnumCountryName.bosniaAndHerzegovina : EnumCountryName.bosniaAndHerzegovina.code,
          EnumCountryName.montenegro : EnumCountryName.montenegro.code,
          EnumCountryName.croatia : EnumCountryName.croatia.code,
          EnumCountryName.hungary : EnumCountryName.hungary.code,
          EnumCountryName.slovakia : EnumCountryName.slovakia.code,
          EnumCountryName.czechia : EnumCountryName.czechia.code,
          EnumCountryName.northMacedonia : EnumCountryName.northMacedonia.code,
          EnumCountryName.romania : EnumCountryName.romania.code,
        };
      case EnumLanguage.sesotho: 
        return {
          EnumCountryName.lesotho : EnumCountryName.lesotho.code,
          EnumCountryName.southAfrica : EnumCountryName.southAfrica.code,
          EnumCountryName.zimbabwe : EnumCountryName.zimbabwe.code,
        };
      case EnumLanguage.shona: 
        return {
          EnumCountryName.zimbabwe : EnumCountryName.zimbabwe.code,
          EnumCountryName.mozambique : EnumCountryName.mozambique.code,
          EnumCountryName.southAfrica : EnumCountryName.southAfrica.code,
        };
      case EnumLanguage.sindhi: 
        return {
          EnumCountryName.pakistan : EnumCountryName.pakistan.code,
          EnumCountryName.india : EnumCountryName.india.code,
        };
      case EnumLanguage.sinhala: 
        return {
          EnumCountryName.sriLanka : EnumCountryName.sriLanka.code,
        };
      case EnumLanguage.sinhalese: 
        return {
          EnumCountryName.sriLanka : EnumCountryName.sriLanka.code,
        };
      case EnumLanguage.slovak: 
        return {
          EnumCountryName.slovakia : EnumCountryName.slovakia.code,
          EnumCountryName.czechia : EnumCountryName.czechia.code,
          EnumCountryName.poland : EnumCountryName.poland.code,
          EnumCountryName.hungary : EnumCountryName.hungary.code,
          EnumCountryName.croatia : EnumCountryName.croatia.code,
          EnumCountryName.ukraine : EnumCountryName.ukraine.code,
          EnumCountryName.serbia : EnumCountryName.serbia.code,
        };
      case EnumLanguage.slovenian: 
        return {
          EnumCountryName.slovenia : EnumCountryName.slovenia.code,
          EnumCountryName.austria : EnumCountryName.austria.code,
          EnumCountryName.italy : EnumCountryName.italy.code,
        };
      case EnumLanguage.somali: 
        return {
          EnumCountryName.somalia : EnumCountryName.somalia.code,
          EnumCountryName.djibouti : EnumCountryName.djibouti.code,
          EnumCountryName.ethiopia : EnumCountryName.ethiopia.code,
          EnumCountryName.kenya : EnumCountryName.kenya.code,
        };
      case EnumLanguage.spanish: 
        return {
          EnumCountryName.spain : EnumCountryName.spain.code,
          EnumCountryName.mexico : EnumCountryName.mexico.code,
          EnumCountryName.colombia : EnumCountryName.colombia.code,
          EnumCountryName.argentina : EnumCountryName.argentina.code,
          EnumCountryName.peru : EnumCountryName.peru.code,
          EnumCountryName.venezuela : EnumCountryName.venezuela.code,
          EnumCountryName.chile : EnumCountryName.chile.code,
          EnumCountryName.guatemala : EnumCountryName.guatemala.code,
          EnumCountryName.ecuador : EnumCountryName.ecuador.code,
          EnumCountryName.bolivia : EnumCountryName.bolivia.code,
          EnumCountryName.cuba : EnumCountryName.cuba.code,
          EnumCountryName.dominicanRepublic : EnumCountryName.dominicanRepublic.code,
          EnumCountryName.honduras : EnumCountryName.honduras.code,
          EnumCountryName.paraguay : EnumCountryName.paraguay.code,
          EnumCountryName.elSalvador : EnumCountryName.elSalvador.code,
          EnumCountryName.nicaragua : EnumCountryName.nicaragua.code,
          EnumCountryName.costaRica : EnumCountryName.costaRica.code,
          EnumCountryName.panama : EnumCountryName.panama.code,
          EnumCountryName.uruguay : EnumCountryName.uruguay.code,
          EnumCountryName.equatorialGuinea : EnumCountryName.equatorialGuinea.code,
          EnumCountryName.puertoRico : EnumCountryName.puertoRico.code,
          EnumCountryName.andorra : EnumCountryName.andorra.code,
          EnumCountryName.belize : EnumCountryName.belize.code,
          EnumCountryName.gibraltar : EnumCountryName.gibraltar.code,
          EnumCountryName.unitedStatesOfAmerica : EnumCountryName.unitedStatesOfAmerica.code,
          EnumCountryName.westernSahara : EnumCountryName.westernSahara.code,
          EnumCountryName.aruba : EnumCountryName.aruba.code,
          EnumCountryName.curasao : EnumCountryName.curasao.code,
          EnumCountryName.philippines : EnumCountryName.philippines.code,
        };
      case EnumLanguage.swahili: 
        return {
          EnumCountryName.tanzaniaUnitedRepublicOf : 
          EnumCountryName.tanzaniaUnitedRepublicOf.code,
          EnumCountryName.kenya : EnumCountryName.kenya.code,
          EnumCountryName.rwanda : EnumCountryName.rwanda.code,
          EnumCountryName.uganda : EnumCountryName.uganda.code,
          EnumCountryName.burundi : EnumCountryName.burundi.code,
          EnumCountryName.congoDemocraticRepublic : EnumCountryName.congoDemocraticRepublic.code,
          EnumCountryName.mozambique : EnumCountryName.mozambique.code,
        };
      case EnumLanguage.swedish: 
        return {
          EnumCountryName.sweden : EnumCountryName.sweden.code,
          EnumCountryName.finland : EnumCountryName.finland.code,
          EnumCountryName.estonia : EnumCountryName.estonia.code,
          EnumCountryName.alandIslands : EnumCountryName.alandIslands.code,
        };
      case EnumLanguage.tagalog: 
        return {
          EnumCountryName.philippines : EnumCountryName.philippines.code,
        };
      case EnumLanguage.tajik: 
        return {
          EnumCountryName.tajikistan : EnumCountryName.tajikistan.code,
          EnumCountryName.kazakhstan : EnumCountryName.kazakhstan.code,
          EnumCountryName.kyrgyzstan : EnumCountryName.kyrgyzstan.code,
          EnumCountryName.uzbekistan : EnumCountryName.uzbekistan.code,
        };
      case EnumLanguage.tamil: 
        return {
          EnumCountryName.india : EnumCountryName.india.code,
          EnumCountryName.sriLanka : EnumCountryName.sriLanka.code,
          EnumCountryName.singapore : EnumCountryName.singapore.code,
          EnumCountryName.malaysia : EnumCountryName.malaysia.code,
          EnumCountryName.southAfrica : EnumCountryName.southAfrica.code,
        };
      case EnumLanguage.tartar: 
        return {
          EnumCountryName.russianFederation : EnumCountryName.russianFederation.code, 
        };
      case EnumLanguage.telugu: 
        return {
          EnumCountryName.india : EnumCountryName.india.code,
          EnumCountryName.southAfrica : EnumCountryName.southAfrica.code,
        };
      case EnumLanguage.thai: 
        return {
          EnumCountryName.thailand : EnumCountryName.thailand.code,
          EnumCountryName.malaysia : EnumCountryName.malaysia.code,
          EnumCountryName.myanmar : EnumCountryName.myanmar.code,
          EnumCountryName.cambodia : EnumCountryName.cambodia.code,
        };
      case EnumLanguage.turkish: 
        return {
          EnumCountryName.turkey : EnumCountryName.turkey.code,
          EnumCountryName.cyprus : EnumCountryName.cyprus.code,
          EnumCountryName.azerbaijan : EnumCountryName.azerbaijan.code,
          EnumCountryName.iraq : EnumCountryName.iraq.code,
          EnumCountryName.syrianArabRepublic : EnumCountryName.syrianArabRepublic.code,
          EnumCountryName.lebanon : EnumCountryName.lebanon.code,
          EnumCountryName.israel : EnumCountryName.israel.code,
          EnumCountryName.greece : EnumCountryName.greece.code,
          EnumCountryName.bulgaria : EnumCountryName.bulgaria.code,
          EnumCountryName.romania : EnumCountryName.romania.code,
          EnumCountryName.northMacedonia : EnumCountryName.northMacedonia.code,
          EnumCountryName.bosniaAndHerzegovina : EnumCountryName.bosniaAndHerzegovina.code, 
        };
      case EnumLanguage.turkmen: 
        return {
          EnumCountryName.turkmenistan : EnumCountryName.turkmenistan.code,
          EnumCountryName.afghanistan : EnumCountryName.afghanistan.code,
          EnumCountryName.russianFederation : EnumCountryName.russianFederation.code,
          EnumCountryName.iran : EnumCountryName.iran.code,
          EnumCountryName.uzbekistan : EnumCountryName.uzbekistan.code,
          EnumCountryName.tajikistan : EnumCountryName.tajikistan.code,
        };
      case EnumLanguage.ukrainian: 
        return {
          EnumCountryName.ukraine : EnumCountryName.ukraine.code,
          EnumCountryName.russianFederation : EnumCountryName.russianFederation.code,
          EnumCountryName.belarus : EnumCountryName.belarus.code,
          EnumCountryName.bosniaAndHerzegovina : EnumCountryName.bosniaAndHerzegovina.code,
          EnumCountryName.croatia : EnumCountryName.croatia.code,
          EnumCountryName.czechia : EnumCountryName.czechia.code,
          EnumCountryName.hungary : EnumCountryName.hungary.code,
          EnumCountryName.moldovaRepublicOf : EnumCountryName.moldovaRepublicOf.code,
          EnumCountryName.poland : EnumCountryName.poland.code,
          EnumCountryName.romania : EnumCountryName.romania.code,
          EnumCountryName.serbia : EnumCountryName.serbia.code,
          EnumCountryName.slovakia : EnumCountryName.slovakia.code,
        };
      case EnumLanguage.urdu: 
        return {
          EnumCountryName.pakistan : EnumCountryName.pakistan.code,
          EnumCountryName.india : EnumCountryName.india.code,
          EnumCountryName.southAfrica : EnumCountryName.southAfrica.code,
        };
      case EnumLanguage.uyghur: 
        return {
          EnumCountryName.china : EnumCountryName.china.code,
        };
      case EnumLanguage.uzbek: 
        return {
          EnumCountryName.uzbekistan : EnumCountryName.uzbekistan.code,
          EnumCountryName.afghanistan : EnumCountryName.afghanistan.code,
          EnumCountryName.tajikistan : EnumCountryName.tajikistan.code,
          EnumCountryName.kazakhstan : EnumCountryName.kazakhstan.code,
          EnumCountryName.turkmenistan : EnumCountryName.turkmenistan.code,
          EnumCountryName.russianFederation : EnumCountryName.russianFederation.code,
          EnumCountryName.china : EnumCountryName.china.code,
        };
      case EnumLanguage.vietnamese: 
        return {
          EnumCountryName.vietNam : EnumCountryName.vietNam.code,
          EnumCountryName.czechia : EnumCountryName.czechia.code,
        };
      case EnumLanguage.welsh: 
        return {
          EnumCountryName.unitedKingdomOfGreatBritrainAndNorthernIreland : 
            EnumCountryName.unitedKingdomOfGreatBritrainAndNorthernIreland.code,
          EnumCountryName.argentina : EnumCountryName.argentina.code,
        };
      case EnumLanguage.xhosa: 
        return {
          EnumCountryName.southAfrica : EnumCountryName.southAfrica.code,
          EnumCountryName.zimbabwe : EnumCountryName.zimbabwe.code,
        };
      case EnumLanguage.yoruba: 
        return {
          EnumCountryName.benin : EnumCountryName.benin.code,
          EnumCountryName.nigeria : EnumCountryName.nigeria.code,
          EnumCountryName.togo : EnumCountryName.togo.code,
        };
      case EnumLanguage.zulu: 
        return {
          EnumCountryName.southAfrica : EnumCountryName.southAfrica.code,
        };
    }
  } 
}