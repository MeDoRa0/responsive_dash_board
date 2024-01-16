import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/custom_dot.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({super.key, required this.currentCardIndex});
  final int currentCardIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) => Padding(
          padding: const EdgeInsets.only(right: 6),
          child: CustomDotIndicator(isActive: index == currentCardIndex),
        ),
      ),
    );
  }
}
