import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'bottom_sheet.dart';

class floatingButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  FloatingActionButton(
      elevation: 0,
      child: Icon(Icons.add,color: Colors.white,),
      onPressed: (){
        showModalBottomSheet(context: context, builder: (context)=>bottomSheet());
      },
      backgroundColor: Colors.deepPurpleAccent,
      shape: CircleBorder(),
    );
  }


}