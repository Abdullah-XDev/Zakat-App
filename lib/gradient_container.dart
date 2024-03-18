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
            Color.fromARGB(255, 119, 118, 118),
            Color.fromARGB(255, 243, 234, 81),
            Color.fromARGB(255, 11, 11, 11)
          ],
        ),
      ),
      child: child,
    );
  }
}
