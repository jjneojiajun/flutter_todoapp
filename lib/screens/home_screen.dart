import 'package:flutter/material.dart';
import 'package:to_do_list/screens/new_tasks.dart';

import '../widgets/tasks_grid.dart';

class HomeScreen extends StatefulWidget {
  @override 
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          iconSize: 30.0,
          color: Colors.black,
          onPressed: () {},
        ),
        backgroundColor: Theme.of(context).accentColor,
        elevation: 0.0,
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  "Tasks Lists",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold
                  ),
                ),
              )
            ],
          ),
          TasksGrid(),
          
        ],
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