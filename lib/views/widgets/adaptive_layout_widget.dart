import 'package:flutter/material.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout(
      {super.key,
      required this.mobileLayout,
      required this.tabletLayout,
      required this.desktopLayout});
  // i use widgetbuilder so i can use context
  final WidgetBuilder mobileLayout, tabletLayout, desktopLayout;

  @override
  Widget build(BuildContext context) {
    //layoutbuilder is used to know the screen size of device so we can change the design for it
    //we use constrains to check the width of device
    return LayoutBuilder(
      builder: (context, constrains) {
        //if device width is < 350 build mobile design
        if (constrains.maxWidth < 400) {
          return mobileLayout(context);
        } //if device width is < 1100 build tablet design
        else if (constrains.maxWidth < 1100) {
          return tabletLayout(context);
        } else {
          return desktopLayout(context);
        }
      },
    );
  }
}
