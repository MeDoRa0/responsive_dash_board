import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/all_expanses_and_quick_invoice_section.dart';
import 'package:responsive_dash_board/views/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/views/widgets/income.dart';
import 'package:responsive_dash_board/views/widgets/mycard_and_transaction_section.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 32,
        ),
        Expanded(
            flex: 3,
            child: CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: AllExpansesAndQuickInvoiceSection(),
                      ),
                      SizedBox(
                        width: 24,
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            MyCardAndTransactionHistorySection(),
                            SizedBox(
                              height: 24,
                            ),
                            Expanded(
                              child: Income(),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )),
      ],
    );
  }
}
