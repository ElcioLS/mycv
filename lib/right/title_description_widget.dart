import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../themes.dart';

class TitleDescriptionWidget extends StatelessWidget {
  final String title;
  final String description;
  const TitleDescriptionWidget({
    super.key,
    required this.sizingInformation,
    required this.title,
    required this.description,
  });

  final SizingInformation sizingInformation;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: sizingInformation.deviceScreenType != DeviceScreenType.desktop
          ? const EdgeInsets.symmetric(horizontal: 16)
          : const EdgeInsets.all(0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title.toUpperCase(),
            style: GoogleFonts.montserrat(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: primaryColor,
            ),
          ),
          Wrap(
            children: [
              Text(
                description,
                style: GoogleFonts.montserrat(
                  fontSize: 20,
                  fontWeight: FontWeight.w200,
                  color: primaryColor,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
