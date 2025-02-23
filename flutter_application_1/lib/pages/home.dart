import 'package:flutter/material.dart';
import 'package:namer_app/widget/support_widget.dart';

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [ 
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
        Text("Hey, Shivam", 
        style: AppWidget.boldTextFeildStyle(),
        ),
          Image.asset("images/boy.jpg", height: 70, width: 70, fit: BoxFit.cover,)
          ],
          ),
        Text("Good Morning", 
        style: AppWidget.lightTextFeildStyle(),
          ),
          

      ],
      ),
      ),


    );
  }
}