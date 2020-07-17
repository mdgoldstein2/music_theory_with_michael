import 'package:flutter/material.dart';

// method that starts and runs the application
void main() {
  runApp(BaseWidget());
}

// the base widget that the application is "rooted" in
// all other widgets are "stacked" onto this one
class BaseWidget extends StatelessWidget {
  // function that returns the widget
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home Widget',
      theme: ThemeData(visualDensity: VisualDensity.adaptivePlatformDensity),
      home: HomePage(),
    );
  }
}

//the homepage for the music theory application
class HomePage extends StatelessWidget {
  //function that returns the widget
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'Navigation menu',
          onPressed: null,
        ),
        title: Text('Music Theory With Michael'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          ),
        ],
      ),
      // body is the majority of the screen.
      body: Center(
        child: Text('Hello, world!'),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Add', // used by assistive technologies
        child: Icon(Icons.add),
        onPressed: null,
      ),
    );
  }
}