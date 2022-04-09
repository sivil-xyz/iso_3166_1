import 'package:iso_3166_1/iso_3166_1.dart';
import 'package:iso_3166_1/src/country_code.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    const oneCountry = CountryCode.withEmptyValues();

    const exactCountry = CountryCode.withEmptyValues(id: '004');

    var expectedCountry = EnumCountryCode.id004.code;

    setUp(() {
      // Additional setup goes here.
    });

    test('CountryCodes are equal with the same ID Test', () {
      expect(oneCountry == exactCountry, false);
      expect(expectedCountry == exactCountry, true);
    });

    test('tryCountryCode Function Test', () {
      for(var c in EnumCountryCodeExt.codes) {
        expect(c.id, EnumCountryCodeExt.tryCountryCode(c.id)!.id);
        expect(c.officialName, EnumCountryCodeExt.tryCountryCode(c.id)!.officialName);
        expect(c.alpha2, EnumCountryCodeExt.tryCountryCode(c.id)!.alpha2);
        expect(c.alpha3, EnumCountryCodeExt.tryCountryCode(c.id)!.alpha3);
        expect(c.prefix, EnumCountryCodeExt.tryCountryCode(c.id)!.prefix);
        expect(c.uFlag, EnumCountryCodeExt.tryCountryCode(c.id)!.uFlag);
      }
      expect(oneCountry == exactCountry, false);
      expect(expectedCountry == exactCountry, true);
    });
  });
}
