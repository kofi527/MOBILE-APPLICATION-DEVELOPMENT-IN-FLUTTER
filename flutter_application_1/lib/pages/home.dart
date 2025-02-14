import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _OnboardingState();
  }

class _OnboardingState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 40.0, left: 20.0),
        child: Column(
          children: [ 
        Text("Hey, Shivam", style: TextStyle(color: Colors.black, fontSize: 30.0, fontWeight: FontWeight.bold)),

      ]
      )
      )


    );
  }
}