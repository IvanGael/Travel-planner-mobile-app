import 'package:flutter/material.dart';

class Utils {
   static Color getColorFromHex(String hexCode) {
    hexCode = hexCode.replaceAll("#", "");
    if (hexCode.length == 6) {
      hexCode = "FF$hexCode";
    }
    return Color(int.parse(hexCode, radix: 16));
  }


  static void navigate(BuildContext context, Widget screen){
    Navigator.push(
      context, 
      MaterialPageRoute(builder: (context) => screen )
    );
  }
}