import 'package:flutter/material.dart';

import 'app/home_screen.dart';
import 'app/voting_screen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Voting App",
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/voting': (BuildContext context) => new VotingScreen(),
      },
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}
