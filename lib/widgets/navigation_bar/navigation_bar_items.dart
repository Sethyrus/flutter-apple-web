import 'package:apple/utils/constants/media_queries.dart';
import 'package:apple/utils/constants/navigation_bar_config.dart';
import 'package:apple/utils/constants/sizes.dart';
import 'package:apple/utils/helpers.dart';
import 'package:apple/widgets/navigation_bar/navigation_bar_item.dart';
import 'package:flutter/widgets.dart';

class NavigationBarItems extends StatelessWidget {
  const NavigationBarItems({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;

    final padding = Helpers.getResponsiveSize(
      MediaQueries.navigationBarContentHPaddings,
      screenWidth,
    );

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ...List.generate(
            fixedLeftItems.length,
            (i) => NavigationBarItem(config: fixedLeftItems[i]),
          ),
          if (screenWidth > Sizes.contentBreakpoint)
            ...List.generate(
              centerItems.length,
              (i) => NavigationBarItem(config: centerItems[i]),
            )
          else
            const Expanded(child: SizedBox()),
          ...List.generate(
            fixedRightItems.length,
            (i) => NavigationBarItem(config: fixedRightItems[i]),
          ),
        ],
      ),
    );
  }
}
