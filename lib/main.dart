import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp(
  items: new List<String>.generate(1000, (i)=>"Item $i")
));

class MyApp extends StatelessWidget {
  final List<String> items;
  MyApp({Key key,@required this.items}):super(key:key);
  @override
  Widget build(BuildContext contexr) {
    return MaterialApp(
      title: 'flutter demo',
      home: Scaffold(
        appBar: new AppBar(
          title: new Text('demo')
        ),
        body: new ListView.builder(
          itemCount: this.items.length,
          itemBuilder: (context,index){
            return new ListTile(
              title: new Text('${items[index]}')
            );
          }
        )
      )
    );
  }
}

class MyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: < Widget > [
        new Container(
          width: 200.0,
          color: Colors.lightBlue,
        ),
        new Container(
          width: 200.0,
          color: Colors.amber,
        ),
        new Container(
          width: 200.0,
          color: Colors.deepOrange,
        ),
        new Container(
          width: 200.0,
          color: Colors.purple,
        ),
      ],
    );
  }
}