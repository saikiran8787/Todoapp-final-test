import 'package:flutter/material.dart';

class Bottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Bottom"),
          centerTitle: true,
          backgroundColor: Colors.blueGrey,
        ),
      ),
    );
  }
}
