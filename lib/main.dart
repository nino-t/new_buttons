import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                print('OK');
              },
              style: ElevatedButton.styleFrom(
                  primary: Colors.orange, onPrimary: Colors.white),
              child: Text('A Raised Button'),
            ),
            TextButton(
              onPressed: () {
                print('OK');
              },
              style: TextButton.styleFrom(primary: Colors.orange),
              child: Text('A Flat Button'),
            ),
            OutlinedButton(
              onPressed: () {
                print('OK');
              },
              style: OutlinedButton.styleFrom(
                  primary: Colors.orange,
                  side: BorderSide(color: Colors.orange)),
              child: Text('A Outline Button'),
            )
          ],
        ),
      ),
    );
  }
}
