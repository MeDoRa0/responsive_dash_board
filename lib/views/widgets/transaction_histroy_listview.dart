import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transactions_model.dart';
import 'package:responsive_dash_board/views/widgets/transaction_item.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});
  static const items = [
    TransactionsModel(
        transactionName: 'Cash Withdrawal',
        transactionDate: '11 Apr, 2024 at 8:19 am ',
        transactionValue: '\$20,129',
        isWithdrawel: true),
    TransactionsModel(
        transactionName: 'project payment',
        transactionDate: '11 Apr, 2024 at 5:10 pm ',
        transactionValue: '\$400,00',
        isWithdrawel: false),
    TransactionsModel(
        transactionName: 'Juni Mobile App project ',
        transactionDate: '11 Apr, 2024 at 10:30 pm ',
        transactionValue: '\$4200,00',
        isWithdrawel: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: items
          .map(
            (e) => TransactionItem(transactionsModel: e),
          )
          .toList(),
    );
  }
}
