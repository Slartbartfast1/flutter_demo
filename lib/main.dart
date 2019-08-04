import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title:'11111',
      home: Scaffold(
        appBar: new AppBar(
          title: new Text('Row')
        ),
        body: 
        new Row(children: <Widget>[
         Expanded(
           child: new RaisedButton(
            onPressed:(){},
            color: Colors.redAccent,
            child: new Text('click me!')
          ),) ,
         Expanded(
           child: new RaisedButton(
            onPressed:(){},
            color: Colors.redAccent[400],
            child: new Text('click me!')
          ),), 
         Expanded(
           child: new RaisedButton(
            onPressed:(){},
            color: Colors.redAccent[700],
            child: new Text('click me!')
          ),) 
        ],),
      )
    );
  }
}