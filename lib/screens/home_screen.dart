import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          children: [
            const Text('Welcome to the Home Screen'),
            const SizedBox(height: 16),
            Image.network(
              'https://picsum.photos/250?image=9',
              width: 250,
              height: 250,
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
