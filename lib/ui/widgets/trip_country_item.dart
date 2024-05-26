import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../utils/utils.dart';
import '../screens/trip_explore_screen.dart';

class TripCountryItem extends StatelessWidget {
  final String image;
  final String country;
  const TripCountryItem({super.key, required this.image, required this.country});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.color1,
      child: Container(
      margin: const EdgeInsets.only(right: 5),
      child: GestureDetector(
        onTap: (){
          Utils.navigate(context, TripExploreScreen(country: country, countryFlag: image,));
        },
        child: Chip(
        backgroundColor: Colors.grey.shade200,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
          side: BorderSide(color: Colors.grey.shade200)
        ),
        avatar: Image.asset(
          image,
          width: 12,
          height: 12,
        ),
        label: Text(
          country,
          style: const TextStyle(
            color: Colors.black,
            decoration: TextDecoration.none
          ),
        ),
      ),
      ),
    ),
    );
  }
}