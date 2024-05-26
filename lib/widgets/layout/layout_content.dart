import 'package:apple/providers/navigation_bar/active_navigation_bar_item_provider.dart';
import 'package:apple/utils/constants/media_queries.dart';
import 'package:apple/utils/helpers.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LayoutContent extends ConsumerWidget {
  final Widget child;

  const LayoutContent({super.key, required this.child});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final topPadding = Helpers.getResponsiveSize(
      MediaQueries.navigationBarHeights,
      MediaQuery.sizeOf(context).width,
    );

    return MouseRegion(
      onEnter: (_) => ref
          .read(activeNavigationBarItemProvider.notifier)
          .setActiveItem(null),
      child: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: EdgeInsets.only(top: topPadding),
          child: child,
        ),
      ),
    );
  }
}
