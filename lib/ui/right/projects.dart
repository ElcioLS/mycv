import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mycv/ui/right/title_description_widget.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Projects extends StatelessWidget {
  final String title;
  const Projects({
    super.key,
    required this.sizingInformation,
    required this.title,
  });

  final SizingInformation sizingInformation;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 50),
          padding:
              sizingInformation.deviceScreenType != DeviceScreenType.desktop
                  ? const EdgeInsets.symmetric(horizontal: 16)
                  : const EdgeInsets.all(0),
          child: FittedBox(
              fit: BoxFit.fitWidth,
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        title.toUpperCase(),
                        style: GoogleFonts.montserrat(
                            fontSize: 50,
                            fontWeight: FontWeight.w400,
                            color: Colors.black87),
                      ),
                    ],
                  ),
                ],
              )),
        ),
        TitleDescriptionWidget(
          sizingInformation: sizingInformation,
          title: 'Educação',
          description:
              'Software Engineer, 2024 \nHARVARD CS50 2023 \nPostgraduate Cyber Security 2019',
        ),
        TitleDescriptionWidget(
          sizingInformation: sizingInformation,
          title: 'Languages',
          description:
              'Português BR - Fluente \nInglês EN - B1 - Intermediário \nFrancês FR - Iniciante',
        ),
        TitleDescriptionWidget(
          sizingInformation: sizingInformation,
          title: 'Portfólio',
          description:
              '*Aplicativo Delivery, InovaConcipa, totalmente funcional, completo com várias telas e integração de Api PIX Sicoob. \n*Aplicativo de criação de currículos gratuito, com funcções especiais e integração com API Chat-GPT 3.5',
        ),
      ],
    );
  }
}
