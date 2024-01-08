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
    return const ExpandedExample();
  }
}

class ExpandedExample extends StatelessWidget {
  const ExpandedExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("App Bar"),),
      body: Column(children: [
        // you understand Expanded widget before.
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.purple,
          ),
        ),
        Expanded(
          child: Container(
            height: 251,
            color: Colors.grey,
          ),
        ),  Expanded(
          child: Container(
            color: Colors.brown,
          ),
        ),
      ]),
    );
  }
}
