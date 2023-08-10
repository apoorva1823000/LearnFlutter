import 'package:bmi_calculator/components/constants.dart';
import 'package:bmi_calculator/pages/results.dart';
import 'package:flutter/material.dart';
import 'pages/input.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
            color: backgroundColor,
            elevation: 2,
            centerTitle: true,
            scrolledUnderElevation: 20),
        scaffoldBackgroundColor: backgroundColor,
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.white),
          bodyMedium: TextStyle(color: Colors.white),
        ),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/input',
      routes: {
        '/input': (context) => const InputPage(),
        '/results': (context) => const ResultsPage(),
      },
    );
  }
}
