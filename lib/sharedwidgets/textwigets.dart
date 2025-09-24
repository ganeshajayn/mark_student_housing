import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Textwigets extends StatelessWidget {
  final String text;
  const Textwigets({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
