import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'name_widget.dart';
import 'personal_Info.dart';
import 'projects.dart';

class RightColumn extends StatelessWidget {
  final SizingInformation sizingInformation;

  const RightColumn(
    this.sizingInformation, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 1.0),
        child: Container(
          margin: const EdgeInsets.only(top: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  NameWidget(sizingInformation: sizingInformation),
                  const PersonalInfo(),
                ],
              ),
              Projects(
                sizingInformation: sizingInformation,
                title: 'Portfólio',
              ),
              Projects(
                sizingInformation: sizingInformation,
                title: 'Education',
              ),
              Projects(
                sizingInformation: sizingInformation,
                title: 'Experience',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
