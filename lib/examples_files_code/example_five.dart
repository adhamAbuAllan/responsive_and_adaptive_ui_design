import 'package:flutter/material.dart';

main() {
  runApp(const MaterialApp(
    home: _MyApp(),
  ));
}

class _MyApp extends StatelessWidget {
  const _MyApp();

  @override
  Widget build(BuildContext context) {
    return const AspectRationExample();
  }
}

class AspectRationExample extends StatelessWidget {
  const AspectRationExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: AspectRatio(
          aspectRatio: 1,
          child: Container(
            color: Colors.deepOrangeAccent,
            width: MediaQuery.sizeOf(context).width,
          ),
        ),
      ),
    );
  }
}
