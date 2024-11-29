class Food {
  final String name;
  final int calories;
  final double protein;
  final double carbs;

  Food({
    required this.name,
    required this.calories,
    required this.protein,
    required this.carbs,
  });

  factory Food.fromJson(Map<String, dynamic> json) {
    return Food(
      name: json['name'] ?? 'Unknown',
      calories: json['calories'] ?? 0,
      protein: json['protein'] ?? 0.0,
      carbs: json['carbs'] ?? 0.0,
    );
  }
}
