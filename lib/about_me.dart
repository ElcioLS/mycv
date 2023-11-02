import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mycv/themes.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({
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
                      'About me'.toUpperCase(),
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
          Text(
            'Sou desenvolvedor mobile especialista em Flutter com amplo conhecimento, etc...',
            textAlign:
                sizingInformation.deviceScreenType == DeviceScreenType.mobile
                    ? TextAlign.justify
                    : TextAlign.left,
            style: GoogleFonts.montserrat(
              fontSize: 20,
              color:
                  sizingInformation.deviceScreenType == DeviceScreenType.desktop
                      ? Colors.white
                      : primaryColor,
              fontWeight: FontWeight.w100,
            ),
          ),
        ],
      ),
    );
  }
}
