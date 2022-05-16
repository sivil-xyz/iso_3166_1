import 'package:iso_3166_1/iso_3166_1.dart';
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
      for(var c in EnumCountryCode.codes) {
        expect(c.id, EnumCountryCode.tryCountryCode(c.id)!.id);
        expect(c.officialName, EnumCountryCode.tryCountryCode(c.id)!.officialName);
        expect(c.alpha2, EnumCountryCode.tryCountryCode(c.id)!.alpha2);
        expect(c.alpha3, EnumCountryCode.tryCountryCode(c.id)!.alpha3);
        expect(c.prefix, EnumCountryCode.tryCountryCode(c.id)!.prefix);
        expect(c.uFlag, EnumCountryCode.tryCountryCode(c.id)!.uFlag);
      }
      expect(oneCountry == exactCountry, false);
      expect(expectedCountry == exactCountry, true);
    });
  });
}
