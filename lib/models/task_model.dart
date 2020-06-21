import 'package:flutter/material.dart';
import './category_model.dart';

class Task {
  final String task;
  final String date;
  final String time;
  final bool isDone;
  final bool isLate;

  Task({
    this.task,
    this.date,
    this.time,
    this.isDone,
    this.isLate,
  });
}

// Create Task Category

final Category allTask = Category(
  name: "All",
  iconType: Icon(Icons.assignment),
  colors: Colors.blue,
  amountOfTask: 23
);

final Category work = Category(
  name: "Work",
  iconType: Icon(Icons.work),
  colors: Colors.orange,
  amountOfTask: 14
);

final Category music = Category(
  name: "Music",
  iconType: Icon(Icons.music_note),
  colors: Colors.purple,
  amountOfTask: 3
);

final Category travel = Category(
  name: "Travel",
  iconType: Icon(Icons.airplanemode_active),
  colors: Colors.green,
  amountOfTask: 1
);

List <Category> task_cat = [allTask, work, music, travel];

List <Task> all_task = [
  Task(
    task: "Call Max",
    isDone: false,
    isLate: true,
    time: "20:15",
    date: "April 29"
  ),

  Task(
    task: "Call Siew Ee",
    isDone: false,
    isLate: true,
    time: "20:15",
    date: "April 30"
  ),

  Task(
    task: "Practice Piano",
    isDone: false,
    isLate: false,
    time: "16:00",
    date: "21 June 2020"
  ),

  Task(
    task: "Learn Spanish",
    isDone: false,
    isLate: false,
    time: "17:00",
    date: "21 June 2020"
  ),

  Task(
    task: "Get Married",
    isDone: false,
    isLate: false,
    time: "13:20",
    date: "21 June 2020"
  ),

  Task(
    task: "Finalize Presentation",
    isDone: true,
    isLate: false,
    time: "9:00", 
    date: "20 June 2020"
  ),

  Task(
    task: "Meet Jackson",
    isDone: true,
    isLate: false,
    time: "9:00", 
    date: "20 June 2020"
  )
];