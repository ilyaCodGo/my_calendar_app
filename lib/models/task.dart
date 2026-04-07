class Task {
  final String id;          // Уникальный номер задачи (чтобы отличать одну от другой)
  final String title;       // Название задачи (например, "Выучить 10 слов")
  final DateTime date;      // Дата и время задачи
  bool isCompleted;         // Выполнена ли задача (галочка или нет)

  // Конструктор - это метод, который создает новый объект Task
  Task({
    required this.id,
    required this.title,
    required this.date,
    this.isCompleted = false, // По умолчанию задача не выполнена
  });

  // Метод для копирования задачи (например, чтобы изменить только статус)
  Task copyWith({
    String? id,
    String? title,
    DateTime? date,
    bool? isCompleted,
  }) {
    return Task(
      id: id ?? this.id,
      title: title ?? this.title,
      date: date ?? this.date,
      isCompleted: isCompleted ?? this.isCompleted,
    );
  }
}