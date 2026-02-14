class GoldModel {
  final String name;
  final String symbol;
  final double price;

  GoldModel({
    required this.name,
    required this.symbol,
    required this.price,
  });

  factory GoldModel.fromJson(Map<String, dynamic> json) {
    return GoldModel(
      name: json['name'] as String,
      symbol: json['symbol'] as String,
      price: (json['price'] as num).toDouble(),
    );
  }
}