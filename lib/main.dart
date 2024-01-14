import 'package:flutter/material.dart';
import 'package:web_app/pages/home_page.dart';
import 'package:web_app/utils/color.dart';

void main() => runApp(myApp());

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Xpense',
      debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.dark,
          fontFamily: 'HindSiliguri',
          primaryColor: appColors.primaryColor,
        ),
        home: const homePg(),
    );
  }
}