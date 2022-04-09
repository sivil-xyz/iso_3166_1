import 'package:iso_3166_1/iso_3166_1.dart';

void main() {
  // get a concrete country by its id code
  print(EnumCountryCode.id724.code.asMap);

  // get a concrete country by its alpha2 code
  print(EnumCountryAlpha2.ES.code.asMap);

  // get a concrete country by its alpha3 code
  print(EnumCountryAlpha3.ESP.code.asMap);

  // get a concrete country by its engish name
  print(EnumCountryName.spain.code.asMap);

  //try to get a country from whatever id, return null if it does not exist
  print(EnumCountryCodeExt.tryCountryCode('es')?.asMap);

  print(EnumCountryCodeExt.getCountryCodes(
    ['es','de','uk','unknown']).map((e) => e.asMap));
}