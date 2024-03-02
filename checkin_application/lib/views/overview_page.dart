import 'package:checkin_application/models/student.dart';
import 'package:flutter/material.dart';

class OverviewPage extends StatelessWidget {
  const OverviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Overzicht'),
      ),
      body: ListView.builder(
        itemCount: students.length,
        itemBuilder: (BuildContext context, int index) {
          Student student = students[index];
          Icon? statusIcon;
          if (student.status == 'positive') {
            statusIcon = const Icon(Icons.thumb_up, color: Colors.green);
          } else if (student.status == 'negative') {
            statusIcon = const Icon(Icons.thumb_down, color: Colors.red);
          }
          return ListTile(
            title: Text(student.name),
            trailing: statusIcon,
          );
        },
      ),
    );
  }
}
