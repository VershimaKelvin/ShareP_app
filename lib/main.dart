import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sharedprefrences/viewnotes.dart';

void main() {
  runApp(const MaterialApp(home:  MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final myController =TextEditingController();
  final secondController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  controller: myController,
                  decoration: const InputDecoration(
                    hintText: 'Enter notes',
                  ),
                  textAlign: TextAlign.start,
                  showCursor: true,
                  autofocus: true,
                  cursorColor: Colors.blue,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  controller: secondController,
                  decoration: const InputDecoration(
                    hintText: 'Enter second notes',
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
                child:  FlatButton(
                    onPressed: (){
                      saveNotes(myController.text,secondController.text);

                    },
                    child: const Text(
                        'Save',
                    style: TextStyle(
                      color: Colors.white
                    ),),
                ),
              ),

              Container(
                margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 100),
                color: Colors.blue,
                child:GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const ViewNotes()));
                  },
                  child: const FlatButton(

                    onPressed: null,
                    child: Text(
                      'View Notes',
                      style: TextStyle(
                          color: Colors.white
                      ),),
                  ),
                ),
              ),
            ],
          ),
        ),
      );

  }

  saveNotes(String notes,String notes2)async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
   await prefs.setString('noteData', notes);
    await prefs.setString('noteData2', notes2);
  }
}
