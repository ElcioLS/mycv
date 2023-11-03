import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mycv/ui/const/themes.dart';
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
                      'Quem sou'.toUpperCase(),
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
            'Sou Engenheiro de Software e desenvolvedor mobile especialista em Flutter Dart com conhecimento em diversas áres de TI, APIs, Serviços Rest, Firebird, etc. Também programo em Python e estou iniciando em C++ com objetivo de alcaçar a senioridade em Desenvolvimento CrossPlatform para Flutter/Dart e Python',
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
