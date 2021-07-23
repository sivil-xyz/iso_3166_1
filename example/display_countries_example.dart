import 'package:iso_3166_1/iso_3166_1.dart';

void main() {
  // for printing countries with its defualt arguments

  var displayCountries = DisplayCountries(
    arguments: DisplayCountriesArgs(),
  );

  // display a list of the first countries in its own line  
  // print(displayCountries.asList.join('\n'));

  // by default print all the fields (columns) as a table, and title (header)
  // only print the countries passed to countrycodes parameter
  // print(displayCountries.asString);

  // if you want to use all the arguments, it is meant to be used by tools
  // display to a console and it could be saved in a file based on the passed args
  // displayCountries.run();

  //show the help, it is the same for all instances of this class
  // print(DisplayCountriesArgs.usage());

  //another form of showing help is to set to true this argument and execute them
  // displayCountries.arguments.help = true;
  // displayCountries.run();

  //
  displayCountries.arguments.countries = ['es', 'de', 'uk'];
  displayCountries.arguments = DisplayCountriesArgs(countries:  ['es', 'de', 'uk'] );
  displayCountries.run();


}