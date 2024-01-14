import 'package:flutter/material.dart';
import 'package:web_app/widgets/navbar.dart';

import '../utils/constants.dart';

class homePg extends StatefulWidget {
  const homePg({super.key});

  @override
  State<homePg> createState() => _homePgState();
}

class _homePgState extends State<homePg> {
  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;
    return Scaffold(
     body: SingleChildScrollView(
       child: Container(
        child: const Column(
          children: [
           navbar()
        ]),
       ),
     ),
    );
  }
}