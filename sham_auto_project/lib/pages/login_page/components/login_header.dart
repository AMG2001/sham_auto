import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/images/logo.png',
          width: MediaQuery.of(context).size.width * .45,
          height: MediaQuery.of(context).size.width * .4,
        ),
        Text('Hello Again!',
            style: GoogleFonts.bebasNeue(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: const Color(0xFF352a49))),
        const SizedBox(
          height: 10,
        ),
        Text(
          'Welcome back, you \'ve been missed',
          style: GoogleFonts.lato(
              color: const Color(0xFF352a49),
              fontWeight: FontWeight.bold,
              fontSize: 18),
        ),
        const SizedBox(
          height: 50,
        ),
      ],
    );
  }
}
