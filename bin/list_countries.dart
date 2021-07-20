import 'dart:convert';
import 'dart:io';

import 'package:args/args.dart';
import 'package:iso_3166_1/iso_3166_1.dart';
import 'package:iso_3166_1/src/country_code.dart';
import 'package:pretty_json/pretty_json.dart';
import 'package:tabular/tabular.dart';
import 'package:csv/csv.dart';

ArgResults setupArgs(List<String> args) {
  var parser = ArgParser();
  parser.addOption(
    'type',
    abbr: 't',
    defaultsTo: 'table',
    allowed: ['json','pretty_json', 'table', 'csv', 'JSON', 'TABLE', 'CSV','PRETTY_JSON']
  );
  
  parser.addOption(
    'from',
    defaultsTo: ''
  );
  parser.addOption(
    'to',
    defaultsTo: ''
  );
  parser.addOption(
    'divide-lines',
    abbr: 'd',
    defaultsTo: ''
  );

  parser.addOption(
    'limit',
    abbr: 'l',
    defaultsTo: ''
  );
  
  parser.addOption(
    'file',
    abbr: 'f',
  );

  parser.addFlag(
    'print',
    abbr: 'p',
    defaultsTo: false
  );

  parser.addFlag(
    'lines',
    defaultsTo: false
  );

  parser.addFlag(
    'hborder',
    defaultsTo: true,
     negatable: true
  );

  parser.addFlag(
    'title',
    defaultsTo: true,
     negatable: true
  );

  parser.addFlag(
    'title-lowercase',
    defaultsTo: false
  );

  parser.addMultiOption(
    'fields',
    defaultsTo: ['ID','NAME', 'ALPHA2', 'ALPHA3', 'PREFIX', 'FLAG'],
    allowed: ['ID','NAME', 'ALPHA2', 'ALPHA3', 'PREFIX', 'FLAG','id','name', 'alpha2', 'alpha3', 'prefix', 'flag'],
  );

  return parser.parse(args);
}

List<List<String>> buildCountries({
    required List<String> titleFields, 
    required bool isTitleLowerCase,
    required List<CountryCode> countryCodes,
    int? limit,
    int? from,
    int? to,
}) {
  final countries = <List<String>>[    
      titleFields.map((e) => 
        (isTitleLowerCase)? e.toLowerCase() : e.toUpperCase()).toList()
  ];      
  
  for( var c in countryCodes.getRange(
      (from != null && from > 0 && from <= countryCodes.length)? from-1 : 0, 
      (to != null && to <= countryCodes.length && to > 0)? to : countryCodes.length)
       .take(limit ?? countryCodes.length)) {
    var fields = <String>[];
    
    if(countries.first.map((e) => e.toUpperCase()).contains('ID')) {
      fields.add(c.id);
    }
    if(countries.first.map((e) => e.toUpperCase()).contains('NAME')) {
      fields.add(c.name);
    }
    if(countries.first.map((e) => e.toUpperCase()).contains('ALPHA2')) {
      fields.add(c.alpha2);
    }
    if(countries.first.map((e) => e.toUpperCase()).contains('ALPHA3')) {
      fields.add(c.alpha3);
    }
    if(countries.first.map((e) => e.toUpperCase()).contains('PREFIX')) {
      fields.add(c.prefix);
    if(countries.first.map((e) => e.toUpperCase()).contains('FLAG')) {
      fields.add(c.uFlag);
    }
    }
    
    countries.add(fields);
  }

  return countries;
}

String buildOutput({
    required List<List<String>> countries, 
    required bool isTitleLowerCase,
    required String type, 
    int? divideEach,    
    bool showTitle = true,
    bool horizontalBorder = true,    
    bool showLines = false,
}) {  

  if(showLines) {
    var i = 1;
    countries.first.insert(0, '#');
    for(var c in countries.skip(1)) {
      c.insert(0, '$i');
      // c.first = '$i: ${c.first}';
      i++;
    }
  }

  final alignFields = <dynamic, Side> {};

  if(countries.first.map((e) => e.toUpperCase()).contains('#')) {
    alignFields['#'] = Side.end;
  }
  if(countries.first.map((e) => e.toUpperCase()).contains('ID')) {
    alignFields[(isTitleLowerCase)? 'id':'ID'] = Side.end;
  }
  if(countries.first.map((e) => e.toUpperCase()).contains('ALPHA2')) {
    alignFields[(isTitleLowerCase)? 'alpha2':'ALPHA2'] = Side.center;
  }
  if(countries.first.map((e) => e.toUpperCase()).contains('ALPHA3')) {
    alignFields[(isTitleLowerCase)? 'alpha3':'ALPHA3'] = Side.center;
  }
  if(countries.first.map((e) => e.toUpperCase()).contains('PREFIX')) {
    alignFields[(isTitleLowerCase)? 'prefix':'PREFIX'] = Side.end;
  }
  if(countries.first.map((e) => e.toUpperCase()).contains('FLAG')) {
    alignFields[(isTitleLowerCase)? 'flag':'FLAG'] = Side.start;
  }

  
    
  if(!showTitle) {
    countries.removeAt(0);
  }
  String output = 'An error has ocurred';
  
  if(type == 'table') {
    var rowDividers = [
      if(showTitle) 1, 
      countries.length, 
      for(var i=2; i < countries.length; i++) 
        if(divideEach != null && (i % divideEach == 0)) 
          (showTitle)? i + 1 : i
    ];
    output = tabular(
      countries, 
      align: (showTitle) ? alignFields : null,
      border: (horizontalBorder)? Border.horizontal : Border.none,
      rowDividers: rowDividers,
      format:(showTitle)
      ? {
        (isTitleLowerCase)? 'flag':'FLAG' : (val) => ' ' + val + ' ',
      }
      : null
    );
  }
  else if(type == 'json'){
    output = json.encode(countries);
  }
  else if(type == 'pretty_json') {
    output = prettyJson(countries);
  }
  else if(type == 'csv'){
    output = const ListToCsvConverter().convert(countries);
  }

  return output;
}

void main(List<String> args) {

  final results = setupArgs(args);

  final countries = buildCountries(
    titleFields: results['fields'], 
    isTitleLowerCase: results['title-lowercase'],
    countryCodes: CountryCodes.values,
    limit: int.tryParse(results['limit']),  
    from: int.tryParse(results['from']),  
    to: int.tryParse(results['to']),  
  );

  final output = buildOutput(
    countries: countries, 
    type: results['type'],
    divideEach: int.tryParse(results['divide-lines']),
    isTitleLowerCase: results['title-lowercase'],
    horizontalBorder: results['hborder'],
    showTitle: results['title'],
    showLines: results['lines'],
  );
  
  if(results['print'] || (results['file'] == null && results.rest.isEmpty)) {
    print(output);
  }

  if(results['file'] != null && results['file'] != '') {
    var file = File(results['file']);
    file.writeAsStringSync(output);

  }

  if(results.rest.isNotEmpty) {
    // var contrycodes = <CountryCode>[];
    for(var cc in results.rest) {
      var error = '[${cc.toUpperCase()}] could not be found';
      if(CountryCodes.tryCountryCode(cc) == null) {
        print(error);
      }
      // var country =  CountryCodes.tryCountryCode(cc);
      // if(country != null) {
      //   contrycodes.add(country);
      // }
      // else {
      //   print(res);
      // }
    }
    final countries = buildCountries(
      titleFields: results['fields'], 
      isTitleLowerCase: results['title-lowercase'],
      countryCodes: CountryCodes.getCountryCodes(results.rest),
    );
    var res = buildOutput(
      countries: countries, 
      isTitleLowerCase: results['title-lowercase'], 
      type: results['type'],          
      showTitle: results['title'],
      horizontalBorder: results['hborder'],
      divideEach: int.tryParse(results['divide-lines']),  
      showLines: results['lines'],
    );
    print(res);
  }
  else if(results.rest.length > 1){
    print('only one argument is needed if provided: Too many arguments error');
  } 

}