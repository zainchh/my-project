import 'package:animated_text/animated_text.dart';
import 'package:class_sesstional2/Home.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  title: "Quiz App",
  home: _splashscreen(),
));

class _splashscreen extends StatelessWidget{
  Widget build(BuildContext context){
    return new SplashScreen(seconds: 3,
      navigateAfterSeconds: new home(),
      title: new Text("Faisal Zulfiqar\nSp18-BSCS-084",
        style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 23.0,color: Colors.black,),
      ),
      loadingText: new Text("Please Wait...", style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0,color: Colors.black,),),
      backgroundColor: Colors.teal,
      styleTextUnderTheLoader: new TextStyle(),
      loaderColor: Colors.green,
    );
  }
}

class Beginner extends StatefulWidget {
  @override
  _BeginnerState createState() => _BeginnerState();
}

class _BeginnerState extends State<Beginner> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Expert extends StatefulWidget {
  @override
  _ExpertState createState() => _ExpertState();
}

class _ExpertState extends State<Expert> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


