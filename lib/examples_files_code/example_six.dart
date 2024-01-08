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
    return const IntrinsicWidgets();
  }
}

class IntrinsicWidgets extends StatelessWidget {
  const IntrinsicWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          const SizedBox(
            height: 250,
          ),
          // make the height of row according the heights of children
          IntrinsicHeight(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.blue,
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(

                        children: [
                          Text("you can put many of widgets without make an error of height ",style: TextStyle(color: Colors.white),),
                          SizedBox(height: 10,),
                          Text("you can put many of widgets without make an error of height ",style: TextStyle(color: Colors.white)),
                          SizedBox(height: 10,),
                          Text("you can put many of widgets without make an error of height ",style: TextStyle(color: Colors.white)),
                          SizedBox(height: 10,),
                          Text("you can put many of widgets without make an error of height ",style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 18,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          height: 100,
                          color: Colors.deepOrange,
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Expanded(
                        child: Container(
                          height: 100,
                          color: Colors.blueGrey,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
