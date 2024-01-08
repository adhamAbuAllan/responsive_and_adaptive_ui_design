import 'dart:developer';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
      // change the size of widgets according screen constrains.
      body: LayoutBuilder(builder: (context, constrains) {
        log(constrains.maxWidth.toString());
        //if constrains is smallest 500 get the MobileLayout class , else get
        //the DesktopLayout class
        return  constrains.maxWidth <= 500 ? const _MobileLayout() : const _DesktopLayout();
      }),
    ));
  }
}

class _MobileLayout extends StatelessWidget {
  const _MobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                  return DetailsView(number: index + 1);
                }));
              },
              child: Container(
                color: Colors.blueGrey,
                margin: EdgeInsets.only(bottom: 16),
                child: ListTile(
                  title: Text('${index + 1}'),
                ),
              ),
            );
          }),
    );
  }
}
class _DesktopLayout extends StatefulWidget {
  const _DesktopLayout({super.key});

  @override
  State<_DesktopLayout> createState() => _DesktopLayoutState();
}

class _DesktopLayoutState extends State<_DesktopLayout> {
  int number =1 ;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: (){
                    setState(() {
                      number = index +1;
                    });
                  },
                  child: Container(
                    color: Colors.blueGrey,
                    margin: EdgeInsets.only(bottom: 16),
                    child: ListTile(
                      title: Text('${index + 1}'),
                    ),
                  ),
                );
              }),
        ),
        Expanded(child: Container(child: Center(child: Text("$number"),),))
      ],
    );
  }
}

class DetailsView extends StatelessWidget {
  const DetailsView({super.key, required this.number});

  final int number;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Text(
            number.toString(),
            style: TextStyle(fontSize: 35),
          )),
    );
  }
}
