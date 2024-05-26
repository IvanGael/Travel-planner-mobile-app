import 'package:flutter/material.dart';

class TopRatedExpItem extends StatelessWidget {
  final Color color;
  final Icon icon;
  final String text;
  final int count;
  const TopRatedExpItem({super.key, required this.color, required this.icon ,required this.text,
  required this.count});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(14)
      ),
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.only(right: 10),
      child: Column(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle
            ),
            child: icon
          ),
          const SizedBox(height: 6,),
          Text(
            text,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16,
              decoration: TextDecoration.none
            ),
          ),
          const SizedBox(height: 10,),
          Container(
            width: 70,
            height: 30,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(14)
            ),
            child: Center(
              child: Text(
                "+ $count",
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: "Arial",
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}