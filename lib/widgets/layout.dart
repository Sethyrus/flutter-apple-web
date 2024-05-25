import 'package:apple/widgets/navigation_bar/navigation_bar.dart';
import 'package:flutter/widgets.dart';

class Layout extends StatelessWidget {
  final Widget child;

  const Layout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const NavigationBar(),
          child,
        ],
      ),
    );
  }
}
