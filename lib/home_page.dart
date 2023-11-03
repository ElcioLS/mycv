import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'ui/desktop_ui.dart';
import 'ui/mobile_ui.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: ResponsiveBuilder(
            builder: (context, sizingInformation) {
              return sizingInformation.deviceScreenType ==
                      DeviceScreenType.desktop
                  ? DesktopUI(
                      sizingInformation: sizingInformation,
                    )
                  : MobileUI(
                      sizingInformation: sizingInformation,
                    );
            },
          ),
        ),
      ),
    );
  }
}
