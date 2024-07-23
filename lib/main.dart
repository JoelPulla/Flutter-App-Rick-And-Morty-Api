import 'package:flutter/material.dart';
import 'package:peticion_hht/config/theme/theme_app.dart';
import 'package:peticion_hht/presentation/screens/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeApp().getTheme(1),
      debugShowCheckedModeBanner: false,
      title: 'Rick And Morty',
      home: const HomeScreen(),
    );
  }
}
