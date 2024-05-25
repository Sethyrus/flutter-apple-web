import 'package:apple/models/navigation_bar/navigation_bar_dropdown_column_config.dart';
import 'package:apple/models/navigation_bar/navigation_bar_dropdown_column_item_config.dart';
import 'package:apple/models/navigation_bar/navigation_bar_item_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

final List<NavigationBarItemConfig> fixedLeftItems = [
  NavigationBarItemConfig(id: 1, icon: MdiIcons.apple),
];
const List<NavigationBarItemConfig> centerItems = [
  NavigationBarItemConfig(
    id: 2,
    title: 'Tienda',
    dropdownColumnsConfig: [
      NavigationBarDropdownColumnConfig(
        title: 'Comprar',
        itemsConfig: [
          NavigationBarDropdownColumnItemConfig(
            title: 'Comprar lo último',
            type: NavigationBarDropdownColumnItemType.highlightedLink,
          ),
          NavigationBarDropdownColumnItemConfig(
            title: 'Mac',
            type: NavigationBarDropdownColumnItemType.highlightedLink,
          ),
          NavigationBarDropdownColumnItemConfig(
            title: 'iPad',
            type: NavigationBarDropdownColumnItemType.highlightedLink,
          ),
          NavigationBarDropdownColumnItemConfig(
            title: 'iPhone',
            type: NavigationBarDropdownColumnItemType.highlightedLink,
          ),
          NavigationBarDropdownColumnItemConfig(
            title: 'Apple Watch',
            type: NavigationBarDropdownColumnItemType.highlightedLink,
          ),
          NavigationBarDropdownColumnItemConfig(
            title: 'Accesorios',
            type: NavigationBarDropdownColumnItemType.highlightedLink,
          ),
        ],
      ),
      NavigationBarDropdownColumnConfig(
        title: 'Enlaces rápidos',
        itemsConfig: [
          NavigationBarDropdownColumnItemConfig(
            title: 'Encontrar una tienda',
          ),
          NavigationBarDropdownColumnItemConfig(
            title: 'Estado del pedido',
          ),
          NavigationBarDropdownColumnItemConfig(
            title: 'Apple Trade In',
          ),
          NavigationBarDropdownColumnItemConfig(
            title: 'Financiación',
          ),
        ],
      ),
      NavigationBarDropdownColumnConfig(
        title: 'Tiendas especiales',
        itemsConfig: [
          NavigationBarDropdownColumnItemConfig(
            title: 'Reacondicionados certificados',
          ),
          NavigationBarDropdownColumnItemConfig(
            title: 'Educación',
          ),
          NavigationBarDropdownColumnItemConfig(
            title: 'Empresas',
          ),
        ],
      ),
    ],
  ),
  NavigationBarItemConfig(id: 3, title: 'Mac'),
  NavigationBarItemConfig(id: 4, title: 'iPad'),
  NavigationBarItemConfig(id: 5, title: 'iPhone'),
  NavigationBarItemConfig(id: 6, title: 'Watch'),
  NavigationBarItemConfig(id: 7, title: 'AirPods'),
  NavigationBarItemConfig(id: 8, title: 'TV y Casa'),
  NavigationBarItemConfig(id: 9, title: 'Entretenimiento'),
  NavigationBarItemConfig(id: 10, title: 'Accesorios'),
  NavigationBarItemConfig(id: 11, title: 'Soporte'),
];
const List<NavigationBarItemConfig> fixedRightItems = [
  NavigationBarItemConfig(id: 12, icon: CupertinoIcons.search),
  NavigationBarItemConfig(id: 13, icon: CupertinoIcons.bag),
];
