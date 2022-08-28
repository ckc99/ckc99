import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Answer extends StatelessWidget {
  //final Function selectHandler;
  final VoidCallback selectHandler;
  final String answerDescr;

  Answer(this.selectHandler,
      this.answerDescr); //We construct the Answer object and pass the function inside

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text(answerDescr),
        style: ElevatedButton.styleFrom(primary: Colors.blue),
        onPressed: selectHandler, //point to the function that we input
      ),
    );
  }
}
