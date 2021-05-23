import 'package:flutter/material.dart';

class Texts extends StatelessWidget {
  final Function filehandler;
  final String texthandler = "TAP";

  Texts(this.filehandler);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: RaisedButton(
      color: Colors.blue,
      textColor: Colors.white,
      child: Text(texthandler),
      onPressed: filehandler,
    ));
  }
}
