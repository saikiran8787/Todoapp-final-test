import 'package:flutter/material.dart';
import 'package:todo/screens/homepage.dart';
import 'package:todo/screens/todoprovider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => TodosProvider(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'ToDo',
          home: Homepage(),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      );
}
