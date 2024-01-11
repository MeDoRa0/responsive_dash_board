import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/all_expensses_header.dart';
import 'package:responsive_dash_board/views/widgets/all_expensses_items_listview.dart';
import 'package:responsive_dash_board/views/widgets/custom_background_container.dart';

class AllExpensess extends StatelessWidget {
  const AllExpensess({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          AllExpensessHeader(),
          AllExpenssesItemsListView(),
          SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
