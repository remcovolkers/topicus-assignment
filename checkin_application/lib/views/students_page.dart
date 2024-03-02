import 'package:checkin_application/models/student.dart';
import 'package:flutter/material.dart';

class StudentsPage extends StatefulWidget {
  const StudentsPage({super.key});

  @override
  StudentsPageState createState() => StudentsPageState();
}

class StudentsPageState extends State<StudentsPage> {
  void showStatusDialog(Student student) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Hoe voel je je, ${student.name}'),
          content: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: const Icon(Icons.thumb_up, color: Colors.green),
                onPressed: () {
                  setState(() {
                    student.status = 'positive';
                  });
                  Navigator.of(context).pop();
                },
              ),
              IconButton(
                icon: const Icon(Icons.thumb_down, color: Colors.red),
                onPressed: () {
                  setState(() {
                    student.status = 'negative';
                  });
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Leerlingen'),
      ),
      body: ListView.builder(
        itemCount: students.length,
        itemBuilder: (BuildContext context, int index) {
          Student student = students[index];
          return ListTile(
            title: Text(student.name),
            onTap: () => showStatusDialog(student),
          );
        },
      ),
    );
  }
}
