class Flashcard {
  final String id;
  final String word;          // Слово на английском
  final String translation;   // Перевод
  final String? example;      // Пример использования (может быть пустым)
  int reviewCount;            // Сколько раз повторили
  DateTime nextReview;        // Когда следующее повторение

  Flashcard({
    required this.id,
    required this.word,
    required this.translation,
    this.example,
    this.reviewCount = 0,
    required this.nextReview,
  });

  Flashcard copyWith({
    String? id,
    String? word,
    String? translation,
    String? example,
    int? reviewCount,
    DateTime? nextReview,
  }) {
    return Flashcard(
      id: id ?? this.id,
      word: word ?? this.word,
      translation: translation ?? this.translation,
      example: example ?? this.example,
      reviewCount: reviewCount ?? this.reviewCount,
      nextReview: nextReview ?? this.nextReview,
    );
  }
}