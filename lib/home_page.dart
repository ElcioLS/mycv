import 'package:flutter/material.dart';
import 'package:mycv/themes.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'left_column.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
        ),
        body: SingleChildScrollView(child: ResponsiveBuilder(
          builder: (context, sizingInformation) {
            return sizingInformation.deviceScreenType ==
                    DeviceScreenType.desktop
                ? IntrinsicHeight(
                    child: Container(
                      color: backgroundColor,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          LeftColumn(sizingInformation),
                        ],
                      ),
                    ),
                  )
                : Container(color: backgroundColor);
          },
        )),
      ),
    );
  }
}
