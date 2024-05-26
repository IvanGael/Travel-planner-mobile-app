
import 'package:flutter/material.dart';
import 'package:travel_planner/constants/colors.dart';

class TextWithBgDeco extends StatelessWidget {
  final String text;
  const TextWithBgDeco({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 18,
          child: Container(
          width: 220,
          height: 20,
          color: AppColors.color5,
        )
        ),
        Text(
          text,
          style: const TextStyle(
            fontSize: 40, 
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}