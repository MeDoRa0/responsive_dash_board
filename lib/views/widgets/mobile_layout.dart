import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/all_expanses_and_quick_invoice_section.dart';
import 'package:responsive_dash_board/views/widgets/income.dart';
import 'package:responsive_dash_board/views/widgets/mycard_and_transaction_section.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpansesAndQuickInvoiceSection(),
          SizedBox(
            height: 24,
          ),
          MyCardAndTransactionHistorySection(),
          SizedBox(
            height: 24,
          ),
          Income(),
        ],
      ),
    );
  }
}
