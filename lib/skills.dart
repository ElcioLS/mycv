import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'ui/left/detail_skill.dart';

class Skills extends StatelessWidget {
  const Skills({
    super.key,
    required this.sizingInformation,
  });

  final SizingInformation sizingInformation;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        children: [
          FittedBox(
            fit: BoxFit.fitWidth,
            child: Row(
              children: [
                Row(
                  children: [
                    Text(
                      'Skills'.toUpperCase(),
                      style: GoogleFonts.montserrat(
                        fontSize: 50,
                        color: sizingInformation.deviceScreenType ==
                                DeviceScreenType.desktop
                            ? Colors.white
                            : Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          DetailSkill(
              sizingInformation: sizingInformation,
              skillName: 'Flutter',
              skillValue: 0.9),
          DetailSkill(
              sizingInformation: sizingInformation,
              skillName: 'Rest',
              skillValue: 0.7),
          DetailSkill(
              sizingInformation: sizingInformation,
              skillName: 'Firebase',
              skillValue: 0.6),
          DetailSkill(
              sizingInformation: sizingInformation,
              skillName: 'Python',
              skillValue: 0.8),
          DetailSkill(
              sizingInformation: sizingInformation,
              skillName: 'C++',
              skillValue: 0.2),
        ],
      ),
    );
  }
}
