import 'package:flutter/material.dart';
import 'package:navigation_routes/stack_screen.dart';

import 'home_screen.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  static const id = "list_screen";
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
        appBar: AppBar(backgroundColor: Colors.teal),
        body: Column(
          children: [
            ListView(
              children: const [
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Abdul Wahab"),
                  subtitle: Text("Hello, Abdul..."),
                  trailing: Text("3:00 PM"),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
