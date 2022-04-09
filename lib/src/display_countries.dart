  
import 'dart:convert';
import 'dart:io';
import 'package:args/args.dart';
import 'package:iso_3166_1/iso_3166_1.dart';
import 'package:pretty_json/pretty_json.dart';
import 'package:tabular/tabular.dart';
import 'package:csv/csv.dart';

enum EnumDisplayCountriesArgsField { 
  id, 
  name, 
  alpha2, 
  alpha3, 
  prefix, 
  flag 
}

enum EnumDisplayCountriesArgsOrder { 
  asc, 
  desc, 
  ascending, 
  descending 
}
enum EnumDisplayCountriesArgsType { 
  csv, 
  json, 
  list, 
  prettyJson, 
  table 
}

class DisplayCountriesArgs {  
  static const defaultType = EnumDisplayCountriesArgsType.table;
  static ArgParser? _parser;

  List<String> countries;
  int? dividingLine;
  List<EnumDisplayCountriesArgsField> fields;
  String? file;
  int? from;
  bool border;
  bool help;
  int? limit;
  bool lines;
  int linesPosition;
  EnumDisplayCountriesArgsOrder orderAfter;
  EnumDisplayCountriesArgsOrder orderBefore;
  bool printAll;
  bool title;
  bool titleLowercase;
  int? to;
  EnumDisplayCountriesArgsType type;

  DisplayCountriesArgs({
    this.countries = const [],
    this.dividingLine,
    this.fields = EnumDisplayCountriesArgsField.values, 
    this.file, 
    this.from, 
    this.border = true, 
    this.help = false,
    this.limit, 
    this.lines = false, 
    this.linesPosition = 0,
    this.orderAfter = EnumDisplayCountriesArgsOrder.asc,
    this.orderBefore = EnumDisplayCountriesArgsOrder.asc,
    this.printAll = false, 
    this.title = true, 
    this.titleLowercase = false, 
    this.to, 
    this.type = defaultType
  }) {
    _initParser();
  }

  static EnumDisplayCountriesArgsType typeOf(String myType) {
    var res = EnumDisplayCountriesArgsType.table;
    if(myType.toLowerCase() == 'csv') {
      res = EnumDisplayCountriesArgsType.csv;
    }
    else if(myType.toLowerCase() == 'json') {
      res = EnumDisplayCountriesArgsType.json;
    }
    else if(myType.toLowerCase() == 'pretty_json') {
      res = EnumDisplayCountriesArgsType.prettyJson;
    }
    else if(myType.toLowerCase() == 'list') {
      res = EnumDisplayCountriesArgsType.list;
    }
    return res;
  }

  static EnumDisplayCountriesArgsField fieldOf(String myField) {
    var res = EnumDisplayCountriesArgsField.id;
    if(myField.toLowerCase() == 'name') {
      res = EnumDisplayCountriesArgsField.name;
    }
    else if(myField.toLowerCase() == 'alpha2') {
      res = EnumDisplayCountriesArgsField.alpha2;
    }
    else if(myField.toLowerCase() == 'alpha3') {
      res = EnumDisplayCountriesArgsField.alpha3;
    }
    else if(myField.toLowerCase() == 'prefix') {
      res = EnumDisplayCountriesArgsField.prefix;
    }
    else if(myField.toLowerCase() == 'flag') {
      res = EnumDisplayCountriesArgsField.flag;
    }
    return res;
  }

  static EnumDisplayCountriesArgsOrder orderOf(String myField) {
    var res = EnumDisplayCountriesArgsOrder.asc;
    if(myField.toLowerCase() == 'ascending') {
      res = EnumDisplayCountriesArgsOrder.ascending;
    }
    else if(myField.toLowerCase() == 'desc') {
      res = EnumDisplayCountriesArgsOrder.desc;
    }
    else if(myField.toLowerCase() == 'descending') {
      res = EnumDisplayCountriesArgsOrder.descending;
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
      'sort-after',
      '$orderAfter',
      'sort-before',
      '$orderBefore',
      'to',
      '${to ?? ''}',
      'type',
      type.toString()
        .substring(DisplayCountriesArgs
          .defaultType.toString().indexOf('.') + 1),
      'help',
      '$help',
      'border',
      '$border'
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
        'sort-before',
        defaultsTo: 'asc',
        help: 'sort before applying the filter',
        allowed: EnumDisplayCountriesArgsOrder.values.map(
              (e) => e.toString().substring(e.toString().indexOf('.') + 1)),
      );

      _parser!.addOption(
        'sort-after',
        defaultsTo: 'asc',
        help: 'sort after applying the filter',
        allowed: EnumDisplayCountriesArgsOrder.values.map(
              (e) => e.toString().substring(e.toString().indexOf('.') + 1)),
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
          ...EnumDisplayCountriesArgsType.values.map(
              (e) => e.toString().substring(e.toString().indexOf('.') + 1)),
        ],
        help: 'The type of format output',
      );

      //ADDING FLAGS

      _parser!.addFlag(
        'border',
        defaultsTo: true,
        help: 'Print an outer border for table',
      );

      _parser!.addFlag(
        'help',
        abbr: 'h',
        defaultsTo: false,
        negatable: false,
        help: 'Show the help'
      );


      _parser!.addFlag(
        'lines',
        defaultsTo: false,
        negatable: false,
        help: 'Show the lines in the output'
      );

      _parser!.addFlag(
        'print-all',
        abbr: 'p',
        defaultsTo: false,
        help: 'Show all the results even if there is any search in progress',
        negatable: false,
      );

      _parser!.addFlag(
        'title',
        defaultsTo: true,
        help: 'Show a title (heading). Show the field names in each column'
      );

      _parser!.addFlag(
        'title-lowercase',
        defaultsTo: false,
        negatable: false,
        help: 'Put the title in lowercase'
      );

      //ADDING MULTIOPTION

      _parser!.addMultiOption(
        'fields',
        defaultsTo: EnumDisplayCountriesArgsField.values.map((e) => e.toString().substring(e.toString().indexOf('.') + 1)),
        allowed: [
          ...EnumDisplayCountriesArgsField.values.map((e) => e.toString().substring(e.toString().indexOf('.') + 1)),
        ],
        help: 'Fields (columns) to display in the output',
        valueHelp: 'field1,field2,...'
      );
      // ADDING OPTIONS
    }
  }
}

class DisplayCountries {
  DisplayCountriesArgs arguments;

  DisplayCountries({
    required this.arguments, 
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
      border: results['border'],
      fields: [for(var f in results['fields'] as List<String>) 
        DisplayCountriesArgs.fieldOf(f)],
      file: results['file'],
      from: int.tryParse(results['from']),
      help: results['help'],
      limit: int.tryParse(results['limit']),
      lines: results['lines'],
      linesPosition: int.tryParse(results['lines-position']) ?? 0,
      orderAfter: DisplayCountriesArgs.orderOf(results['sort-after']),
      orderBefore: DisplayCountriesArgs.orderOf(results['sort-before']),
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
    );
        
  }

  List<CountryCode> get countryCodes {
    var cCodes = (arguments.countries.isNotEmpty)
    ? EnumCountryCodeExt.getCountryCodes(arguments.countries)
    : EnumCountryCodeExt.codes;
    print(arguments.orderAfter);
    if(arguments.orderBefore == EnumDisplayCountriesArgsOrder.desc || 
        arguments.orderBefore == EnumDisplayCountriesArgsOrder.descending) {
      cCodes = cCodes.reversed.toList();
    }
    cCodes =  cCodes.getRange(
        (arguments.from != null && arguments.from! > 0 && arguments.from! <= cCodes.length)? arguments.from!-1 : 0, 
        (arguments.to != null && arguments.to! <= cCodes.length && arguments.to! > 0)? arguments.to! : cCodes.length)
        .take(arguments.limit ?? cCodes.length).toList();
    if(arguments.orderAfter == EnumDisplayCountriesArgsOrder.desc || 
        arguments.orderAfter == EnumDisplayCountriesArgsOrder.descending) {
      cCodes = cCodes.reversed.toList();
    }
    return cCodes;
  }

  List<List<String>> get asList {
    final countries = <List<String>>[    
        arguments.fields.map((e) => e.toString()
          .substring(e.toString().indexOf('.') + 1)).toList()
    ];      

    // var cCodes = countryCodes;
    
    for( var c in countryCodes) {
      var fields = <String>[];

      for(var field in countries.first) {
        if(field.contains('id')) {
          fields.add(c.id);
        }
        if(field.contains('name')) {
          fields.add(c.officialName);
        }
        if(field.contains('alpha2')) {
          fields.add(c.alpha2);
        }
        if(field.contains('alpha3')) {
          fields.add(c.alpha3);
        }
        if(field.contains('prefix')) {
          fields.add(c.prefix);
        }
        if(field.contains('flag')) {
          fields.add(c.flagUnicode);
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

    Map<dynamic, Side>? alignFields;
      Map<dynamic, String Function(dynamic)>? format;

    if(arguments.title && arguments.fields.isNotEmpty) {
      alignFields = {};
      format = {};
      if(countries.first.contains('#')) {
        alignFields['#'] = Side.end;
      }
      if(countries.first.contains('id')) {
        alignFields[(arguments.titleLowercase)? 'id':'ID'] = Side.start;
      }
      if(countries.first.contains('alpha2')) {
        alignFields[(arguments.titleLowercase)? 'alpha2':'ALPHA2'] = Side.center;
      }
      if(countries.first.contains('alpha3')) {
        alignFields[(arguments.titleLowercase)? 'alpha3':'ALPHA3'] = Side.start;
      }
      if(countries.first.contains('prefix')) {
        alignFields[(arguments.titleLowercase)? 'prefix':'PREFIX'] = Side.end;
      }
      if(countries.first.contains('flag')) {
        alignFields[(arguments.titleLowercase)? 'flag':'FLAG'] = Side.start;
      }

      // var fields = arguments.fields.map((e) => e.toString().toLowerCase()
      // .substring(e.toString().indexOf('.') + 1)).toList();
      // if(format != null) {
        if(countries.first.contains('alpha3')) {
          format[(arguments.titleLowercase)? 'alpha3':'ALPHA3'] = (val) => ' ' + val + ' ';
        }
        if(countries.first.contains('flag')) {
          format[(arguments.titleLowercase)? 'flag':'FLAG'] = (val) => ' ' + val + ' ';
        }
        if(countries.first.contains('id')) {
          format[(arguments.titleLowercase)? 'id':'ID'] = (val) => ' ' + val + ' ';
        }
        if(countries.first.contains('name')) {
          format[(arguments.titleLowercase)? 'name':'NAME'] = (val) => ' ' + val + ' ';
        }
        if(countries.first.contains('prefix')) {
          format[(arguments.titleLowercase)? 'prefix':'PREFIX'] = (val) => ' ' + val + ' ';
        }
      // }

      //at the end of all operations replace the header title
      countries.first = countries.first.map((e) => 
        (arguments.titleLowercase)? e.toLowerCase() : e.toUpperCase()).toList();
    }     
    else {
      countries.removeAt(0);
    }
    String output = 'An error has ocurred';

    if(arguments.type == EnumDisplayCountriesArgsType.table) {
      
      var rowDividers = [
        if(arguments.title) 1, 
        countries.length, 
        for(var i=2; i < countries.length; i++) 
          if((arguments.dividingLine != null && arguments.dividingLine! > 0) && 
              (i % arguments.dividingLine! == 0)) 
            (arguments.title)? i + 1 : i
      ];
      
      output = tabular(
        countries, 
        align: alignFields,
        border: (arguments.border)? Border.all : Border.none,
        rowDividers: rowDividers,
        format: format,
      );
    }
    else if(arguments.type == EnumDisplayCountriesArgsType.json){
      output = json.encode(countries);
    }
    else if(arguments.type == EnumDisplayCountriesArgsType.prettyJson) {
      output = prettyJson(countries);
    }
    else if(arguments.type == EnumDisplayCountriesArgsType.csv){
      output = const ListToCsvConverter().convert(countries);
    }
    else if(arguments.type == EnumDisplayCountriesArgsType.list){
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
      print('$file saved successfully');
    }

    if(arguments.countries.isNotEmpty) {
      for(var cc in arguments.countries) {
        var error = '[${cc.toUpperCase()}] could not be found';
        if(EnumCountryCodeExt.tryCountryCode(cc) == null) {
          print(error);
        }
      }     
      print(asString);
    } 
    if(arguments.printAll || (arguments.file == null && 
        arguments.countries.isEmpty && !arguments.help)) {
      arguments.countries = [];
      print(asString);
    }
  }
}