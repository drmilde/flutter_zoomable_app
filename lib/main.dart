import 'package:flutter/material.dart';
import 'package:flutter_advanced_networkimage/zoomable.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        color: Colors.amber,
        child: ZoomableWidget(
          panLimit: 1.0,
          maxScale: 5.0,
          minScale: 0.5,
          singleFingerPan: true,
          multiFingersPan: false,
          enableRotate: false,
          child: Image(
            image: AssetImage('assets/images/the_moon.jpg'),
          ),
          zoomSteps: 3,
        ),
      ),
    );
  }
}
