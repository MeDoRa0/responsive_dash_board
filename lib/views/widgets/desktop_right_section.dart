import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utlis/app_styles.dart';
import 'package:responsive_dash_board/views/widgets/dots_indicator.dart';
import 'package:responsive_dash_board/views/widgets/mycard_section.dart';
import 'package:responsive_dash_board/views/widgets/mycards_page_view.dart';

class DesktopRightSection extends StatelessWidget {
  const DesktopRightSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 24),
      child: Column(
        children: [
          Expanded(
            child: MyCardSection(),
          ),
        ],
      ),
    );
  }
}
