import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_app/utils/constants.dart';

class container1 extends StatefulWidget {
  const container1({super.key});

  @override
  State<container1> createState() => _container1State();
}

class _container1State extends State<container1> {
  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return ScreenTypeLayout(
      mobile: mobileContainer1(),
      desktop: desktopContainer1(),
    );
  }

  Widget mobileContainer1() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(
          height: 500,
          decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage(illustration1))),
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          "Track your\nexpense to\nsave money",
          style: TextStyle(
              fontSize: w! / 20, height: 1.2, fontWeight: FontWeight.bold),
        ),
        Text(
          "helps you to organize your income and expenses",
          style: TextStyle(color: Colors.grey.shade400, fontSize: 25),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ignore: avoid_unnecessary_containers
            Container(
              child: ElevatedButton.icon(
                  style: ButtonStyle(
                      elevation: MaterialStateProperty.all(0),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.deepOrange)),
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_drop_down),
                  label: const Text("Try Free ")),
            ),
            const SizedBox(
              width: 17,
            ),
            Center(
              child: Text("--Web, IOS and Android",
                  style: TextStyle(color: Colors.grey.shade400, fontSize: 25)),
            ),
          ],
        )
      ]),
    );
  }

  Widget desktopContainer1() {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Row(children: [
        Expanded(
            child: Container(
          margin: EdgeInsets.symmetric(horizontal: w! / 30),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "Track your\nexpense to\nsave money",
              style: TextStyle(
                  fontSize: w! / 13, height: 1.1, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "helps you to organize your income and expenses",
              style: TextStyle(color: Colors.grey.shade400, fontSize: 18),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // ignore: avoid_unnecessary_containers
                Container(
                  child: ElevatedButton.icon(
                      style: ButtonStyle(
                          elevation: MaterialStateProperty.all(0),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.deepOrange)),
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_drop_down),
                      label: const Text("Try Free ")),
                ),
                const SizedBox(
                  width: 17,
                ),
                Center(
                  child: Text("--Web, IOS and Android",
                      style:
                          TextStyle(color: Colors.grey.shade400, fontSize: 18)),
                ),
              ],
            )
          ]),
        )),
        Expanded(
          child: Container(
            height: 530,
            decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage(illustration1))),
          ),
        )
      ]),
    );
  }
}
