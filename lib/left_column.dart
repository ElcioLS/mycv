import 'package:flutter/material.dart';
import 'package:mycv/themes.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'personal_avatar.dart';

class LeftColumn extends StatelessWidget {
  final SizingInformation sizingInformation;

  const LeftColumn(this.sizingInformation, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 3 * 1,
      color: primaryColor,
      child: const Column(
        children: [
          PersonalAvatar(),
        ],
      ),
    );
  }
}
