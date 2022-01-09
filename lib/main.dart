import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text('ShareP-app'),
        ),
        body: SafeArea(

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Enter notes',
                  ),
                  textAlign: TextAlign.start,
                  showCursor: true,
                  autofocus: true,
                  cursorColor: Colors.blue,
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 100),
                color: Colors.blue,
                child: const FlatButton(
                    onPressed: null,
                    child: Text(
                        'Save',
                    style: TextStyle(
                      color: Colors.white
                    ),),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 100),
                color: Colors.blue,
                child: const FlatButton(
                  onPressed: null,
                  child: Text(
                    'View Notes',
                    style: TextStyle(
                        color: Colors.white
                    ),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
