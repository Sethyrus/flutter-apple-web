import 'dart:math';
import 'package:apple/providers/navigation_bar/active_navigation_bar_item_provider.dart';
import 'package:apple/utils/constants/colors.dart';
import 'package:apple/utils/constants/media_queries.dart';
import 'package:apple/utils/constants/navigation_bar_config.dart';
import 'package:apple/utils/constants/sizes.dart';
import 'package:apple/utils/helpers.dart';
import 'package:apple/widgets/navigation_bar/navigation_bar_item.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NavigationBarItems extends ConsumerWidget {
  const NavigationBarItems({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenWidth = MediaQuery.sizeOf(context).width;
    final height = Helpers.getResponsiveSize(
      MediaQueries.navigationBarHeights,
      screenWidth,
    );
    final padding = Helpers.getResponsiveSize(
      MediaQueries.navigationBarContentHPaddings,
      screenWidth,
    );

    final activeItem = ref.watch(activeNavigationBarItemProvider);

    return Container(
      height: height,
      color: activeItem?.dropdownColumnsConfig == null
          ? CColors.navigationBarColor
          : CColors.navigationBarColorActive,
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: padding),
        constraints: BoxConstraints(
          maxWidth: min(screenWidth, Sizes.navigationBarContentWidth),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ...List.generate(
              fixedLeftItems.length,
              (i) => NavigationBarItem(
                config: fixedLeftItems[i],
                isActive: activeItem?.id == fixedLeftItems[i].id,
              ),
            ),
            if (screenWidth > Sizes.contentBreakpoint)
              ...List.generate(
                centerItems.length,
                (i) => NavigationBarItem(
                  config: centerItems[i],
                  isActive: activeItem?.id == centerItems[i].id,
                ),
              )
            else
              const Expanded(child: SizedBox()),
            ...List.generate(
              fixedRightItems.length,
              (i) => NavigationBarItem(
                config: fixedRightItems[i],
                isActive: activeItem?.id == fixedRightItems[i].id,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
