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
    return const _FittedBoxExample();
  }
}

class _FittedBoxExample extends StatefulWidget {
  const _FittedBoxExample();

  @override
  State<_FittedBoxExample> createState() => _FittedBoxExampleState();
}

class _FittedBoxExampleState extends State<_FittedBoxExample> {
  var imageUrls = [
    'https://www.diakonia.se/_next/image/?url=https%3A%2F%2Fapidiakoniase.cdn.triggerfish.cloud%2Fuploads%2Fsites%2F2%2F2021%2F12%2Fpalestine-flag-protest.jpeg&w=1920&q=75',
    'https://www.diakonia.se/_next/image/?url=https%3A%2F%2Fapidiakoniase.cdn.triggerfish.cloud%2Fuploads%2Fsites%2F2%2F2021%2F12%2Fpalestine-flag-protest.jpeg&w=1920&q=75',
    'https://www.diakonia.se/_next/image/?url=https%3A%2F%2Fapidiakoniase.cdn.triggerfish.cloud%2Fuploads%2Fsites%2F2%2F2021%2F12%2Fpalestine-flag-protest.jpeg&w=1920&q=75',
    'https://www.diakonia.se/_next/image/?url=https%3A%2F%2Fapidiakoniase.cdn.triggerfish.cloud%2Fuploads%2Fsites%2F2%2F2021%2F12%2Fpalestine-flag-protest.jpeg&w=1920&q=75',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: GridView.builder(
          itemCount: imageUrls.length,
          itemBuilder: (context, index) {
            return FittedBox(child: Image.network(imageUrls[index]));
          },
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 4,
            mainAxisSpacing: 4,
          ),
        ));
  }
}
