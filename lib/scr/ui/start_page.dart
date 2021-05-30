import 'package:flutter/material.dart';

import 'movie_list.dart';

class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Select page'),
          centerTitle: true,
        ),
        body: Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                      border: Border.all(width: 3, color: Colors.black),
                      color: Colors.red[900],
                      borderRadius: BorderRadius.circular(45)),
                  child: TextButton(
                    onPressed: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MovieList('top rated'))),
                    child: Text('top rated',
                        style: TextStyle(color: Colors.black)),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                    height: 50,
                    width: 200,
                    decoration: BoxDecoration(
                        border: Border.all(width: 3, color: Colors.black),
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(45)),
                    child: TextButton(
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MovieList('upcoming'))),
                        child: Text(
                          'upcoming',
                          style: TextStyle(color: Colors.black),
                        )))
              ],
            )));
  }
}
