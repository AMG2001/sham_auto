import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RecoveryPassword extends StatelessWidget {
  const RecoveryPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          right: 25, left: 8, top: 8, bottom: 8),
      child: Align(
        alignment: Alignment.centerRight,
        child: InkWell(
          onTap: () {},
          child: Text(
            'Recovery Password',
            style: GoogleFonts.lato(
                color: const Color(0xFF6a7293),
                fontWeight: FontWeight.bold,
                fontSize: 16),
          ),
        ),
      ),
    );
  }
}
