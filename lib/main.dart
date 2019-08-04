import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes:{
        "new_page":(context)=>NewRoute(),
      } ,
      // home: new MyHomePage(title: 'Flutter Demo Home Page'),
      home: Scaffold(
        // backgroundColor: Color.fromARGB(255, 255, 125, 125),
        body:Center(child: Container(
          child: new Image.network(
            'https://cdn.jsdelivr.net/gh/flutterchina/website@1.0/images/homepage/header-illustration.png',
            fit: BoxFit.fill,
            color: Colors.greenAccent,
            colorBlendMode: BlendMode.modulate,
            repeat: ImageRepeat.repeat,
            ),
          width: 380.0,
          height: 300.0,
          color: Colors.lightBlue
          ),
        )
      )
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
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
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              child: Text('11111'),
              textColor: Colors.blue,
              onPressed: (){
                Navigator.pushNamed(context,"new_page");
              }
            ),
            new Text(
              'You have pushed the button this many times:',
              textAlign: TextAlign.left,
              overflow: TextOverflow.fade,
              maxLines: 2,
              style:TextStyle(
                fontSize: 25.0,
                color:Color.fromARGB(255, 255, 125, 125),
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.double
                )
            ),
           
            new Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class NewRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New route",)
      ),
      body: Center(
        child: Text("this is new route"),
      ),
    );
  }
}