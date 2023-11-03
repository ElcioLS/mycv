import 'package:flutter/material.dart';

class UIBody extends StatelessWidget {
  const UIBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 20 * 1,
    );
  }
}
