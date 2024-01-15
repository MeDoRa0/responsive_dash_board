import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/my_card.dart';

class MyCardsPageView extends StatelessWidget {
  const MyCardsPageView({super.key});
  List<double> childrenHeight = [];
  int currentCard = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: childrenHeight[currentCard],
      child: PageView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, index) {
          return const MyCard();
        },
      ),
    );
  }
}
