import 'package:apple/models/navigation_bar/navigation_bar_item_config.dart';
import 'package:apple/providers/navigation_bar/active_navigation_bar_item_provider.dart';
import 'package:apple/utils/constants/colors.dart';
import 'package:apple/utils/constants/media_queries.dart';
import 'package:apple/utils/helpers.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NavigationBarItem extends ConsumerWidget {
  final NavigationBarItemConfig config;
  final bool isActive;

  const NavigationBarItem({
    super.key,
    required this.config,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenWidth = MediaQuery.sizeOf(context).width;
    final padding = Helpers.getResponsiveSize(
      MediaQueries.navigationBarItemHPaddings,
      screenWidth,
    );
    final iconSize = Helpers.getResponsiveSize(
      MediaQueries.navigationBarIconSizes,
      screenWidth,
    );
    final textSize = Helpers.getResponsiveSize(
      MediaQueries.textSizes,
      screenWidth,
    );
    final Color color = isActive
        ? CColors.navigationBarItemColorHover
        : CColors.navigationBarItemColor;

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => ref
          .read(activeNavigationBarItemProvider.notifier)
          .setActiveItem(config),
      onExit: config.dropdownColumnsConfig == null
          ? (_) => ref
              .read(activeNavigationBarItemProvider.notifier)
              .setActiveItem(null)
          : null,
      child: SizedBox(
        height: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: padding),
          child: Center(
            child: config.icon != null
                ? Icon(
                    config.icon,
                    size: iconSize,
                    color: color,
                  )
                : Text(
                    config.title!,
                    style: TextStyle(
                      fontSize: textSize,
                      color: color,
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}
