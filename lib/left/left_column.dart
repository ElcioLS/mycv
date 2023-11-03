import 'package:flutter/material.dart';
import 'package:mycv/skills.dart';
import 'package:mycv/themes.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../personal_avatar.dart';
import 'about_me.dart';
import 'body.dart';

class LeftColumn extends StatelessWidget {
  final SizingInformation sizingInformation;

  const LeftColumn(this.sizingInformation, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 3 * 1,
      color: primaryColor,
      child: Column(
        children: [
          const PersonalAvatar(),
          const Body(),
          AboutMe(sizingInformation: sizingInformation),
          const Body(),
          Skills(sizingInformation: sizingInformation),
          // DetailSkill()
        ],
      ),
    );
  }
}
