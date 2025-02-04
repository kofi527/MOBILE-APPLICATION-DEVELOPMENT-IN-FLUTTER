import 'package:flutter/material.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
  }

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext) {
    return Scaffold (
      backgroundColor: Color(0xffecefe8),
             
      body: Container(
        margin: EdgeInsets.only(top: 50.0),
        child: Column(children: [
Image.asset("images/devops.JPG"),
Text("Explore\nThe Best Products")

      ])      )

    );


  }
  
  }




