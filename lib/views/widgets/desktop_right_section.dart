import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utlis/app_styles.dart';
import 'package:responsive_dash_board/views/widgets/mycards_page_view.dart';

class DesktopRightSection extends StatelessWidget {
  const DesktopRightSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "My Card",
            style: AppStyles.styleSemiBold20,
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: MyCardsPageView(),
          ),
        ],
      ),
    );
  }
}
