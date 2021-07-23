  
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
  static ArgParser? _parser;

  List<String> countries;
  int? dividingLine;
  List<DisplayCountriesArgsField> fields;
  String? file;
  int? from;
  bool hBorder;
  bool help;
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
    this.dividingLine,
    this.fields = DisplayCountriesArgsField.values, 
    this.file, 
    this.from, 
    this.hBorder = true, 
    this.help = false,
    this.limit, 
    this.lines = false, 
    this.linesPosition = 0,
    this.printAll = false, 
    this.title = true, 
    this.titleLowercase = false, 
    this.to, 
    this.type = defaultType
  }) {
    _initParser();
  }

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

  List<String> get asList {
    return [
      'dividing-line',
      '${dividingLine ?? ''}',
      'file',
      file ?? '',
      'from',
      '${from ?? ''}',
      'limit',
      '${limit ?? ''}',
      'lines-position',
      '$linesPosition',
      'to',
      '${to ?? ''}',
      'type',
      type.toString()
        .substring(DisplayCountriesArgs
          .defaultType.toString().indexOf('.') + 1),
      'help',
      '$help',
      'h-border',
      '$hBorder'
      'lines',
      '$lines',
      'print-all',
      '$printAll',
      'title',
      '$title'
      'title-lowercase',
      '$titleLowercase'
      'fields',
      fields.map((e) => e.toString()
        .substring(e.toString().indexOf('.') + 1)).join(' ')

    ];
  }

  static String usage() {
    _initParser();
    return _parser!.usage;
  }
  static void _initParser() {
    // initialize the parser class once, is shared by all instances
    if(_parser == null) {
      _parser = ArgParser();
      _parser!.addOption(
        'dividing-line',
        abbr: 'd',
        defaultsTo: '',
        help: 'Group the output results N times into N times',
        valueHelp: 'number of times'
      );

      _parser!.addOption(
        'file',
        abbr: 'f',
        help: 'Save the output to a file',
        valueHelp: 'path'
      );

      _parser!.addOption(
        'from',
        defaultsTo: '',
        help: 'show the results starting from this row',
        valueHelp: 'row number'
      );

      _parser!.addOption(
        'limit',
        abbr: 'l',
        defaultsTo: '',
        help: 'limit the results to this number',
        valueHelp: 'number',
      );

      _parser!.addOption(
        'lines-position',
        defaultsTo: '0',
        help: 'if lines are show, the position inside the fields(columns)',
        valueHelp: 'number'
      );

      _parser!.addOption(
        'to',
        defaultsTo: '',
        help: 'show the results ending into this row',
        valueHelp: 'row number'
      );

      _parser!.addOption(
        'type',
        abbr: 't',
        defaultsTo: DisplayCountriesArgs
            .defaultType.toString()
          .substring(DisplayCountriesArgs
            .defaultType.toString().indexOf('.') + 1),
        allowed: [
          ...DisplayCountriesArgsType.values.map(
              (e) => e.toString().substring(e.toString().indexOf('.') + 1).toLowerCase()),
        ],
        help: 'The type of format output',
      );

      //ADDING FLAGS

      _parser!.addFlag(
        'help',
        abbr: 'h',
        defaultsTo: false,
        help: 'Show the help'
      );

      _parser!.addFlag(
        'h-border',
        defaultsTo: true,
        negatable: true,
        help: 'Print an horizontal border',
      );

      _parser!.addFlag(
        'lines',
        defaultsTo: false,
        help: 'Show the lines in the output'
      );

      _parser!.addFlag(
        'print-all',
        abbr: 'p',
        defaultsTo: false,
        help: 'Show all the results even if there is any lookup'
      );


      _parser!.addFlag(
        'title',
        defaultsTo: true,
        negatable: true,
        help: 'Show a title (heading). Show the field names in each column'
      );

      _parser!.addFlag(
        'title-lowercase',
        defaultsTo: false,
        help: 'Put the title in lowercase'
      );

      //ADDING MULTIOPTION

      _parser!.addMultiOption(
        'fields',
        defaultsTo: DisplayCountriesArgsField.values.map((e) => e.toString().substring(e.toString().indexOf('.') + 1)),
        allowed: [
          ...DisplayCountriesArgsField.values.map((e) => e.toString().substring(e.toString().indexOf('.') + 1).toLowerCase()),
        ],
        help: 'Fields (columns) to display in the output'
      );
      // ADDING OPTIONS
    }
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
    ArgResults? results;
    try {
      DisplayCountriesArgs._initParser();
      results = DisplayCountriesArgs._parser!.parse(args);
    }
    catch(e) {
      results = null;
    }

    if(results == null) {
      print('Error: uknown flag or option');
      exit(0);
    }
    final arguments = DisplayCountriesArgs(
      countries: results.rest,
      dividingLine: int.tryParse(results['dividing-line']),
      fields: [for(var f in results['fields'] as List<String>) 
        DisplayCountriesArgs.fieldOf(f)],
      file: results['file'],
      from: int.tryParse(results['from']),
      hBorder: results['h-border'],
      help: results['help'],
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

  List<List<String>> get asList {
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

  String get asString {  
    final countries = asList;
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
          if(arguments.dividingLine != null && (i % arguments.dividingLine! == 0)) 
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
    if(arguments.help){
      print(DisplayCountriesArgs._parser!.usage);
    }

    if(arguments.file != null && arguments.file != '') {
      var file = File(arguments.file!);
      file.writeAsStringSync(asString);
    }

    if(arguments.countries.isNotEmpty) {
      for(var cc in arguments.countries) {
        var error = '[${cc.toUpperCase()}] could not be found';
        if(CountryCodes.tryCountryCode(cc) == null) {
          print(error);
        }
      }     
      print(asString);
    } 
    if(arguments.printAll || (arguments.file == null && 
        arguments.countries.isEmpty && !arguments.help)) {
      countryCodes = CountryCodes.values;   
      print(asString);
    }
  }
}