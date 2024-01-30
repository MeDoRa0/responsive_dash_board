import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utlis/app_styles.dart';
import 'package:responsive_dash_board/views/widgets/transaction_history_header.dart';
import 'package:responsive_dash_board/views/widgets/transaction_histroy_listview.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TransactionHistoryHeader(),
        const SizedBox(
          height: 20,
        ),
        Text(
          '11 April 2024',
          style: AppStyles.styleMedium16(context).copyWith(
            color: const Color(0xFFAAAAAA),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const TransactionHistoryListView(),
      ],
    );
  }
}
