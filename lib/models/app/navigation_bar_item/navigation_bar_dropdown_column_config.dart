import 'package:apple/models/app/navigation_bar_item/navigation_bar_dropdown_column_item_config.dart';

class NavigationBarDropdownColumnConfig {
  final String title;
  final List<NavigationBarDropdownColumnItemConfig>? itemsConfig;

  const NavigationBarDropdownColumnConfig({
    required this.title,
    this.itemsConfig,
  });
}
