import 'package:apple/models/navigation_bar/navigation_bar_item_config.dart';
import 'package:apple/utils/constants/colors.dart';
import 'package:apple/utils/constants/media_queries.dart';
import 'package:apple/utils/helpers.dart';
import 'package:flutter/widgets.dart';

class NavigationBarItem extends StatelessWidget {
  final NavigationBarItemConfig config;

  const NavigationBarItem({super.key, required this.config});

  @override
  Widget build(BuildContext context) {
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

    return GestureDetector(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: padding),
        child: config.icon != null
            ? Icon(
                config.icon,
                size: iconSize,
                color: CColors.navigationBarItemColor,
              )
            : Text(
                config.title!,
                style: TextStyle(
                  fontSize: textSize,
                  color: CColors.navigationBarItemColor,
                ),
              ),
      ),
    );
  }
}
