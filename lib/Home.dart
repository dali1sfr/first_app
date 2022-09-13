import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'InfoPage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Welcom to Flutter Course',
        ),
        backgroundColor: Color.fromARGB(255, 243, 175, 29),
      ),
      drawer: Drawer(
        child: ListView(children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromARGB(147, 139, 138, 138),
            ),
            child: Text(style: TextStyle(fontSize: 30), 'Drawer WOW!'),
          ),
          Card(
              color: Color.fromARGB(255, 175, 200, 219),
              child: ListTile(
                title: const Text('Seconed Page!'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
                },
              )),
        ], padding: EdgeInsets.zero),
      ),
      body: Center(
          child: Container( decoration: BoxDecoration(color: Color.fromARGB(255, 231, 231, 231),borderRadius: BorderRadius.circular(20)
,boxShadow: [
      BoxShadow(
        color: Color.fromARGB(187, 74, 73, 73),
        blurRadius: 4,
        
      ),
    ]),
        width: 300,
        height: 200,
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Text('Course Name: Flutter', style: TextStyle(fontSize: 20)),
          Text('Students No: 18', style: TextStyle(fontSize: 15)),
          Text('Course Time: 4 - 9 PM', style: TextStyle(fontSize: 15))
        ]),
      )),
    );
  }
}
