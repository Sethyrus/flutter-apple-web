import 'package:apple/models/app/navigation_bar_item/navigation_bar_dropdown_column_config.dart';
import 'package:flutter/widgets.dart';

class NavigationBarItemConfig {
  final String? title;
  final IconData? icon;
  final List<NavigationBarDropdownColumnConfig>? dropdownColumnsConfig;

  const NavigationBarItemConfig({
    this.title,
    this.icon,
    this.dropdownColumnsConfig,
  });
}
