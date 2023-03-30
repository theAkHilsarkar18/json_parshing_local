
import 'package:flutter/material.dart';

class TodoModel
{
  int? id,userId;
  String? title;
  bool? completed;
  TodoModel({this.id, this.userId, this.title, this.completed });
  TodoModel jsonFromTodo(Map m1)
  {
    id = m1['id'];
    userId = m1['userId'];
    title = m1['title'];
    completed = m1['completed'];

    TodoModel todoModel  = TodoModel(title: title,userId: userId,id: id,completed: completed);
    return todoModel;
  }

}