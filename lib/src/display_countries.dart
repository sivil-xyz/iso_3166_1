  
import 'dart:convert';
import 'dart:io';
import 'package:args/args.dart';
import 'package:iso_3166_1/iso_3166_1.dart';
import 'package:iso_3166_1/src/country_code.dart';
import 'package:pretty_json/pretty_json.dart';
import 'package:tabular/tabular.dart';
import 'package:csv/csv.dart';

class DisplayCountriesArgs {  
  final List<String> countries;
  final int? divideLines;
  final List<String> fields;
  final String? file;
  final int? from;
  final bool hBorder;
  final int? limit;
  final bool lines;
  final bool printAll;
  final bool title;
  final bool titleLowercase;
  final int? to;
  final String type;

  DisplayCountriesArgs({
    required this.countries,
    required this.divideLines,
    required this.fields, 
    required this.file, 
    required this.from, 
    required this.hBorder, 
    required this.limit, 
    required this.lines, 
    required this.printAll, 
    required this.title, 
    required this.titleLowercase, 
    required this.to, 
    required this.type
  });
}

class DisplayCountries {
  DisplayCountriesArgs arguments;
  List<CountryCode> countryCodes;

  DisplayCountries({
    required this.arguments, 
    required this.countryCodes
  });

  factory DisplayCountries.fromArguments(List<String> args, {    
    List<CountryCode>? countryCodes
  }) 
  {
    final results = setupArgs(args);
    final arguments = DisplayCountriesArgs(
      countries: results.rest,
      divideLines: int.tryParse(results['divide-lines']),
      fields: results['fields'],
      file: results['file'],
      from: int.tryParse(results['from']),
      hBorder: results['h-border'],
      limit: int.tryParse(results['limit']),
      lines: results['lines'],
      printAll: results['print-all'],
      title: results['title'],
      titleLowercase: results['title-lowercase'],
      to: int.tryParse(results['to']),
      type: results['type'],
    );

    return DisplayCountries(
      arguments: arguments, 
      countryCodes: countryCodes ?? CountryCodes.getCountryCodes(arguments.countries),
    );
        
  }

  static ArgResults setupArgs(List<String> args) {
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
      'print-all',
      abbr: 'p',
      defaultsTo: false
    );

    parser.addFlag(
      'lines',
      defaultsTo: false
    );

    parser.addFlag(
      'h-border',
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

  List<List<String>> get list {
    final countries = <List<String>>[    
        arguments.fields.map((e) => 
          (arguments.titleLowercase)? e.toLowerCase() : e.toUpperCase()).toList()
    ];      
    
    for( var c in countryCodes.getRange(
        (arguments.from != null && arguments.from! > 0 && arguments.from! <= countryCodes.length)? arguments.from!-1 : 0, 
        (arguments.to != null && arguments.to! <= countryCodes.length && arguments.to! > 0)? arguments.to! : countryCodes.length)
        .take(arguments.limit ?? countryCodes.length)) {
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

  String get output {  
    final countries = list;
    if(arguments.lines) {
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
      alignFields[(arguments.titleLowercase)? 'id':'ID'] = Side.end;
    }
    if(countries.first.map((e) => e.toUpperCase()).contains('ALPHA2')) {
      alignFields[(arguments.titleLowercase)? 'alpha2':'ALPHA2'] = Side.center;
    }
    if(countries.first.map((e) => e.toUpperCase()).contains('ALPHA3')) {
      alignFields[(arguments.titleLowercase)? 'alpha3':'ALPHA3'] = Side.center;
    }
    if(countries.first.map((e) => e.toUpperCase()).contains('PREFIX')) {
      alignFields[(arguments.titleLowercase)? 'prefix':'PREFIX'] = Side.end;
    }
    if(countries.first.map((e) => e.toUpperCase()).contains('FLAG')) {
      alignFields[(arguments.titleLowercase)? 'flag':'FLAG'] = Side.start;
    }

    
      
    if(!arguments.title) {
      countries.removeAt(0);
    }
    String output = 'An error has ocurred';
    
    if(arguments.type == 'table') {
      var rowDividers = [
        if(arguments.title) 1, 
        countries.length, 
        for(var i=2; i < countries.length; i++) 
          if(arguments.divideLines != null && (i % arguments.divideLines! == 0)) 
            (arguments.title)? i + 1 : i
      ];
      output = tabular(
        countries, 
        align: (arguments.title) ? alignFields : null,
        border: (arguments.hBorder)? Border.horizontal : Border.none,
        rowDividers: rowDividers,
        format:(arguments.title)
        ? {
          (arguments.titleLowercase)? 'flag':'FLAG' : (val) => ' ' + val + ' ',
        }
        : null
      );
    }
    else if(arguments.type == 'json'){
      output = json.encode(countries);
    }
    else if(arguments.type == 'pretty_json') {
      output = prettyJson(countries);
    }
    else if(arguments.type == 'csv'){
      output = const ListToCsvConverter().convert(countries);
    }

    return output;
  }
 
  void run() {   

    if(arguments.file != null && arguments.file != '') {
      var file = File(arguments.file!);
      file.writeAsStringSync(output);
    }

    if(arguments.countries.isNotEmpty) {
      // var contrycodes = <CountryCode>[];
      for(var cc in arguments.countries) {
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
      // countryCodes = CountryCodes.getCountryCodes(arguments.countries);
      // final countries = buildCountries(
      //   titleFields: results['fields'], 
      //   isTitleLowerCase: results['title-lowercase'],
      //   countryCodes: CountryCodes.getCountryCodes(results.rest),
      // );
      // var res = buildOutput(
      //   countries: countries, 
      //   isTitleLowerCase: results['title-lowercase'], 
      //   type: results['type'],          
      //   showTitle: results['title'],
      //   horizontalBorder: results['hborder'],
      //   divideEach: int.tryParse(results['divide-lines']),  
      //   showLines: results['lines'],
      // );
      print(output);
    } 
    if(arguments.printAll || (arguments.file == null && arguments.countries.isEmpty)) {
      countryCodes = CountryCodes.values;   
      print(output);
    }
  }
}