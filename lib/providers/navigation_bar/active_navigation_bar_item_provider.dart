import 'package:apple/models/navigation_bar/navigation_bar_item_config.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'active_navigation_bar_item_provider.g.dart';

@riverpod
class ActiveNavigationBarItem extends _$ActiveNavigationBarItem {
  @override
  NavigationBarItemConfig? build() {
    return null;
  }

  void setActiveItem(NavigationBarItemConfig? item) {
    state = item;
  }
}
