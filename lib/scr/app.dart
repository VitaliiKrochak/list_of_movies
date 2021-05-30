import 'package:flutter/material.dart';
import 'package:list_of_movies/scr/ui/start_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        body: StartPage(),
      ),
    );
  }
}
