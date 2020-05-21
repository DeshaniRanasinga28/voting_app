import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_database/firebase_database.dart';

class VotingScreen extends StatefulWidget {
  @override
  _VotingScreenState createState() => _VotingScreenState();
}

class _VotingScreenState extends State<VotingScreen>{

  final databaseReference = FirebaseDatabase.instance.reference();

  double deviceWidth, deviceHeight;

  @override
  void initState() {
    databaseReference.once().then((DataSnapshot snapshot) {
      print('Data : ${snapshot.value}');
    });
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
          child: Card(
            elevation: 10.0,
            child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  verticalDirection: VerticalDirection.down,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 0.0, right: 0.0, top: 10.0),
                      child: Text(""),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5.0, bottom: 15.0),
                      child:Container(
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.only(top: 2.0, right: 10.0, bottom: 20.0),
                                alignment: Alignment.topRight,
                                child:new IconButton(
                                  icon: new Icon(Icons.add, color: Colors.black,),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.only(top: 2.0, right: 10.0, bottom: 20.0),
                                alignment: Alignment.topRight,
                                child:Text(""),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.only(top: 2.0, right: 10.0, bottom: 20.0),
                                alignment: Alignment.topRight,
                                child:new IconButton(
                                  icon: new Icon(Icons.minimize, color: Colors.black,),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        ),
      ),
    );
  }

  void getData(){
    databaseReference.once().then((DataSnapshot snapshot) {
      print('Get Data : ${snapshot.value}');
    });
  }


}
