import 'package:iso_3166_1/iso_3166_1.dart';
import 'package:iso_3166_1/src/country_code.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    const oneCountry = CountryCode.withEmptyValues();

    const exactCountry = CountryCode.withEmptyValues(id: '004');

    const expectedCountry = CountryCodes.id004;

    setUp(() {
      // Additional setup goes here.
    });

    test('CountryCodes are equal with the same ID Test', () {
      expect(oneCountry == exactCountry, false);
      expect(expectedCountry == exactCountry, true);
    });

    test('tryCountryCode Function Test', () {
      for(var c in CountryCodes.values) {
        expect(c.id, CountryCodes.tryCountryCode(c.id)!.id);
        expect(c.name, CountryCodes.tryCountryCode(c.id)!.name);
        expect(c.alpha2, CountryCodes.tryCountryCode(c.id)!.alpha2);
        expect(c.alpha3, CountryCodes.tryCountryCode(c.id)!.alpha3);
        expect(c.prefix, CountryCodes.tryCountryCode(c.id)!.prefix);
        expect(c.uFlag, CountryCodes.tryCountryCode(c.id)!.uFlag);
      }
      expect(oneCountry == exactCountry, false);
      expect(expectedCountry == exactCountry, true);
    });
  });
}
