import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mycv/right/title_description_widget.dart';
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
          title: 'Aplicativo Delivery',
          description:
              'Aplicativo totalmente funcional, completo com várias telas e integração de Api Pix',
        ),
        TitleDescriptionWidget(
          sizingInformation: sizingInformation,
          title: 'Aplicativo Delivery',
          description:
              'Aplicativo totalmente funcional, completo com várias telas e integração de Api Pix',
        ),
        TitleDescriptionWidget(
          sizingInformation: sizingInformation,
          title: 'Aplicativo Delivery',
          description:
              'Aplicativo totalmente funcional, completo com várias telas e integração de Api Pix',
        ),
      ],
    );
  }
}
