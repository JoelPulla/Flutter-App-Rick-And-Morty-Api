import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  const GradientButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomRight,
          colors: [
            Colors.black,
            Colors.transparent,
          ],
        ),
      ),
    );
  }
}

class GradientTop extends StatelessWidget {
  const GradientTop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          colors: [
            Colors.black,
            Colors.transparent,
          ],
        ),
      ),
    );
  }
}
