import 'package:flutter/material.dart';
import 'package:flutter_fidget/Constants/theme.dart';
import 'package:flutter_fidget/Flutter%20Elements/flutter_elements_page.dart';
import 'Home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: primaryColor!),
        useMaterial3: false,
      ),
      home: const FlutterElementsPage(),
    );
  }
}
