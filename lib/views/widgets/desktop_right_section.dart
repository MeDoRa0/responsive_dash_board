import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/mycard_section.dart';

class DesktopRightSection extends StatelessWidget {
  const DesktopRightSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: const Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          children: [
            Expanded(
              child: MyCardSection(),
            ),
          ],
        ),
      ),
    );
  }
}
