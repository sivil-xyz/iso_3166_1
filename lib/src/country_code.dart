class CountryCode {
  final String alpha2;
  final String alpha3;
  final String id;
  final String officialName;
  final String uFlag;
  final String prefix;

  const CountryCode({
    required this.id,
    required this.alpha2,
    required this.alpha3,
    required this.officialName,
    required this.uFlag,
    required this.prefix,
  });

  const CountryCode.withEmptyValues({
    this.id = '',
    this.alpha2 = '',
    this.alpha3 = '',
    this.officialName = '',
    this.uFlag = '',
    this.prefix = '',
  });

  CountryCode.fromMap(Map<String, dynamic> map)
  : this(
    alpha2: map['alpha2'],
    alpha3: map['alpha3'],
    id: map['id'],
    officialName: map['officialName'],
    prefix: map['prefix'],
    uFlag: map['uFlag'],
  );

  CountryCode.clone(CountryCode instance, {
    String? id, 
    String? alpha2, 
    String? alpha3,
    String? officialName,
    String? prefix,
    String? uFlag,
  }) : 
  this(
    id: id ?? instance.id,
    alpha2: alpha2 ?? instance.alpha2,
    alpha3: alpha3 ?? instance.alpha3,
    officialName: officialName ?? instance.officialName,
    prefix: prefix ?? instance.prefix,
    uFlag: uFlag ?? instance.uFlag,
  );

  CountryCode clone({
    String? id, 
    String? alpha2, 
    String? alpha3,
    String? officialName,
    String? prefix,
    String? uFlag,
  }) =>
    CountryCode.clone(this,
      id: id,
      alpha2: alpha2,
      alpha3: alpha3,
      officialName: officialName,
      prefix: prefix,
      uFlag: uFlag,
    );
  

  @override
  bool operator ==(other) {
    var o = other as CountryCode;
    return id == o.id;
  }

  String get flagUnicode => uFlag.runes
    .map((e) => '\\u{${e.toRadixString(16)}}').join('');

  Map<String, dynamic> get asMap => {
      'alpha2' : alpha2,
      'alpha3' : alpha3,
      'id' : id,
      'officialName' : officialName,
      'prefix' : prefix,
      'uFlag' : uFlag,
    };
  
  @override
  int get hashCode => id.hashCode;


}