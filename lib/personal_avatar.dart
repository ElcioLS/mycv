import 'package:flutter/material.dart';

class PersonalAvatar extends StatelessWidget {
  const PersonalAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/eu.jpg',
      fit: BoxFit.cover,
    );
  }
}
