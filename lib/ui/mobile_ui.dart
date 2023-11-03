import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../personal_avatar.dart';
import '../skills.dart';
import '../user_data/personal_Info.dart';
import 'left/about_me.dart';
import 'right/name_widget.dart';
import 'right/projects.dart';
import 'ui_body.dart';

class MobileUI extends StatelessWidget {
  final SizingInformation sizingInformation;

  const MobileUI({
    super.key,
    required this.sizingInformation,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const PersonalAvatar(),
        const UIBody(),
        AboutMe(sizingInformation: sizingInformation),
        const UIBody(),
        Skills(sizingInformation: sizingInformation),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  NameWidget(
                    sizingInformation: sizingInformation,
                  ),
                  const PersonalInfo(),
                ],
              ),
            ),
            Projects(
              sizingInformation: sizingInformation,
              title: 'Dados',
            )
          ],
        )
      ],
    );
  }
}
