import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Home.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: ListView(children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(147, 139, 138, 138),
              ),
              child: Text(style: TextStyle(fontSize: 30), 'Drawer Again!'),
            ),
            Card(
                color: Color.fromARGB(255, 175, 200, 219),
                child: ListTile(
                  title: const Text('Go Back!'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomePage()),
                    );
                  },
                )),
          ], padding: EdgeInsets.zero),
        ),
        appBar: AppBar(
          title: Text('My Information'),
          backgroundColor: Color.fromARGB(255, 249, 185, 46),
        ),
        body: Center(
          child: Container(
            width: 300,
            height: 200,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 242, 240, 240),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(153, 74, 73, 73),
                    blurRadius: 4,
                  ),
                ]),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      width: 90,
                      height: 90,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage("assets/dali.png")))),
                  Text('My Name: Dalia Aldossary',
                      style: TextStyle(fontSize: 20)),
                  Text('I work as a Computer Engineer ',
                      style: TextStyle(fontSize: 15)),
                  Text('I\'m a CS Grauate', style: TextStyle(fontSize: 15))
                ]),
          ),
        ));
  }
}

//    Center( child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [Text('Dalia Dossary'), Text('Hello World!')]) )

