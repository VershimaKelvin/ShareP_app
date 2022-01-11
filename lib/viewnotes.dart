import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ViewNotes extends StatefulWidget {
  const ViewNotes({Key? key}) : super(key: key);

  @override
  _ViewNotesState createState() => _ViewNotesState();
}

class _ViewNotesState extends State<ViewNotes> {
   String? text;
   String? text2;


  @override
  void initState() {
    getPreference();
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
              child: text == null? const Text('No text available'): Text(text!),
          ),
          Center(
            child: text2 == null? const Text('No text available'): Text(text2!),
          ),
        ],
      ),
    );
  }



  getPreference()async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
   text= prefs.getString('noteData')!;
    text2= prefs.getString('noteData2')!;

   setState(() {

   });

  }


}
