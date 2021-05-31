import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:todo/screens/modeltodo.dart';

class TodosProvider extends ChangeNotifier {
  List<Todo> _todos = [
    Todo(
      createdTime: DateTime.now(),
      title: 'Eat biryani 😋',
      description: '''- Eggs
- Masala
- Bowl
- Water''',
    ),
    Todo(
      createdTime: DateTime.now(),
      title: 'Plan family trip to Ladakh',
      description: '''- Rent some hotels
- Rent a car
- Pack suitcase''',
    ),
    Todo(
      createdTime: DateTime.now(),
      title: 'Buying the Dog 🐕',
    ),
    Todo(
      createdTime: DateTime.now(),
      title: 'Plan Saikiran birthday party 🎉🥳',
    ),
  ];

  var todosCompleted;

  List<Todo> get todos => _todos.where((todo) => todo.isDone == false).toList();

  void addTodo(Todo todo) {
    _todos.add(todo);

    notifyListeners();
  }

  void removeTodo(Todo todo) {
    _todos.remove(todo);

    notifyListeners();
  }

  bool toggleTodoStatus(Todo todo) {
    todo.isDone = !todo.isDone;
    notifyListeners();

    return todo.isDone;
  }

  void updateTodo(Todo todo, String title, String description) {
    todo.title = title;
    todo.description = description;

    notifyListeners();
  }
}
