// ignore_for_file: library_private_types_in_public_api


import 'package:flutter/material.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';

import 'tour_item.dart';

class SwippeableCards extends StatefulWidget {
  final List<String> cards;
  final List<Color> cardItemColors;

  const SwippeableCards(
      {super.key, required this.cards, required this.cardItemColors});

  @override
  _SwippeableCardsState createState() => _SwippeableCardsState();
}

class _SwippeableCardsState extends State<SwippeableCards> {

  @override
  void initState() {
    super.initState();
    setState(() {
      widget.cardItemColors.shuffle();
    });
  }


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 520,
      child: Transform(
        transform: Matrix4.skewY(35),
        child: Swiper(
          itemWidth: 300,
          itemHeight: 450,
          loop: true,
          duration: 1200,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return TourItem(
              title: widget.cards[index],
              cardItemColor: widget.cardItemColors[index],
            );
          },
          itemCount: widget.cards.length,
          layout: SwiperLayout.STACK,
          viewportFraction: 0.5,
        ),
      ),
    );
  }
}
