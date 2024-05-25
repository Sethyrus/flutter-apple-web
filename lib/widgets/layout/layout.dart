import 'package:apple/widgets/layout/layout_content.dart';
import 'package:apple/widgets/navigation_bar/navigation_bar.dart';
import 'package:flutter/material.dart';

class Layout extends StatelessWidget {
  final Widget child;

  const Layout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const CNavigationBar(),
          LayoutContent(child: child),
        ],
      ),
    );
  }
}
