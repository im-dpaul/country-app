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
    return CountryModel(
      commonName: json['name']['common'] ?? '',
      officialName: json['name']['official'] ?? '',
      currencyCode: json['currencies'][0]['code'] ?? '',
      currencyName: json['currencies'][0]['name'] ?? '',
      flagUrl: json['flags']['png'] ?? '',
    );
  }
}
