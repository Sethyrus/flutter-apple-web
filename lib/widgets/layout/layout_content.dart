import 'package:apple/utils/constants/media_queries.dart';
import 'package:apple/utils/helpers.dart';
import 'package:flutter/widgets.dart';

class LayoutContent extends StatelessWidget {
  final Widget child;

  const LayoutContent({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final topPadding = Helpers.getResponsiveSize(
      MediaQueries.navigationBarHeights,
      MediaQuery.sizeOf(context).width,
    );

    return Padding(
      padding: EdgeInsets.only(top: topPadding),
      child: child,
    );
  }
}
