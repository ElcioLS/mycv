import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mycv/ui/const/themes.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NameWidget extends StatelessWidget {
  final SizingInformation sizingInformation;

  const NameWidget({super.key, required this.sizingInformation});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: primaryColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FittedBox(
              fit: BoxFit.fitWidth,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Text(
                  'Elcio Lopes da Silva',
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.bold,
                    fontSize: sizingInformation.deviceScreenType ==
                            DeviceScreenType.desktop
                        ? 50
                        : 30,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
