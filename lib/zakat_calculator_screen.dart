import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zakat_app/gradient_container.dart';

class ZakatCalculatorScreen extends StatefulWidget {
  const ZakatCalculatorScreen({super.key});

  @override
  _ZakatCalculatorScreenState createState() => _ZakatCalculatorScreenState();
}

class _ZakatCalculatorScreenState extends State<ZakatCalculatorScreen> {
  final TextEditingController _amountController = TextEditingController();
  double _zakatAmount = 0.0;

  void _calculateZakat() {
    double amount = double.tryParse(_amountController.text) ?? 0.0;
    setState(() {
      _zakatAmount = amount * 0.025; // Zakat is typically 2.5% of the amount
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientContainer(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: _amountController,
                decoration: const InputDecoration(
                  labelText: 'Enter your amount',
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 50),
              ElevatedButton(
                onPressed: _calculateZakat,
                child: const Text(
                  'Calculate Zakat',
                  style: TextStyle(fontSize: 15),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Your Zakat amount is: $_zakatAmount',
                style: const TextStyle(fontSize: 20),
              ),
              Text(
                'Created by Eng.Abdullah',
                style: GoogleFonts.lato(
                  color: const Color.fromARGB(255, 37, 35, 35),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
