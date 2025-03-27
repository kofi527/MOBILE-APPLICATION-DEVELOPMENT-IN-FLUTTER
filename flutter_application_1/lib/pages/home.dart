import 'package:flutter/material.dart';
import 'package:namer_app/widget/support_widget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _OnboardingState();
  }

class _OnboardingState extends State<Home> {
List categories=[
  "images/ear.jpg",
  "images/gal.jpg",
  "images/shirt.jpg",
  "images/tape.jpg",
];

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
                    child: Image.asset("images/ear.jpg", 
                    height: 70, 
                    width: 70, 
                    fit: BoxFit.cover,))
          ],
          ),
          SizedBox(height: 30.0),
  Container(
    padding: EdgeInsets.only(top: 20.0),
    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10.0)),
    width: MediaQuery.of(context).size.width,
    child: TextField(
      decoration: InputDecoration(border: InputBorder.none, hintStyle: AppWidget.lightTextFeildStyle(), prefixIcon: Icon(Icons.search), hintText: "Search for products ")
    )),
      SizedBox(height: 20.0),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Categories", 
          style: AppWidget.semiboldTextFeildStyle()
          ),
          Text(
            "see all", 
          style: TextStyle(color: Color(0xFFfd6f3e), fontSize: 18.0, fontWeight: FontWeight.bold)
          ),
        ],
      ),
      Row(
         children: [
      SizedBox(height: 20.0),
      Container(
      padding: EdgeInsets.all(20.0),
      margin: EdgeInsets.only(right: 5.0),
      decoration: BoxDecoration(
        color: Colors.white, 
        borderRadius: BorderRadius.circular(10.0)
      ),
      height: 90,
      width: 90,
      child: Text("ALL", style: AppWidget.semiboldTextFeildStyle(), textAlign: TextAlign.center,)
      
      
    
      ),
    
       Expanded(
      child: Container(
             height: 140,
        padding: EdgeInsets.zero,
        child: ListView.builder(
          itemCount: categories.length,
          shrinkWrap: true, 
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index){
            return CategoryTile(image: categories[index]);
        })
       ),   
       ),
         ],
      ),
    ],
     ),
      
    ),
    );
  }
}
// creating a stateless widgets
class CategoryTile extends StatefulWidget {
  final String image;  
  CategoryTile({required this.image});

  @override
  _CategoryTileState createState() => _CategoryTileState();
}
class _CategoryTileState extends State<CategoryTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      margin: EdgeInsets.only(right: 5.0),
      decoration: BoxDecoration(
        color: Colors.white, 
        borderRadius: BorderRadius.circular(10.0)
      ),
      height: 90,
      width: 90,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
      Image.asset(widget.image, height: 50, width: 50, fit: BoxFit.cover
      ),
      
      Icon(Icons.arrow_forward)
      ])
    );
  }
}