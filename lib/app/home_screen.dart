import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_database/firebase_database.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>{

  final databaseReference = FirebaseDatabase.instance.reference();

  double deviceWidth, deviceHeight;

  @override
  void initState() {

  }

  @override
  Widget build(BuildContext context) {
    deviceWidth = MediaQuery.of(context).size.width;
    deviceHeight = MediaQuery.of(context).size.height;
    // TODO: implement build
    return WillPopScope(
      child: Scaffold(
        appBar: new AppBar(
          title: Text('Voting App',
            style: TextStyle(
              color: Colors.white,
              fontFamily: "OpenSans-Bold",
            ),
          ),
        ),
        body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light,
         child: Column(
           children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Center(
                child:  RaisedButton(
                  child: Text("Add recodes"),
                  onPressed: (){
                    createRecord();
                  },
                ),
              ),
            ),
             Padding(
               padding: EdgeInsets.only(top: 20),
               child: Center(
                 child:  RaisedButton(
                   child: Text("View recodes"),
                   onPressed: (){
                     Navigator.of(context).pushNamed("/voting");
                   },
                 ),
               ),
             )
           ],

        ),

        ),
      ),
    );
  }

  void createRecord(){
    databaseReference.child("1").set({
      'Name': 'Monica',
      'Vote': '12'
    });
    databaseReference.child("1").set({
      'Name': 'Joey',
      'Vote': '10'
    });
    databaseReference.child("1").set({
      'Name': 'Rachel',
      'Vote': '15'
    });
    databaseReference.child("1").set({
      'Name': 'Richrd',
      'Vote': '2'
    });
    databaseReference.child("1").set({
      'Name': 'Phobe',
      'Vote': '5'
    });

  }

}
