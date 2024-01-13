import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/all_expensess.dart';
import 'package:responsive_dash_board/views/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/views/widgets/quick_invoice.dart';

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
          flex: 2,
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: AllExpensess(),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 24,
                ),
              ),
              SliverToBoxAdapter(
                child: QuickInvoice(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
