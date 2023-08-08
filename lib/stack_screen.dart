import 'package:flutter/material.dart';
import 'package:navigation_routes/list_screen.dart';

import 'home_screen.dart';

class StackScreen extends StatelessWidget {
  const StackScreen({super.key});

  static const id = "stack_screen";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: [
              const UserAccountsDrawerHeader(
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://media.licdn.com/dms/image/D4D35AQGcPMvi__vmEw/profile-framedphoto-shrink_400_400/0/1684667183872?e=1692039600&v=beta&t=TQtBVagNrfb46_OqjJNVXFRj4GR0F96zh5e0jL-A02c'),
                  ),
                  accountName: Text("Abdul Wahab"),
                  accountEmail: Text("iabdulwahab.edu@gmail.com")),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text("Home"),
                onTap: () {
                  Navigator.pushNamed(context, HomeScreen.id);
                },
              ),
              ListTile(
                leading: const Icon(Icons.stacked_bar_chart),
                title: const Text("Stack"),
                onTap: () {
                  Navigator.pushNamed(context, StackScreen.id);
                },
              ),
              ListTile(
                leading: const Icon(Icons.list),
                title: const Text("List"),
                onTap: () {
                  Navigator.pushNamed(context, ListScreen.id);
                },
              ),
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.teal,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Stack(
                children: [
                  Container(
                    width: 400,
                    height: 400,
                    color: Colors.yellow,
                  ),
                  Container(
                    width: 350,
                    height: 350,
                    color: Colors.yellow.shade100,
                  ),
                  Container(
                    width: 300,
                    height: 300,
                    color: Colors.yellow.shade200,
                  ),
                  Container(
                    width: 250,
                    height: 250,
                    color: Colors.yellow.shade300,
                  ),
                  Container(
                    width: 200,
                    height: 200,
                    color: Colors.yellow.shade500,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
