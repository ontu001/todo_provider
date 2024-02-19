import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:msh_checkbox/msh_checkbox.dart';
import 'package:provider/provider.dart';
import 'package:todo_provider/provider/todo_provider.dart';
import 'package:todo_provider/utility/const.dart';

class listTile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Consumer<TodoProvider>(builder: (context, dataModel, child){
      return ListView.builder(
        itemCount: dataModel.allToDo.length,
        itemBuilder: (context, index){
          return ListTile(

            title: GestureDetector(

                onTap: (){
                  dataModel.toggleCheck(dataModel.allToDo[index]);
                },
                child: Text(dataModel.allToDo[index].title,style: TextStyle(color: kCommonColor,fontSize: 18.0,fontWeight: FontWeight.w800),)),
            leading: MSHCheckbox(
              size: 20.0,
              colorConfig: MSHColorConfig.fromCheckedUncheckedDisabled(
                checkedColor: Colors.deepPurpleAccent,

              ),
              style: MSHCheckboxStyle.stroke,
              value: dataModel.allToDo[index].isDone,
              onChanged: (value){
                dataModel.toggleCheck(dataModel.allToDo[index]);
              },
            ),
            trailing: TextButton(onPressed: (){},child: Text('Delete',style: TextStyle(color: Colors.red,fontWeight: FontWeight.w900),),),

          );
        },
      );
    });
  }

}