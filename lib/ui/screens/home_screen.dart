
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_planner/constants/colors.dart';
import 'package:travel_planner/constants/images.dart';

import '../widgets/custom_app_bar.dart';
import '../widgets/in_25days_trip_item.dart';
import '../widgets/top_rated_exp_item.dart';
import '../widgets/trip_country_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
              Container(
                width: 360,
                height: 125,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: AppColors.color20,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                    bottomLeft: Radius.circular(45),
                    bottomRight: Radius.circular(45)
                  )
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          AppImages.flash
                        ),
                        const SizedBox(width: 6,),
                        const Text(
                          "Where are you travelling next?",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            decoration: TextDecoration.none
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 12,),
                    Container(
                      height: 40,
                      padding: const EdgeInsets.symmetric(horizontal: 14),
                      decoration: BoxDecoration(
                        color: AppColors.color24,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25),
                          bottomLeft: Radius.circular(45),
                          bottomRight: Radius.circular(45)
                        )
                      ),
                      child: Row(
                        children: [
                          const Icon(Icons.search, color: Colors.black87,),
                          const SizedBox(width: 5,),
                          SizedBox(
                            width: 240,
                            child: CupertinoTextField(
                              decoration: BoxDecoration(
                                color: AppColors.color24
                              ),
                              placeholder: "Enter a city or any place you want",
                              placeholderStyle: const TextStyle(
                                color: Colors.black54,
                                fontSize: 14,
                              ),
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                decoration: TextDecoration.none
                              )
                            ),
                          )
                          // Text(
                          //   "Enter a city or any place you want",
                          //   style: TextStyle(
                          //     color: Colors.black26,
                          //     fontSize: 12,
                          //     decoration: TextDecoration.none
                          //   ),
                          // )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20,),
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          AppImages.germany,
                          width: 20,
                          height: 20,
                        ),
                        const SizedBox(width: 4,),
                        const Text(
                          "Berlin, Germany",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Arial",
                            decoration: TextDecoration.none
                          ),
                        ),
                      ],
                    ),
                    Image.asset(
                      AppImages.arrowForward,
                    )
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                height: 140,
                margin: const EdgeInsets.only(left: 22),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    In25daysTripItem(
                      color: AppColors.color7,
                      text1: "East Side\nGallery",
                      image: AppImages.heart,
                      text2: "Date",
                    ),
                    In25daysTripItem(
                      color: AppColors.color8,
                      text1: "Da Giuseppe\nPizzeria",
                      image: AppImages.pizza,
                      text2: "Pizza night",
                    ),
                    In25daysTripItem(
                      color: AppColors.color22,
                      text1: "Rex Club\nDisco",
                      image: AppImages.flashViolet,
                      text2: "Date",
                    )
                  ],
                ),
              ),
              const SizedBox(height: 16,),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 22.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Next trips",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        decoration: TextDecoration.none
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 6,),
              Container(
                height: 60,
                margin: const EdgeInsets.only(left: 22),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    TripCountryItem(
                      image: AppImages.germany,
                      country: "Berlin",
                    ),
                    TripCountryItem(
                      image: AppImages.switzerland,
                      country: "Geneve",
                    ),
                    TripCountryItem(
                      image: AppImages.belgium,
                      country: "Bruges",
                    ),
                    TripCountryItem(
                      image: AppImages.netherlands,
                      country: "Amsterdam",
                    )
                  ],
                ),
              ),
              const SizedBox(height: 6,),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 22.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Top-rated experiences",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        decoration: TextDecoration.none
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                height: 135,
                margin: const EdgeInsets.only(left: 22),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    TopRatedExpItem(
                      color: AppColors.color26,
                      icon: const Icon(Icons.food_bank),
                      text: "Food",
                      count: 154,
                    ),
                    TopRatedExpItem(
                      color: AppColors.color27,
                      icon: const Icon(Icons.book),
                      text: "Culture",
                      count: 154,
                    ),
                    TopRatedExpItem(
                      color: AppColors.color28,
                      icon: const Icon(Icons.nature),
                      text: "Nature",
                      count: 320,
                    ),
                    TopRatedExpItem(
                      color: AppColors.color29,
                      icon: const Icon(Icons.light),
                      text: "Party",
                      count: 320,
                    )
                  ],
                ),
              ),
              const SizedBox(height: 8,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 100.0),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(AppColors.color7,),
                    padding: WidgetStateProperty.all(const EdgeInsets.symmetric(vertical: 12))
                  ),
                  onPressed: (){
                
                  }, 
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.add, color: AppColors.color11,),
                      const SizedBox(width: 4,),
                      Text(
                        "New trip",
                        style: TextStyle(
                          color: AppColors.color11,
                        ),
                      )
                    ],
                  )
                ),
              )
            ],
          ),
        ),
    );
  }
}