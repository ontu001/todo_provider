import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_provider/provider/todo_provider.dart';

class listTile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Consumer<TodoProvider>(builder: (context, dataModel, child){
      return ListView.builder(
        itemCount: dataModel.allToDo.length,
        itemBuilder: (context, index){
          return ListTile(
            title: Text(dataModel.allToDo[index].title),

          );
        },
      );
    });
  }

}