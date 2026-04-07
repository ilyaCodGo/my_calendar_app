import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'screens/home_screen.dart'; // Импорт нашего будущего экрана

void main() async {
  // 1. Инициализация Флаттера
  WidgetsFlutterBinding.ensureInitialized();

  // 2. Инициализация базы данных Hive
  await Hive.initFlutter();

  // В будущем здесь мы зарегистрируем наши модели (Task и Flashcard) для Hive
  // Но пока запустим приложение без сложной регистрации, чтобы не ошибиться

  // 3. Запуск приложения
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return NewWidget();
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'English Calendar',
      theme: ThemeData(
        // Это тема приложения. Здесь задаются цвета и шрифты.
        // primarySwatch: Colors.blue, // В новых версиях используется colorScheme
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: HomeScreen(), // Главный экран приложения
      debugShowCheckedModeBanner: false, // Убирает надпись "DEBUG" в углу
    );
  }
}