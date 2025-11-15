import 'package:flutter/material.dart';
import 'screens/main_menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kuis UI/UX Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      darkTheme: ThemeData.dark().copyWith(
        primaryColor: Colors.blueAccent,
        useMaterial3: true,
      ),
      home: const MainMenu(),
      debugShowCheckedModeBanner: false,
    );
  }
}