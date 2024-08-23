import 'dart:math';
import 'package:flutter/material.dart';
import 'package:random_dice/text_container.dart';
import 'package:google_fonts/google_fonts.dart';

final randomNum = Random();

class ShakeDice extends StatefulWidget {
  const ShakeDice({super.key});
  @override
  State<ShakeDice> createState() {
    return _ShakeDiceState();
  }
}

class _ShakeDiceState extends State<ShakeDice> {
  var valueDice = 2;

  void changeDice() {
    setState(() {
      valueDice = randomNum.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Ini adalah dadu ke - $valueDice",
          style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                  color: Colors.black,
                  letterSpacing: .5,
                  fontWeight: FontWeight.w400),
              fontSize: 20),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: SizedBox.fromSize(
            size: const Size.fromRadius(70),
            child: Image.asset(
              'assets/images/dice-$valueDice.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        TextButton(
          onPressed: changeDice,
          style: TextButton.styleFrom(
              backgroundColor: Colors.white,
              padding: const EdgeInsets.only(
                  top: 8, bottom: 8, left: 12, right: 12)),
          child: const TextContainer("Shake it"),
        ),
      ],
    );
  }
}
