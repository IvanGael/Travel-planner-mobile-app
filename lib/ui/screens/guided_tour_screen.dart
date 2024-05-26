import 'package:flutter/material.dart';

import '../../utils/utils.dart';
import '../widgets/custom_app_bar2.dart';
import '../widgets/dashed_divider.dart';
import 'ticket_screen.dart';

class GuidedTourScreen extends StatelessWidget {
  final Color bgColor;
  final String text;
  const GuidedTourScreen({super.key, required this.bgColor, required this.text});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(
            height: 30,
          ),
          const CustomAppBar2(),
          const SizedBox(
            height: 14,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 22.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  text,
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22.0),
            child: Row(
              children: [
                Material(
                  color: bgColor,
                  child: Chip(
                      backgroundColor: Colors.grey.shade200,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                          side: const BorderSide(color: Colors.transparent)),
                      label: const Text(
                        "Guided tour",
                        style: TextStyle(
                            color: Colors.black,
                            decoration: TextDecoration.none),
                      )),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 100,
          ),
           Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22.0),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("For 2 people",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            decoration: TextDecoration.none)),
                    Text("edit",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline))
                  ],
                ),
                const SizedBox(height: 30,),
                const Row(
                  children: [
                    Expanded(
                      child: DashedDivider(
                        dashWidth: 5.0,
                        dashSpace: 3.0,
                        strokeWidth: 2.0,
                        height: 1.0,
                      )
                    ),
                  ],
                ),
                const SizedBox(height: 30,),
          
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("The 29th of may",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            decoration: TextDecoration.none)),
                    Text("edit",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline))
                  ],
                ),
                const SizedBox(height: 30,),
                const Row(
                  children: [
                    Expanded(
                      child: DashedDivider(
                        dashWidth: 5.0,
                        dashSpace: 3.0,
                        strokeWidth: 2.0,
                        height: 1.0,
                      )
                    ),
                  ],
                ),
                const SizedBox(height: 30,),
          
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("From 14:00 to 18:00",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            decoration: TextDecoration.none)),
                    Text("edit",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline))
                  ],
                ),
                const SizedBox(height: 30,),
                const Row(
                  children: [
                    Expanded(
                      child: DashedDivider(
                        dashWidth: 5.0,
                        dashSpace: 3.0,
                        strokeWidth: 2.0,
                        height: 1.0,
                      )
                    ),
                  ],
                ),
                const SizedBox(height: 30,),
          
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Your total : \$159",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            decoration: TextDecoration.none)),
                    GestureDetector(
                      onTap: (){
                        Utils.navigate(context, const TicketScreen());
                      },
                      child: const Text("receipt",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline)),
                    )
                  ],
                ),

                const SizedBox(height: 30,),
              ],
            ),
          )
        ],
      ),
    );
  }
}
