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
    return const FlexibleAndFittedBoxExample.flexibleAndFittedBoxExample();
  }
}

class FlexibleAndFittedBoxExample extends StatelessWidget {
  const FlexibleAndFittedBoxExample.flexibleAndFittedBoxExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("App Bar"),
      ),

      body: Column(children: [
        //make the icon not change of size but still it imaginary widget around

        //the widgets.
        const Flexible(
          //still icon is 300 if around is empty.

          //else if the icon under widget of icon press the size of icon->

          //the box of FittedBox will smallest and smallest so->

          //make the size fitted according size of box.
            child: FittedBox(
                child: Icon(
          Icons.ac_unit,
          size: 300,
        ))),
        Container(
          height: 250,
          color: Colors.black12,
        ),
        Expanded(
          child: Container(
            height: 150,
            color: Colors.purple,
            child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Icon(Icons.abc)),
          ),
        ),
        Container(
          height: 250,
          color: Colors.brown,
        ),
      ]),
    );
  }
}
