import 'package:flutter/material.dart';
import 'package:random_dice/shake_dice.dart';

const alignmentTopCenter = Alignment.topCenter;
const alignmentBottomCenter = Alignment.bottomCenter;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.colors});

  final List<Color> colors;

  void handleClick() {
    print("test");
  }

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: colors,
            begin: alignmentTopCenter,
            end: alignmentBottomCenter),
      ),
      child: const Center(child: ShakeDice()),
    );
  }
}
