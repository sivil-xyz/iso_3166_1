import 'package:iso_3166_1/iso_3166_1.dart';
import 'package:iso_3166_1/src/display_countries.dart';

void main() {

  // for printing countries with its defualt arguments
  var displayCountries = DisplayCountries(
    arguments: DisplayCountriesArgs(),
  );

  // display a list of the first countries in its own line  
  print(displayCountries.asList.join('\n'));

  // by default print all the fields (columns) as a table, and title (header)
  // only print the countries passed to countrycodes parameter
  print(displayCountries.asString);

  // if you want to use all the arguments, it is meant to be used by tools
  // display to a console and it could be saved in a file based on the passed args
  displayCountries.run();

  //show the help, it is the same for all instances of this class
  print(DisplayCountriesArgs.usage());

  //another form of showing help is to set to true this argument and execute them
  displayCountries.arguments.help = true;

  // lookup for this countries based on their id, name, alphas
  displayCountries.arguments.countries = ['es', 'unknown' 'de', 'uk'];
  // displayCountries.arguments = DisplayCountriesArgs(countries:  ['es', 'unknown','de', 'uk'] );

  // divides the results with a line every 5 times
  displayCountries.arguments.countries = [];
  displayCountries.arguments.dividingLine = 5;

  // show only the first 5 resuls
  displayCountries.arguments.limit = 10;

  // show only these fields or columns
  displayCountries.arguments.fields = [
    EnumDisplayCountriesArgsField.alpha2,
    EnumDisplayCountriesArgsField.alpha3,
    EnumDisplayCountriesArgsField.name, 
  ];

  // border and dividingline are removed
  displayCountries.arguments.border = false;
  displayCountries.arguments.dividingLine = 0;

  // save this output to a file, 
  // if you want to print the countires to the console use --printAll
  // while you are using other options
  displayCountries.arguments.file = 'p.txt';
  displayCountries.arguments.printAll = true;

  // print a range of results
  // if range is less than 0, the start index will be set to 0
  // if range is greater than the end index will be set to length
  displayCountries.arguments.from = 15;
  displayCountries.arguments.to = 30;

  // show the lines, by default the first column
  displayCountries.arguments.lines = true;

  // do not show the title header
  displayCountries.arguments.title = false;

  //show the title in lowercase
  displayCountries.arguments.titleLowercase = true;

  // the type for displaying the data
  displayCountries.arguments.type = EnumDisplayCountriesArgsType.csv;

  // run according to the arguments we passed to the instance
  displayCountries.run();


}