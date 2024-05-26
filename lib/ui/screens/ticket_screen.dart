import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

import 'package:travel_planner/constants/images.dart';

import '../../constants/colors.dart';
import '../widgets/custom_app_bar2.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.color1,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 30,
          ),
          const CustomAppBar2(),
          const SizedBox(
            height: 14,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 22.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Your access\nTicket",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Arial",
                      decoration: TextDecoration.none),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Image.asset(AppImages.scallope),
                    const Positioned(
                      top: 60,
                      left: 50,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Martin",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.none
                            ),
                          ),
                          SizedBox(height: 2,),
                          Text(
                            "East Side Gallery",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              decoration: TextDecoration.none
                            ),
                          )
                        ],
                      )
                    ),
                    Positioned(
                      top: 160,
                      left: 90,
                      child: Stack(
                        children: [
                          QrImageView(
                        data: '1234567890',
                        version: QrVersions.auto,
                        size: 120.0,
                      ),
                      Positioned(
                        top: 40,
                        left: 40,
                        child: Container(
                          width: 35,
                          height: 35,
                          color: AppColors.color23,
                          child: const Center(
                            child: Text(
                              "buddy",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 6,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.none
                              ),
                            ),
                          ),
                        ),
                      )
                        ],
                      ),
                    ),
                    const Positioned(
                      bottom: 25,
                      left: 40,
                      child: Text(
                        "12 May 2024",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          decoration: TextDecoration.none
                        ),
                      )
                    ),

                    Positioned(
                      bottom: 25,
                      right: 40,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColors.color23),
                          borderRadius: BorderRadius.circular(20)
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: const Text(
                          "Concert",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            decoration: TextDecoration.none
                          ),
                        ),
                      )
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
