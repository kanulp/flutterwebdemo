import 'dart:html' as prefix0;

import 'package:flutter_web/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Web Demo',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: MyHomePage(title: 'Flutter Web'),
    );
  }
}
class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(10.0),
        itemCount: 15,
        itemBuilder: (BuildContext context, int index) {
        return Card(
          elevation: 5.0,
          child:ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (c)=>NewPage() ));
            },
            leading: Icon(Icons.account_circle),
            title: Text('Karan Gajjar'),
            subtitle: Text('Flutter Developer'),
          )
        );
      },)
    );
  }
}

class NewPage extends StatelessWidget {
  const NewPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter is Awesome!'),),
      body: Center(child: Text('So is Karan Gajjar :)',style: TextStyle(fontSize: 25.0),),),
    );
  }
}

