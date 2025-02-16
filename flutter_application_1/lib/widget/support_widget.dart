import 'package:flutter/material.dart';

class AppWidget{

    static TextStyle boldTextFeildStyle(){
        return TextStyle(
            color: Colors.black,
            fontSize: 20.0, 
            fontWeight: FontWeight.bold
        );
    }
    static TextStyle lightTextFeildStyle() {
        return TextStyle(
          color: Colors.black45, 
          fontSize: 20.0, fontWeight: FontWeight.w500);
    }
}