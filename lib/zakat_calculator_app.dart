import 'package:flutter/material.dart';
import 'package:zakat_app/zakat_calculator_screen.dart';

class ZakatCalculatorApp extends StatelessWidget {
  const ZakatCalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zakat Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ZakatCalculatorScreen(),
    );
  }
}
