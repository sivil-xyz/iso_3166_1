import 'package:iso_3166_1/iso_3166_1.dart';

void main() {
  // for printing countries with its defualt arguments

  var displayCountries = DisplayCountries(
    arguments: DisplayCountriesArgs(),
    countryCodes: CountryCodes.values.take(10).toList()
  );

  // display a list of the first countries in its own line  
  print(displayCountries.asList.join('\n'));

  // by default print all the fields (columns) as a table, and title (header)
  // only print the countries passed to countrycodes parameter
  print(displayCountries.asString);

  // if you want to use all the arguments, it is meant to be used by tools
  // display to a console and it could be saved in a file based on the passed args
  displayCountries.run();
  
  print(DisplayCountriesArgs.usage());
}