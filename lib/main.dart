import 'package:flutter/material.dart';

import 'homepage.dart';
import 'constants.dart';

void main() {
  runApp(MyApp());
}

var constants = DropQuestConstants();

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Drop Quest',
      theme: ThemeData(
          appBarTheme: AppBarTheme(
              centerTitle: true, shadowColor: Color(constants.borderColor))),
      home: HomepageScreen(),
    );
  }
}
