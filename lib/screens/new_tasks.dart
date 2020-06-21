import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:to_do_list/models/task_model.dart';


class NewTasksScreen extends StatefulWidget {
  @override
  _NewTasksState createState() => _NewTasksState();
}

class _NewTasksState extends State<NewTasksScreen> {
  @override
  Widget build(BuildContext context) {
    var values = task_cat.map((task_cat) => (task_cat.name)).toList();

    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Theme.of(context).accentColor,
        title: Text(
          "New Task",
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.black,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.clear, color: Colors.black),
            iconSize: 30.0,
            onPressed: (){
              Navigator.pop(context);
            },
          )
        ],
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'What are you planning?'
                ),
                keyboardType: TextInputType.multiline,
                minLines: 1,
                maxLines: 5,
              ),
            ),
            SizedBox(height: 5.0),

            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(children: <Widget>[
                IconButton(icon: Icon(Icons.calendar_today), iconSize: 20.0),

                SizedBox(width: 5.0),

                Text("May 29, 14:00")
              ]
              ),
            ),

            SizedBox(height: 10.0),

            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(children: <Widget>[
                IconButton(icon: Icon(Icons.note), iconSize: 20.0),

                SizedBox(width: 5.0),

                Text("Add Note")
              ]
              ),
            ),

             Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(children: <Widget>[
                IconButton(icon: Icon(Icons.category), iconSize: 20.0),

                SizedBox(width: 5.0),

                Text(
                  task_cat[0].name,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                  ),
                ),
              ]
              ),
            ),
            Expanded(
              child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: MaterialButton(
                  onPressed: () => {},
                  child: Text('Create'),
                  color: Colors.blue,
                  textColor: Colors.white,
                  minWidth: double.infinity,
                  height: 60.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}