
import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/swippeable_cards.dart';

class TripExploreScreen extends StatefulWidget {
  final String country;
  final String countryFlag;
  const TripExploreScreen({super.key, required this.country, required this.countryFlag});

  @override
  State<TripExploreScreen> createState() => _TripExploreScreenState();
}

class _TripExploreScreenState extends State<TripExploreScreen> {
  List<String> tours = ['Secret parks in Berlin', 'Dinner at the waterfront', 'Tour at Checkpoint Charlie'];

  List<Color> toursCardColors = [
    AppColors.color7,
    AppColors.color8,
    AppColors.color9,
    AppColors.color10,
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.color1,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 30,),
            const CustomAppBar(),
            const SizedBox(height: 14,),
            const Padding(
                padding: EdgeInsets.symmetric(horizontal: 22.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "In 25 days",
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 14,
                        decoration: TextDecoration.none
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 6,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                          widget.country,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Arial",
                            decoration: TextDecoration.none
                          ),
                        ),
                        const SizedBox(width: 8,),
                        Image.asset(
                          widget.countryFlag,
                          width: 20,
                          height: 20,
                        ),
                  ],
                ),
              ),
              // const SizedBox(height: 20,),
              SwippeableCards(
                cards: tours,
                cardItemColors: toursCardColors,
              ),
          ],
        ),
      ),
    );
  }
}