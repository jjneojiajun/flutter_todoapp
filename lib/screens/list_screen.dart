import 'package:flutter/material.dart';
import 'package:to_do_list/screens/new_tasks.dart';
import '../models/task_model.dart';
import '../models/category_model.dart';

class ListScreen extends StatefulWidget {
  final Category category;

  ListScreen({this.category});

  @override
  _ListScreenState createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  var _lateTasks = all_task.where((all_task) => all_task.isLate).toList();
  var _todayTasks = all_task.where((all_task) => all_task.date == "21 June 2020").toList();
  var _doneTasks = all_task.where((all_task) => all_task.isDone).toList();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_left), 
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          }),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_vert), 
            iconSize: 30.0,
            color: Colors.white,
            onPressed: () {}
          )
        ],
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 30.0, top: 5.0, bottom: 5.0, right: 30.0),
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    radius: 35.0,
                    child: IconButton(
                      icon: Icon(Icons.assignment),
                      color: Colors.white,
                      onPressed: () {},
                    ),
                  )
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 48.0, top: 5.0, bottom: 5.0, right: 30.0),
              child: Row(
                children: <Widget>[
                  Text(
                    "All",
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  )
                ],
              )
            ),

            Padding(
              padding: const EdgeInsets.only(left: 48.0, top: 0.0, bottom: 10.0, right: 30.0),
              child: Row(
                children: <Widget>[
                  Text(
                    "24 Tasks",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),

            Flexible(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0)
                  ),
                ),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Text(
                            "Late",
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ] 
                    ),

                    Flexible(
                      child: ListView.builder(
                        itemCount: _lateTasks.length,
                        itemBuilder: (BuildContext, int index) {
                          return Padding(
                            padding: EdgeInsets.only(left: 30.0, top: 0.0, bottom: 0.0),
                            child: Row(
                              children: <Widget> [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      _lateTasks[index].task,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16.0,
                                      ),
                                    ),
                                    Text(
                                      _lateTasks[index].time + " " + _lateTasks[index].date,
                                      style: TextStyle(
                                        color: Colors.red,
                                        fontSize: 12.0
                                      ),
                                    ),
                                  ],
                                ),

                                Spacer(),

                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.only(right: 15.0),
                                      child: Checkbox(
                                        value: false,
                                        onChanged: (bool value) {},
                                      )
                                    )
                                  ],
                                )
                              ]
                            ),
                          );
                        },
                      ),
                    ),

                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 30.0, bottom: 5.0),
                          child: Text(
                            "Today",
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ] 
                    ),

                    Expanded(
                      child: ListView.builder(
                        padding: EdgeInsets.zero,
                        itemCount: _todayTasks.length,
                        itemBuilder: (BuildContext, int index) {
                          return Padding(
                            padding: EdgeInsets.only(left: 30.0, top: 0.0, bottom: 0.0, right: 0.0),
                            child: Row(
                              children: <Widget> [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      _todayTasks[index].task,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16.0,
                                      ),
                                    ),
                                    Text(
                                      _todayTasks[index].time,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12.0
                                      ),
                                    ),
                                  ],
                                ),

                                Spacer(),

                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.only(right: 15.0),
                                      child: Checkbox(
                                        value: false,
                                        onChanged: (bool value) {},
                                      )
                                    )
                                  ],
                                )
                              ]
                            ),
                          );
                        },
                        
                      ),
                    ),

Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 30.0, bottom: 5.0),
                          child: Text(
                            "Done",
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ] 
                    ),

                    Expanded(
                      child: ListView.builder(
                        padding: EdgeInsets.zero,
                        itemCount: _doneTasks.length,
                        itemBuilder: (BuildContext, int index) {
                          return Padding(
                            padding: EdgeInsets.only(left: 30.0, top: 0.0, bottom: 0.0, right: 0.0),
                            child: Row(
                              children: <Widget> [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      _doneTasks[index].task,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16.0,
                                        decoration: TextDecoration.lineThrough
                                      ),
                                    ),
                                    Text(
                                      _doneTasks[index].time,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12.0,
                                        decoration: TextDecoration.lineThrough
                                      ),
                                    ),
                                  ],
                                ),

                                Spacer(),

                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.only(right: 15.0),
                                      child: Checkbox(
                                        value: true,
                                        onChanged: (bool value) {},
                                        checkColor: Colors.white,
                                        activeColor: Colors.blue,
                                      )
                                    )
                                  ],
                                )
                              ]
                            ),
                          );
                        },
                      ),
                    )

                  ],
                ),
              )
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context, 
            MaterialPageRoute(builder: (context) => NewTasksScreen()),
          );
        },
        child: Icon(Icons.add, color: Colors.white),
        backgroundColor: Colors.blue,
      ),
    );

  }
}