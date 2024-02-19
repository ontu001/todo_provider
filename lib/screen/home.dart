import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:todo_provider/widgets/floating_action_button.dart';
import 'package:todo_provider/widgets/top_container.dart';
import '../widgets/list.dart';

class Home extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:floatingButton(),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            topContainer(),
            Expanded(
              flex: 4,
              child: listTile(),
            )
          ],
        ),
      ),
    );
  }

}