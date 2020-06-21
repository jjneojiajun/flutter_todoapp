import 'package:flutter/material.dart';
import '../models/task_model.dart';
import '../screens/list_screen.dart';

class TasksGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Flexible(
            child:  GridView.builder(
            primary: false,
            padding: const EdgeInsets.all(20),

            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemCount: task_cat.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ListScreen()),
                  );
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                  padding: const EdgeInsets.all(8),
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: 
                          IconButton(
                            icon: task_cat[index].iconType,
                            iconSize: 40.0,
                            color: task_cat[index].colors,
                            onPressed: () {},
                          ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          task_cat[index].name,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w800
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          task_cat[index].amountOfTask.toString() + " Tasks",
                          style: TextStyle(
                            color: Color(0xFF7F7F7F),
                            fontSize: 14.0,
                            fontWeight: FontWeight.w300
                          )
                        )
                      )
                    ],
                  )
                ),
              );
            },
          ),
    );
  }
}