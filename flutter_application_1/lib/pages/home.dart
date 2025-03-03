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
      backgroundColor: Color(0xffF5F5F5),
      body: Container(
            margin: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [ 
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                    Text(
                      "Hey, Shivam", 
                      style: AppWidget.boldTextFeildStyle(),
                ),
             
                     Text(
                        "Good Morning", 
                       style: AppWidget.lightTextFeildStyle(),
          ),
              ],
            ),
                   ClipRRect(
                    borderRadius: BorderRadius.circular(30.0),
                    child: Image.asset("images/boy.jpg", 
                    height: 70, 
                    width: 70, 
                    fit: BoxFit.cover,))
          ],
          ),
  Container(
    padding: EdgeInsets.only(top: 20.0),
    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10.0)),
    width: MediaQuery.of(context).size.width,
    child: TextField(
      decoration: InputDecoration(border: InputBorder.none, hintStyle: AppWidget.lightTextFeildStyle(), prefixIcon: Icon(Icons.search), hintText: "Search for products ")
    )),
      SizedBox(height: 20.0),
      Row(
        children: [
          Text("Categories", style: TextStyle(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.bold),),
        ],
      ),
          

      ],
      ),
      ),


    );
  }
}