import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext contexr) {
    return MaterialApp(
      title: 'flutter demo',
      home: Scaffold(
        appBar: new AppBar(
          title: new Text('demo')
        ),
        body:  GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 2.0,
            crossAxisSpacing: 2.0,
            childAspectRatio: 0.7,
          ),
          children: <Widget>[
            new Image.network('https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2563780504.webp',fit:BoxFit.cover),
            new Image.network('https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2563780504.webp',fit:BoxFit.cover),
            new Image.network('https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2563780504.webp',fit:BoxFit.cover),
            new Image.network('https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2563780504.webp',fit:BoxFit.cover),
            new Image.network('https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2563780504.webp',fit:BoxFit.cover),
            new Image.network('https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2563780504.webp',fit:BoxFit.cover),
          ],
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