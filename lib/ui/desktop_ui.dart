// import 'package:flutter/material.dart';
// import 'package:flutter/material.dart';
// import 'package:mycv/right/right_column.dart';
// import 'package:mycv/themes.dart';
// import 'package:responsive_builder/responsive_builder.dart';

// import '../left/left_column.dart';
// import '../right/right_column.dart';

import 'package:flutter/material.dart';
import 'package:mycv/right/right_column.dart';
import 'package:mycv/themes.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../left/left_column.dart';

class DesktopUI extends StatelessWidget {
  final SizingInformation sizingInformation;

  const DesktopUI({
    super.key,
    required this.sizingInformation,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Container(
        color: backgroundColor,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LeftColumn(sizingInformation),
            RightColumn(sizingInformation),
          ],
        ),
      ),
    );
  }
}
