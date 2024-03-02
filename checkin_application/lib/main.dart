import 'package:checkin_application/views/overview_page.dart';
import 'package:checkin_application/views/students_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Leerling status App'),
      routes: {
        '/students': (context) => const StudentsPage(),
        '/overview': (context) => const OverviewPage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.deepPurple,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: const Text('Leerlingen'),
              onTap: () {
                Navigator.of(context).pushNamed('/students');
              },
            ),
            ListTile(
              title: const Text('Overzicht'),
              onTap: () {
                Navigator.of(context).pushNamed('/overview');
              },
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text('Selecteer een pagina uit het menu'),
      ),
    );
  }
}
