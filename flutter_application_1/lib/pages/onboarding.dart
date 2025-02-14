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
        margin: EdgeInsets.only(top: 50.0, left: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
Image.asset("images/devops.JPG"),
Padding(
  padding: const EdgeInsets.only(left: 20.0),
  child:
Text("Explore\nThe Best Products",
   style: TextStyle(color: Colors.black,
           fontSize: 30.0, 
           fontWeight: 
           FontWeight.bold),
           ),
           ),
      Container(
        margin: EdgeInsets.only(right: 20.0),
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(color: Colors.black,shape: BoxShape.circle), 
        child: Text(
          "Next",
          style: TextStyle(color: Colors.white,
           fontSize: 30.0, 
           fontWeight: 
           FontWeight.bold),
        )
      ),
      

      ])      )

    );


  }
  
  }




