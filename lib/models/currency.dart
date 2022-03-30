class Currency {
  const Currency({
    required this.id,
    required this.name,
    required this.imagePath,
    required this.ticker,
    required this.price,
    required this.about
  });

  final String id;
  final String name;
  final String imagePath;
  final String ticker;
  final double price;
  final String about;
}