class Student {
  String name;
  String? status;

  Student({required this.name, this.status});
}

List<Student> students = [
  Student(name: 'Jan'),
  Student(name: 'Piet'),
  Student(name: 'Klaas'),
  Student(name: 'Henk'),
];
