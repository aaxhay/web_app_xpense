import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_app/utils/buttonstyle.dart';
import 'package:web_app/utils/color.dart';

class navbar extends StatefulWidget {
  const navbar({super.key});

  @override
  State<navbar> createState() => _navbarState();
}

class _navbarState extends State<navbar> {
  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return ScreenTypeLayout(
      mobile: mobileNav(),
      desktop: desktopNavbar(),

    );
  }


  Widget mobileNav(){
     return Container(
       margin: EdgeInsets.symmetric(horizontal: 20),
       height: 70,
       child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.menu),
          navLogo(),
        ],
       ),
     );
  }
  

  Widget desktopNavbar(){
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            navLogo(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                navHeads('Features'),
                navHeads('About us'),
                navHeads('Pricing'),
                navHeads('feedbacks'),
              ],
            ),

            Container(
              height: 45,
              child: ElevatedButton(
                style: borderButtonStyle,
                onPressed: (){}, child: Text("Request a Demo",style: TextStyle(color: appColors.primaryColor),),),
            )
          ],
        ),
    );
  }

  Widget navHeads(String text){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 9),
       child: TextButton(onPressed: (){},child: Text(text,style: TextStyle(color: Colors.black,fontSize: 18),),),
    );
  }
  
  Widget navLogo(){
    return Container(
    width: 110,
    decoration: BoxDecoration(
      image: new DecorationImage(image: AssetImage('assets/image/logo.png'),),
    ),
    );
  }
}