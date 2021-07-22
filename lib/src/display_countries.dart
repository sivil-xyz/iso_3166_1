  
import 'dart:convert';
import 'dart:io';
import 'package:args/args.dart';
import 'package:iso_3166_1/iso_3166_1.dart';
import 'package:iso_3166_1/src/country_code.dart';
import 'package:pretty_json/pretty_json.dart';
import 'package:tabular/tabular.dart';
import 'package:csv/csv.dart';

enum DisplayCountriesArgsType { csv, json, list, prettyJson, table }
enum DisplayCountriesArgsField { id, name, alpha2, alpha3, prefix, flag }

class DisplayCountriesArgs {  
  static const defaultType = DisplayCountriesArgsType.table;

  List<String> countries;
  int? divideLines;
  List<DisplayCountriesArgsField> fields;
  String? file;
  int? from;
  bool hBorder;
  int? limit;
  bool lines;
  int linesPosition;
  bool printAll;
  bool title;
  bool titleLowercase;
  int? to;
  DisplayCountriesArgsType type;

  DisplayCountriesArgs({
    this.countries = const [],
    this.divideLines,
    this.fields = DisplayCountriesArgsField.values, 
    this.file, 
    this.from, 
    this.hBorder = true, 
    this.limit, 
    this.lines = false, 
    this.linesPosition = 0,
    this.printAll = false, 
    this.title = true, 
    this.titleLowercase = false, 
    this.to, 
    this.type = defaultType
  });

  static DisplayCountriesArgsType typeOf(String myType) {
    var res = DisplayCountriesArgsType.table;
    if(myType.toLowerCase() == 'csv') {
      res = DisplayCountriesArgsType.csv;
    }
    else if(myType.toLowerCase() == 'json') {
      res = DisplayCountriesArgsType.json;
    }
    else if(myType.toLowerCase() == 'pretty_json') {
      res = DisplayCountriesArgsType.prettyJson;
    }
    else if(myType.toLowerCase() == 'list') {
      res = DisplayCountriesArgsType.list;
    }
    return res;
  }
  static DisplayCountriesArgsField fieldOf(String myField) {
    var res = DisplayCountriesArgsField.id;
    if(myField.toLowerCase() == 'name') {
      res = DisplayCountriesArgsField.name;
    }
    else if(myField.toLowerCase() == 'alpha2') {
      res = DisplayCountriesArgsField.alpha2;
    }
    else if(myField.toLowerCase() == 'alpha3') {
      res = DisplayCountriesArgsField.alpha3;
    }
    else if(myField.toLowerCase() == 'prefix') {
      res = DisplayCountriesArgsField.prefix;
    }
    else if(myField.toLowerCase() == 'flag') {
      res = DisplayCountriesArgsField.flag;
    }
    return res;
  }
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
      fields: [for(var f in results['fields'] as List<String>) 
        DisplayCountriesArgs.fieldOf(f)],
      file: results['file'],
      from: int.tryParse(results['from']),
      hBorder: results['h-border'],
      limit: int.tryParse(results['limit']),
      lines: results['lines'],
      linesPosition: int.tryParse(results['lines-position']) ?? 0,
      printAll: results['print-all'],
      title: results['title'],
      titleLowercase: results['title-lowercase'],
      to: int.tryParse(results['to']),
      type: DisplayCountriesArgs.typeOf(results['type']),
    );

    if(arguments.linesPosition < 0){
      arguments.linesPosition = 0;
    }
    else if(arguments.linesPosition > arguments.fields.length) {
      arguments.linesPosition = arguments.fields.length;
    }

    return DisplayCountries(
      arguments: arguments, 
      countryCodes: countryCodes ?? CountryCodes.getCountryCodes(arguments.countries),
    );
        
  }

  static ArgResults setupArgs(List<String> args) {
    var parser = ArgParser();
    // ADDING OPTIONS
    parser.addOption(
      'divide-lines',
      abbr: 'd',
      defaultsTo: ''
    );

    parser.addOption(
      'file',
      abbr: 'f',
    );

    parser.addOption(
      'from',
      defaultsTo: ''
    );

    parser.addOption(
      'limit',
      abbr: 'l',
      defaultsTo: ''
    );

    parser.addOption(
      'lines-position',
      defaultsTo: '0'
    );

    parser.addOption(
      'to',
      defaultsTo: ''
    );

    parser.addOption(
      'type',
      abbr: 't',
      defaultsTo: DisplayCountriesArgs.defaultType.toString()
        .substring(DisplayCountriesArgs.defaultType.toString().indexOf('.') + 1),
      allowed: [
        ...DisplayCountriesArgsType.values.map((e) => e.toString().substring(e.toString().indexOf('.') + 1).toLowerCase()),
        ...DisplayCountriesArgsType.values.map((e) => e.toString().substring(e.toString().indexOf('.') + 1).toUpperCase()),
      ],
    );

    //ADDING FLAGS

    parser.addFlag(
      'lines',
      defaultsTo: false
    );

    parser.addFlag(
      'print-all',
      abbr: 'p',
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

    //ADDING MULTIOPTION

    parser.addMultiOption(
      'fields',
      defaultsTo: DisplayCountriesArgsField.values.map((e) => e.toString().substring(e.toString().indexOf('.') + 1)),
      allowed: [
        ...DisplayCountriesArgsField.values.map((e) => e.toString().substring(e.toString().indexOf('.') + 1).toLowerCase()),
        ...DisplayCountriesArgsField.values.map((e) => e.toString().substring(e.toString().indexOf('.') + 1).toUpperCase()),
      ],
    );

    return parser.parse(args);
  }

  List<List<String>> get list {
    final countries = <List<String>>[    
        arguments.fields.map((e) => e.toString().substring(e.toString().indexOf('.') + 1))
          .map((e) => (arguments.titleLowercase)? e.toLowerCase() : e.toUpperCase()).toList()
    ];      
    
    for( var c in countryCodes.getRange(
        (arguments.from != null && arguments.from! > 0 && arguments.from! <= countryCodes.length)? arguments.from!-1 : 0, 
        (arguments.to != null && arguments.to! <= countryCodes.length && arguments.to! > 0)? arguments.to! : countryCodes.length)
        .take(arguments.limit ?? countryCodes.length)) {
      var fields = <String>[];

      for(var field in countries.first) {
        if(field.toUpperCase().contains('ID')) {
          fields.add(c.id);
        }
        if(field.toUpperCase().contains('NAME')) {
          fields.add(c.name);
        }
        if(field.toUpperCase().contains('ALPHA2')) {
          fields.add(c.alpha2);
        }
        if(field.toUpperCase().contains('ALPHA3')) {
          fields.add(c.alpha3);
        }
        if(field.toUpperCase().contains('PREFIX')) {
          fields.add(c.prefix);
        }
        if(field.toUpperCase().contains('FLAG')) {
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
      countries.first.insert(arguments.linesPosition, '#');
      for(var c in countries.skip(1)) {
        c.insert(arguments.linesPosition, '$i');
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

    if(arguments.type == DisplayCountriesArgsType.table) {
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
        format:(arguments.title && 
            arguments.fields.map((e) => e.toString().toLowerCase()).contains('flag'))
        ? {
          (arguments.titleLowercase)? 'flag':'FLAG' : (val) => ' ' + val + ' ',
        }
        : null
      );
    }
    else if(arguments.type == DisplayCountriesArgsType.json){
      output = json.encode(countries);
    }
    else if(arguments.type == DisplayCountriesArgsType.prettyJson) {
      output = prettyJson(countries);
    }
    else if(arguments.type == DisplayCountriesArgsType.csv){
      output = const ListToCsvConverter().convert(countries);
    }
    else if(arguments.type == DisplayCountriesArgsType.list){
      output = '';
      for(var c in countries) {
        output += '${c.toString()}\n';
      }
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
      }     
      print(output);
    } 
    if(arguments.printAll || (arguments.file == null && arguments.countries.isEmpty)) {
      countryCodes = CountryCodes.values;   
      print(output);
    }
  }
}