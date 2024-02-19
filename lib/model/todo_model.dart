class TODOModel {
  String title;
  bool isDone;


  TODOModel({required this.isDone, required this.title});

  void toggleChange(){
    isDone = ! isDone;
  }
}