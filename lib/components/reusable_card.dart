import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {

  final Color color;
  final dynamic cardChild;
  final dynamic onClick;

  const ReusableCard({super.key, required this.color, this.cardChild, this.onClick});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        child: cardChild,
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}