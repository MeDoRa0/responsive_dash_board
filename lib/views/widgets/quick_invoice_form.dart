import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/custom_button.dart';
import 'package:responsive_dash_board/views/widgets/title_text_filed.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TitleTextfield(
                  title: 'Customer name', hint: 'type customer name'),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: TitleTextfield(
                  title: 'Customer email', hint: 'type customer email'),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
              child: TitleTextfield(title: 'item name', hint: 'type item name'),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: TitleTextfield(
                  title: 'item amount', hint: 'type item amount'),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                textColor: Color(0xFF4DB7F2),
                backgroundColor: Colors.transparent,
                title: 'Add more details',
              ),
            ),
            SizedBox(
              width: 24,
            ),
            Expanded(
              child: CustomButton(
                textColor: Colors.white,
                title: 'Send Money',
              ),
            ),
          ],
        ),
      ],
    );
  }
}
