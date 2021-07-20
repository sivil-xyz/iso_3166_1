import 'package:iso_3166_1/iso_3166_1.dart';

void main() {
  // get a concrete country by its id code
  print(CountryCodes.id724.toMap());

  // get a concrete country by its alpha2 code
  print(CountryCodes.alphas2.ES.toMap());

  // get a concrete country by its alpha3 code
  print(CountryCodes.alphas3.ESP.toMap());

  // get a concrete country by its engish name
  print(CountryCodes.names.spain.toMap());

  //try to get a country from whatever id, return null if it does not exist
  print(CountryCodes.tryCountryCode('es')?.toMap());
}