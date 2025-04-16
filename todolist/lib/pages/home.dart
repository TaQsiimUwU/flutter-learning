import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  //list of shits
  List todoList = [
    ["make bbody cum", true],
    ["make bbody black", false],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 1, 101, 103),
      appBar: AppBar(
        title: Text('TO DO'),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 1, 101, 103),
      ),
      body: ListView.builder(
        itemCount: todoList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              todoList[index][0],
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 20,
                decoration:
                    todoList[index][1]
                        ? TextDecoration.lineThrough
                        : TextDecoration.none,
              ),
            ),
            trailing: Checkbox(
              value: todoList[index][1],
              onChanged: (value) {
                setState(() {
                  todoList[index][1] = value;
                });
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
