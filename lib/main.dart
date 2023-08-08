import 'package:flutter/material.dart';
import 'package:navigation_routes/home_screen.dart';
import 'package:navigation_routes/list_screen.dart';
import 'package:navigation_routes/stack_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id: (context) => const HomeScreen(),
        StackScreen.id: (context) => const StackScreen(),
        ListScreen.id: (context) => const ListScreen(),
      },
    );
  }
}
