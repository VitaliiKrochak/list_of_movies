import 'package:flutter/material.dart';

import 'movie_list.dart';

class StartPage extends StatelessWidget {
  final String appBarText = 'Select page';
  final String dataPopularPage = 'top rated';
  final String dataUpcomingPage = 'upcoming';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appBarText),
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
                onPressed: () => openPopularPage(dataPopularPage, context),
                child: Text(
                  dataPopularPage,
                  style: TextStyle(color: Colors.black),
                ),
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
                onPressed: () => openUpcomingPage(dataUpcomingPage, context),
                child: Text(
                  dataUpcomingPage,
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  openUpcomingPage(String data, BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) {
        return MovieList(data);
      }),
    );
  }

  openPopularPage(String data, BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) {
        return MovieList(data);
      }),
    );
  }
}
