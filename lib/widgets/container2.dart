import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_app/utils/color.dart';
import 'package:web_app/utils/constants.dart';

class container2 extends StatefulWidget {
  const container2({super.key});

  @override
  State<container2> createState() => _container2State();
}

class _container2State extends State<container2> {
  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return ScreenTypeLayout(
      mobile: mobileContainer2(),
      desktop: desktopContainer2(),
    );
  }

  Widget mobileContainer2() {
    return Container(
        width: double.infinity,
        decoration: BoxDecoration(color: appColors.primaryColor),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 20, right: 20, left: 20, bottom: 0),
              child: Container(
                height: 195,
                width: double.infinity,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          dashboard,
                        ),
                        fit: BoxFit.contain)),
              ),
            ),
            Container(
              width: double.infinity,
              color: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    companyLogo(google),
                    const SizedBox(
                      height: 15,
                    ),
                    companyLogo(cocacola),
                    const SizedBox(
                      height: 15,
                    ),
                    companyLogo(fb),
                    const SizedBox(
                      height: 15,
                    ),
                    companyLogo(samsung),
                    const SizedBox(
                      height: 15,
                    ),
                    companyLogo(linkedin),
                  ]),
            )
          ],
        ));
  }

  Widget desktopContainer2() {
    // ignore: avoid_unnecessary_containers
    return Container(
        height: 900,
        width: double.infinity,
        decoration: BoxDecoration(color: appColors.primaryColor),
        child: Column(
          children: [
            Expanded(
                child: Stack(
              children: [
                Positioned(
                  top: -20,
                  right: -20,
                  child: Container(
                    height: 320,
                    width: 320,
                    decoration: const BoxDecoration(
                        image: DecorationImage(image: AssetImage(vector1))),
                  ),
                ),
                Positioned(
                  left: -30,
                  bottom: -30,
                  child: Container(
                    height: 320,
                    width: 320,
                    decoration: const BoxDecoration(
                        image: DecorationImage(image: AssetImage(vector2))),
                  ),
                ),
                Positioned(
                  left: 43,
                  right: 43,
                  bottom: 0,
                  child: Container(
                    height: 712,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              dashboard,
                            ),
                            fit: BoxFit.contain)),
                  ),
                )
              ],
            )),
            Container(
              height: 160,
              width: double.infinity,
              color: const Color.fromRGBO(255, 255, 255, 1),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    companyLogo(google),
                    companyLogo(cocacola),
                    companyLogo(fb),
                    companyLogo(samsung),
                    companyLogo(linkedin),
                  ]),
            )
          ],
        ));
  }

  Widget companyLogo(String image) {
    return Container(
      height: 32,
      width: 160,
      decoration: BoxDecoration(
          image:
              DecorationImage(image: AssetImage(image), fit: BoxFit.contain)),
    );
  }
}
