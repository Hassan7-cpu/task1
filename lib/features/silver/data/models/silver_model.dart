class SilverModel {
  final String name;
  final String symbol;
  final double price;

  SilverModel({
    required this.name,
    required this.symbol,
    required this.price,
  });

  factory SilverModel.fromJson(Map<String, dynamic> json) {
    return SilverModel(
      name: json['name'] as String,
      symbol: json['symbol'] as String,
      price: (json['price'] as num).toDouble(),
    );
  }
}