import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../const/themes.dart';

class DetailSkill extends StatelessWidget {
  final SizingInformation sizingInformation;
  final String skillName;
  final double skillValue;

  const DetailSkill({
    super.key,
    required this.sizingInformation,
    required this.skillName,
    required this.skillValue,
  });

  @override
  Widget build(BuildContext context) {
    // return
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 19),
      child: Row(
        children: [
          Text(
            skillName,
            style: GoogleFonts.montserrat(
              fontSize: 20,
              color:
                  sizingInformation.deviceScreenType == DeviceScreenType.desktop
                      ? Colors.white
                      : primaryColor,
              fontWeight: FontWeight.w100,
            ),
          ),
          const SizedBox(width: 50),
          Expanded(
            child: LinearPercentIndicator(
              percent: skillValue,
              backgroundColor: primaryColor,
              progressColor: skillValue <= .5 ? Colors.red : Colors.yellow,
            ),
          ),
        ],
      ),
    );
  }
}
