import 'package:flutter/material.dart';

import 'main_page.dart';
import 'colors.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'vegan',
      theme: ThemeData(
        splashColor: green1,
        fontFamily: 'Renogare'
      ),
      home: MainPage()
    );
  }
}