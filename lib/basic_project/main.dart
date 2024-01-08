import 'package:flutter/material.dart';

import 'views/home_vieew.dart';

main() {
  runApp(const MaterialApp(
    home: AdpateiveApp(),
  ));
}

class AdpateiveApp extends StatelessWidget {
  const AdpateiveApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomView();
  }
}
