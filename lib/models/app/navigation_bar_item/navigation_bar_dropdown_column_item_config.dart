enum NavigationBarDropdownColumnItemType {
  highlightedLink,
  normalLink,
}

class NavigationBarDropdownColumnItemConfig {
  final String title;
  final NavigationBarDropdownColumnItemType type;
  final bool hasSpaceBelow;

  const NavigationBarDropdownColumnItemConfig({
    required this.title,
    this.type = NavigationBarDropdownColumnItemType.normalLink,
    this.hasSpaceBelow = false,
  });
}
