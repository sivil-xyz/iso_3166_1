<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->

TODO: An implementation of ISO_3166_1 in a similar way to an enum, 
  group by id, name, alpha2 and alpha3. 
  It provides id, alpha2, alpha3, flag and prefix number info
  It is able to search a country its id,name, alpha2, alpha3, returns null
  otherwise. It provides multisearch as well.
  * It has a library for creating a command-line tool to display country information

## Features

TODO: List what your package can do. Maybe include images, gifs, or videos.
* It allows to get country information like id, name, alpha2, alpha3, international prefix number, flag emoji unicode
* It allows to create some CLI tools to display country information thanks to the DisplayCountries class by using CLI arguments
* It provides list_country tool that receive arguments passed by CLI to display countries

## Getting started

You can use this as a normal dependency in a Dart or Flutter application for listing or searching countries

A command-line tool is provided for an easy use and pretty display in a terminal, it can be saved in a file as well.

There are two methods to access this tool:
1) If you are using this package as a dependency, in the app folder you could try this:
  ''' dart run iso_361_1:list_countries --help ''''
2) If you want to download or upgrade a package in your global_packages folder inside your pub cache directory:
  ''' dart pub global activate iso_3611_1 '''
  ''' dart pub global run iso_3611_1:list_countries --help'''
  or simply use the shorthand if your bin folder from pub cache is reachable by your path env variable
  ''' list_countries --help '''

## Usage as a dependency (library package)

* [Get a country by its code](#get-a-country-by-its-code)
* [Get a country by its alpha2](#get-a-country-by-its-alpha2)
* [Get a country by its alpha3](#get-a-country-by-its-alpha3)
* [Get a country by its id](#get-a-country-by-its-id)
* [Get a country by its english name](#get-a-country-by-its-english-name)
* [Get a country or null by passing whatever you like](#get-a-country-or-null-by-passing-whatever-you-like)
* [Get a list of several countries](#get-a-list-of-several-countries)

### Get a country by its id, code

```dart
import 'package:iso_3166_1/iso_3166_1.dart';

print(CountryCodes.id724.toMap());

```

### Get a country by its alpha2

```dart
import 'package:iso_3166_1/iso_3166_1.dart';

print(CountryCodes.alphas2.ES.toMap());

```

### Get a country by its alpha3

```dart
import 'package:iso_3166_1/iso_3166_1.dart';

 print(CountryCodes.alphas3.ESP.toMap());

```

### Get a country by its english name

```dart
import 'package:iso_3166_1/iso_3166_1.dart';

  print(CountryCodes.names.spain.toMap());

```

### Get a country or null by passing whatever you like

```dart
import 'package:iso_3166_1/iso_3166_1.dart';

print(CountryCodes.tryCountryCode('es')?.toMap());

```

### Get a list of several countries

```dart
import 'package:iso_3166_1/iso_3166_1.dart';

print(
  CountryCodes
  .getCountryCodes(['es','de','uk','unknown'])
  .map((e) => e.toMap())
);

```

## Additional information

TODO: Tell users more about the package: where to find more information, how to 
contribute to the package, how to file issues, what response they can expect 
from the package authors, and more.
