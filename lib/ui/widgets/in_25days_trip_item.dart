import 'package:flutter/material.dart';
import 'package:travel_planner/constants/colors.dart';
import 'package:travel_planner/constants/images.dart';

import '../../utils/utils.dart';
import '../screens/guided_tour_screen.dart';

class In25daysTripItem extends StatelessWidget {
  final Color color;
  final String text1;
  final String image;
  final String text2;
 
  const In25daysTripItem({super.key, required this.color, required this.text1, required this.image,
  required this.text2});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 178,
      height: 100,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(14)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                text1,
                style: TextStyle(
                  color: AppColors.color11,
                  fontSize: 16,
                  decoration: TextDecoration.none
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    image,
                    width: image == AppImages.flashViolet ? 34 : 14,
                    height: image == AppImages.flashViolet ? 34 : 14,
                  ),
                  const SizedBox(width: 3,),
                  Text(
                              text2,
                              style: TextStyle(
                  color: AppColors.color11,
                  fontSize: 14,
                  decoration: TextDecoration.none
                              ),
                            ),
                ],
              ),
              Row(
                children: [
                  IconButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(AppColors.color17)                      
                    ),
                    onPressed: (){
                      Utils.navigate(context, GuidedTourScreen(bgColor: color, text: text1,));
                    }, 
                    icon: const Icon(Icons.arrow_forward, color: Colors.white,)
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}