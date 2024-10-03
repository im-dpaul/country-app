class CountryModel {
  final String commonName;
  final String officialName;
  final String currencyCode;
  final String currencyName;
  final String flagUrl;

  CountryModel({
    required this.commonName,
    required this.officialName,
    required this.currencyCode,
    required this.currencyName,
    required this.flagUrl,
  });

  factory CountryModel.fromJson(Map<String, dynamic> json) {
    Map currencies = json['currencies'].values.first;
    return CountryModel(
      commonName: json['name']['common'] ?? '',
      officialName: json['name']['official'] ?? '',
      currencyCode: currencies['symbol'] ?? '',
      currencyName: currencies['name'] ?? '',
      flagUrl: json['flags']['png'] ?? '',
    );
  }
}
