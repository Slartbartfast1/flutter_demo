import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext contexr){
    return MaterialApp(
      title: 'flutter demo',
      home: Scaffold(
        appBar: new AppBar(
          title: new Text('demo')
        ),
        body: new ListView(
          children: <Widget>[
            new Image.network('https://cdn.jsdelivr.net/gh/flutterchina/website@1.0/images/homepage/header-illustration.png'),
            new Image.network('https://cdn.jsdelivr.net/gh/flutterchina/website@1.0/images/homepage/header-illustration.png'),
            new Image.network('https://cdn.jsdelivr.net/gh/flutterchina/website@1.0/images/homepage/header-illustration.png'),
            new Image.network('https://cdn.jsdelivr.net/gh/flutterchina/website@1.0/images/homepage/header-illustration.png'),
          ]
        )
      )
    );
  }
}
