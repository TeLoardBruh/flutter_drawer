import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final appTitle = "My first drawer";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: '/',
        routes: {
          '/first_page' : (context) => FirstPage(),
          '/second_page' : (context) => SecondPage(),
        },
        title: appTitle,
        home: MyHomePage(title: appTitle));
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  MyHomePage({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Text("My body content"),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            Container(
              child: DrawerHeader(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/chilling.png'),
                          fit: BoxFit.cover))),
            ),
            ListTile(
                title: Text('First Page'),
                onTap: () {
                  Navigator.pushNamed(context, '/first_page');
                }),
            ListTile(title: Text('Second Page'),
            onTap: () {
                  Navigator.pushNamed(context, '/second_page');
                }),
          ],
        ),
      ),
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: Center(
        child: Text("First Page")
      ),
    );
  }
}
class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Center(
        child: Text("Second Page")
      ),
    );
}}

