import 'package:flutter/cupertino.dart';

import '../model/todo_model.dart';

class TodoProvider extends ChangeNotifier{
  final List<TODOModel> _todoList = [];

  List<TODOModel> get allToDo => _todoList;

  void addToDo (TODOModel todoModel){
    _todoList.add(todoModel);
    notifyListeners();
  }

  void removeToDo (TODOModel todoModel){
    final index = _todoList.indexOf(todoModel);
    _todoList.removeAt(index);
    notifyListeners();
  }


}