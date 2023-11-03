import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../left/about_me.dart';
import '../left/body.dart';
import '../personal_avatar.dart';
import '../right/name_widget.dart';
import '../right/personal_Info.dart';
import '../right/projects.dart';
import '../skills.dart';

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
        // From Left Widget
        const PersonalAvatar(),
        const Body(),
        AboutMe(sizingInformation: sizingInformation),
        const Body(),
        Skills(sizingInformation: sizingInformation),

        //From Right Wdget
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
              title: 'Title',
            )
          ],
        )
      ],
    );
  }
}
