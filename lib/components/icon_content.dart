import 'package:flutter/material.dart';
import '../constants.dart';

class IconContent extends StatelessWidget {

  final IconData icon;
  final String labelText;

  const IconContent({
    super.key,
    required this.icon,
    required this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 70.0,
          color: Colors.white,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          labelText,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}