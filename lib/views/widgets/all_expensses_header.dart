import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utlis/app_styles.dart';
import 'package:responsive_dash_board/views/widgets/time_range_dropdown.dart';

class AllExpensessHeader extends StatelessWidget {
  const AllExpensessHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          'All Expensses',
          style: AppStyles.styleSemiBold20,
        ),
        Expanded(
          child: SizedBox(),
        ),
        TimeRangeDropDown()
      ],
    );
  }
}
