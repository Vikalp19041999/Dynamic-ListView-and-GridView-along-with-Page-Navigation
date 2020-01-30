import 'package:flutter/material.dart';
import 'package:gridandlistview/grid.dart';
import 'package:gridandlistview/list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        title: Text("ListView and GridView example"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text('List View'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Screen1()),
            );
          },
            ),
            RaisedButton(
              child: Text('Grid View'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Screen2()),
            );
          },
            ),
          ],
        ),
      ),
      );
  }
}
