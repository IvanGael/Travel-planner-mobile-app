
import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../utils/utils.dart';
import '../screens/guided_tour_screen.dart';

class TourItem extends StatelessWidget {
  final String title;
  final Color cardItemColor;

  const TourItem({super.key, required this.title, required this.cardItemColor});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      color: cardItemColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      child: Container(
        width: 360,
        height: 400,
        decoration: BoxDecoration(
          color: cardItemColor,
          borderRadius: BorderRadius.circular(25)
        ),
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 24, 
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.none
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
              "Guided tour",
              style: TextStyle(
                fontSize: 20, 
                decoration: TextDecoration.none
              ),
            ),
            IconButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(AppColors.color17)                      
                    ),
                    onPressed: (){
                      // Utils.navigate(context, GuidedTourScreen(bgColor: cardItemColor, text: title,));
                    }, 
                    icon: const Icon(Icons.arrow_forward, color: Colors.white,)
                  )
              ],
            )
          ],
        ),
      ),
    );
  }
}