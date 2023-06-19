import 'package:flutter/material.dart';
class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Text("Splash Screen Final Test File Done", style: TextStyle(fontSize: 40,color: Colors.green),),
        ),
      ),
    );
  }
}
