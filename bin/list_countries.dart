
import 'package:iso_3166_1/iso_3166_1.dart';


void main(List<String> args) {
  final displayCountries = DisplayCountries.fromArguments(args);
  displayCountries.run(); 
}