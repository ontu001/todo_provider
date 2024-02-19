import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:todo_provider/model/todo_model.dart';
import 'package:todo_provider/provider/todo_provider.dart';
import 'package:todo_provider/utility/const.dart';

class bottomSheet extends StatelessWidget {
  TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Consumer<TodoProvider>(builder: (context, dataModel, child) {
      return Container(
        width: double.maxFinite,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
        ),
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
              "Add Your Task",
              style: ktextStyle,
            ),
            SizedBox(
              height: 20.0,
            ),
            TextField(
              autofocus: true,
              decoration: InputDecoration(hintText: 'add something...'),
              controller: _textEditingController,
            ),
            SizedBox(
              height: 15.0,
            ),
            SizedBox(
              width: 200.0,
              child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(kCommonColor),
                  ),
                  onPressed: () {
                    dataModel.addToDo(new TODOModel(isDone: false, title: _textEditingController.text));
                    _textEditingController.clear();
                    Navigator.pop(context);
                  },
                  child: Text(
                    'ADD',
                    style: TextStyle(color: Colors.white),
                  )),
            )
          ],
        ),
      );
    });
  }
}
