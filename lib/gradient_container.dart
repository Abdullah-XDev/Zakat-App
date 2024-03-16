import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  final Widget child;

  const GradientContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color.fromARGB(255, 250, 204, 177),
            Color.fromARGB(255, 226, 176, 146),
            Color.fromARGB(255, 233, 136, 80)
          ],
        ),
      ),
      child: child,
    );
  }
}
