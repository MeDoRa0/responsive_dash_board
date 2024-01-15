import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/views/widgets/desktop_middle_section.dart';
import 'package:responsive_dash_board/views/widgets/desktop_right_section.dart';

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
          child: DesktopMiddelSection(),
        ),
        SizedBox(
          width: 24,
        ),
        Expanded(
          child: DesktopRightSection(),
        ),
      ],
    );
  }
}
