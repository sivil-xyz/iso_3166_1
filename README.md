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

An implementation of ISO_3166_1 in a similar way to an enum, 
  group by id, name, alpha2 and alpha3. 
  It provides id, alpha2, alpha3, flag and prefix number info
  It is able to search a country its id,name, alpha2, alpha3, returns null
  otherwise. It provides multisearch as well.
  * It has a library for creating a command-line tool to display country information

## Features

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
  ''' dart pub global activate iso_3166_1 '''
  ''' dart pub global run iso_3166_1:list_countries --help'''
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

print(EnumCountryCode.id724.code.asMap);

```

### Get a country by its alpha2

```dart
import 'package:iso_3166_1/iso_3166_1.dart';

print(EnumCountryAlpha2.ES.code.asMap);

```

### Get a country by its alpha3

```dart
import 'package:iso_3166_1/iso_3166_1.dart';

 print(EnumCountryAlphas3.ESP.code.asMap);

```

### Get a country by its english name

```dart
import 'package:iso_3166_1/iso_3166_1.dart';

  print(EnumCountryName.spain.code.asMap);

```

### Get a country or null by passing whatever you like

```dart
import 'package:iso_3166_1/iso_3166_1.dart';

print(EnumCountryCode.tryCountryCode('es')?.asMap);

```

### Get a list of several countries

```dart
import 'package:iso_3166_1/iso_3166_1.dart';

print(
  EnumCountryCodeExt
  .getEnumCountryCode(['es','de','uk','unknown'])
  .map((e) => e.asMap)
);

```

## Usage of DisplayCountries class
This class is used for the list_countries tool.

Examples are under example/lib.

You can use this to extend the class or to create your own CLI tool.

## Usage as a tool, under bin directory
The following is for using as a command-line tool, more examples under example/bin folder

There are two ways to run the tool:

1) From a package that depends on this package and it is listed in .packages file
    ```console
      dart run iso_3166_1:list_countries [options/flags] [searched countries are separated by space]
    ```

2) To download and upgrade a package to the pub cache and create links to the tools
    ```console
      pub global activate iso_3166_1

  * Then you can choose between these to run the tool
    ```console
      pub global run list_countries
      list_countries
    ```
    #### EXAMPLES

    It shows the help, options, allowed and default values
      ```console
        list_countries -h
      ```

    It searchs, show and save to a file certian countries
      ```console
        list_countries -f myFile.txt italy esp pt 20 unknown
  ```

## Additional information

For issues or if you want to contact me click on github or publisher links
