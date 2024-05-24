import 'package:apple/models/app/navigation_bar_item/navigation_bar_dropdown_column_config.dart';
import 'package:apple/models/app/navigation_bar_item/navigation_bar_dropdown_column_item_config.dart';
import 'package:apple/models/app/navigation_bar_item/navigation_bar_item_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

final List<NavigationBarItemConfig> fixedLeftItems = [
  NavigationBarItemConfig(icon: MdiIcons.apple),
];
const List<NavigationBarItemConfig> centerItems = [
  NavigationBarItemConfig(
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
  NavigationBarItemConfig(title: 'Mac'),
  NavigationBarItemConfig(title: 'iPad'),
  NavigationBarItemConfig(title: 'iPhone'),
  NavigationBarItemConfig(title: 'Watch'),
  NavigationBarItemConfig(title: 'AirPods'),
  NavigationBarItemConfig(title: 'TV y Casa'),
  NavigationBarItemConfig(title: 'Entretenimiento'),
  NavigationBarItemConfig(title: 'Accesorios'),
  NavigationBarItemConfig(title: 'Soporte'),
];
const List<NavigationBarItemConfig> fixedRightItems = [
  NavigationBarItemConfig(icon: CupertinoIcons.search),
  NavigationBarItemConfig(icon: CupertinoIcons.bag),
];
