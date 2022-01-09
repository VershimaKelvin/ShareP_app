import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ViewNotes extends StatefulWidget {
  const ViewNotes({Key? key}) : super(key: key);

  @override
  _ViewNotesState createState() => _ViewNotesState();
}

class _ViewNotesState extends State<ViewNotes> {
  late String text;

  @override
  void initState() {
    getPreference();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Center(
        child: text == null? const Text('No text availabe'): Text(text),
    );
  }

  getPreference()async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
   text= prefs.getString('noteData')!;
   setState(() {

   });

  }
}
