import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllExpenssesItemHeader extends StatelessWidget {
  const AllExpenssesItemHeader({
    super.key,
    required this.image,
    this.iconBackground,
    this.iconColor,
  });
  final String image;
  final Color? iconBackground, iconColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //flexible is used to reduce the widget size if the size is small but will not increase the widget size above the fixed width or height
        Flexible(
          //i use constrainedBox to force AspectRatio to not exceed the height and width in this case it is 60
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxHeight: 60, maxWidth: 60),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                decoration: ShapeDecoration(
                  color: iconBackground ?? const Color(0xFFFAFAFA),
                  shape: const OvalBorder(),
                ),
                child: Center(
                  child: SvgPicture.asset(
                    image,
                    colorFilter: ColorFilter.mode(
                        iconColor ?? const Color(0xFF4EB7F2), BlendMode.srcIn),
                  ),
                ),
              ),
            ),
          ),
        ),
        Icon(Icons.chevron_right_outlined,
            color: iconColor == null ? const Color(0xFF064061) : Colors.white),
      ],
    );
  }
}
