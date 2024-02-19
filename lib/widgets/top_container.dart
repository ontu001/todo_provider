import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class topContainer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Expanded(
     child: Container(
       width: double.maxFinite,
       decoration: BoxDecoration(
         color: Colors.deepPurpleAccent,
         borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20.0), bottomRight: Radius.circular(20.0)),
       ),

       child: Center(
         child: Text(
           "YOUR TODO'S", style:  TextStyle(fontSize: 25.0,color: Colors.white,fontWeight: FontWeight.bold),
         ),
       ),

     ),
   );
  }

}