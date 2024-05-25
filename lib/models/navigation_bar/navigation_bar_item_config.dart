import 'package:apple/models/navigation_bar/navigation_bar_dropdown_column_config.dart';
import 'package:flutter/widgets.dart';

class NavigationBarItemConfig {
  final int id;
  final String? title;
  final IconData? icon;
  final List<NavigationBarDropdownColumnConfig>? dropdownColumnsConfig;

  const NavigationBarItemConfig({
    required this.id,
    this.title,
    this.icon,
    this.dropdownColumnsConfig,
  }) : assert(title != null || icon != null);
}
