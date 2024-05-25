import 'package:apple/models/navigation_bar/navigation_bar_dropdown_column_item_config.dart';

class NavigationBarDropdownColumnConfig {
  final String title;
  final List<NavigationBarDropdownColumnItemConfig>? itemsConfig;

  const NavigationBarDropdownColumnConfig({
    required this.title,
    this.itemsConfig,
  });
}
