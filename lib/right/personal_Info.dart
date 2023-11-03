import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../themes.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FittedBox(
            fit: BoxFit.fitWidth,
            child: Text(
              'Vancouver, BC, CA',
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w200,
                fontSize: 30,
                color: primaryColor,
              ),
            ),
          ),
          FittedBox(
            fit: BoxFit.fitWidth,
            child: Text(
              'phone: +(0)1 55593649',
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w200,
                fontSize: 30,
                color: primaryColor,
              ),
            ),
          ),
          FittedBox(
            fit: BoxFit.fitWidth,
            child: Text(
              'etflutter@gmail.com',
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w200,
                fontSize: 30,
                color: primaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
