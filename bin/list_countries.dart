
import 'dart:io';

import 'package:iso_3166_1/iso_3166_1.dart';


void main(List<String> args) {

  final displayCountries = DisplayCountries.fromArguments(args);
  displayCountries.run();
  
  // if(results['print'] || (results['file'] == null && results.rest.isEmpty)) {
  //   print(output);
  // }

  // if(results['file'] != null && results['file'] != '') {
  //   var file = File(results['file']);
  //   file.writeAsStringSync(output);

  // }

  // if(results.rest.isNotEmpty) {
  //   // var contrycodes = <CountryCode>[];
  //   for(var cc in results.rest) {
  //     var error = '[${cc.toUpperCase()}] could not be found';
  //     if(CountryCodes.tryCountryCode(cc) == null) {
  //       print(error);
  //     }
  //     // var country =  CountryCodes.tryCountryCode(cc);
  //     // if(country != null) {
  //     //   contrycodes.add(country);
  //     // }
  //     // else {
  //     //   print(res);
  //     // }
  //   }
  //   final countries = buildCountries(
  //     titleFields: results['fields'], 
  //     isTitleLowerCase: results['title-lowercase'],
  //     countryCodes: CountryCodes.getCountryCodes(results.rest),
  //   );
  //   var res = buildOutput(
  //     countries: countries, 
  //     isTitleLowerCase: results['title-lowercase'], 
  //     type: results['type'],          
  //     showTitle: results['title'],
  //     horizontalBorder: results['hborder'],
  //     divideEach: int.tryParse(results['divide-lines']),  
  //     showLines: results['lines'],
  //   );
  //   print(res);
  // }
  // else if(results.rest.length > 1){
  //   print('only one argument is needed if provided: Too many arguments error');
  // } 

}