import 'package:flutter/material.dart';
import 'package:todo/screens/addialogue.dart';
import 'package:todo/screens/to_do_list_widget.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final tabs = [
      TodoListWidget(),
      Container(),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("Todo App"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey[300],
        currentIndex: selectedIndex,
        onTap: (index) => setState(() {
          selectedIndex = index;
        }),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.fact_check_outlined, size: 28),
            label: "Todos",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.done, size: 28),
            label: "Completed",
          ),
        ],
      ),
      body: tabs[selectedIndex],
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        onPressed: () => showDialog(
          builder: (context) => Addialogue(),
          context: context,
          barrierDismissible: false,
        ),
        child: Icon(Icons.add),
      ),
    );
  }
}
