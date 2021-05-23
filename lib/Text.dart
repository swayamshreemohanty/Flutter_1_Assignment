import 'package:flutter/material.dart';
import './Text_control.dart';

class Texts extends StatelessWidget {
  final Function filehandler;
  final String texthandler;

  Texts(this.filehandler, this.texthandler);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: RaisedButton(
          color: Colors.blue,
          textColor: Colors.white,
          child: Text(texthandler),
          onPressed: filehandler,
        ));
  }
}
