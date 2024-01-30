import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transactions_model.dart';
import 'package:responsive_dash_board/utlis/app_styles.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.transactionsModel});
  final TransactionsModel transactionsModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xFFFAFAFA),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        title: Text(
          transactionsModel.transactionName,
          style: AppStyles.styleSemiBold16(context),
        ),
        subtitle: Text(
          transactionsModel.transactionDate,
          style: AppStyles.styleRegular16(context).copyWith(
            color: const Color(0xFFAAAAAA),
          ),
        ),
        trailing: Text(
          transactionsModel.transactionValue,
          style: AppStyles.styleSemiBold20(context).copyWith(
            color: transactionsModel.isWithdrawel
                ? const Color(0xFFF3735E)
                : const Color(0xFF7CD87A),
          ),
        ),
      ),
    );
  }
}
