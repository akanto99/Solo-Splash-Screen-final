import 'dart:async';
import 'package:flutter/material.dart';
import 'package:splash_screen_final/homepage.dart';



class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = Duration(seconds: 3);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(context, MaterialPageRoute(
      builder: (context) => ( Homepage() ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return initWidget(context);
  }

  Widget initWidget(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF2BAD93),
        body: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 70,
                      height: 110,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        //shape: BoxShape.circle,
                        borderRadius: BorderRadius.circular(100),
                        image: DecorationImage(
                          image: AssetImage("assets/images/01928387003.jpg"),
                          fit: BoxFit.fill,
                        ),
                        border: Border.all(
                          width: 2,
                          color: const Color(0xFF16E1B8),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Smart Doctor", style: TextStyle(fontSize: 30, color: const Color(0xFF16E1B8), fontWeight: FontWeight.w500,),)
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircularProgressIndicator(),
                  ],
                ),
              ],
            ),

            //upper
            Positioned(
              left: 0,
              top: -80,
              child: Container(
                width: 150.0,
                height: 150.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: const Color(0xFF2EDFBC).withOpacity(0.64),
                ),
              ),
            ),
            Positioned(
              left: -80,
              top: -8,
              child: Container(
                width: 150.0,
                height: 150.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: const Color(0xFF23FFA0).withOpacity(0.26),
                ),
              ),
            ),

            //lower
            Positioned(
              right: -76,
              bottom: -5,
              child: Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: const Color(0xFF2EDFBC).withOpacity(0.64),
                ),
              ),
            ),
            Positioned(
              right: -1,
              bottom: -75,
              child: Container(
                width: 150.0,
                height: 150.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: const Color(0xFF23FFA0).withOpacity(0.26),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
