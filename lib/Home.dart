import 'package:class_sesstional2/Beginner.dart';
import 'package:class_sesstional2/Contact_Us.dart';
import 'package:class_sesstional2/Expert.dart';
import 'package:class_sesstional2/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/cupertino.dart';
class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.teal,
      ),
      home: Scaffold(backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Quiz App",),
          actions: <Widget>[
          ],
        ),
    body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
children: [
           Container(
               margin: EdgeInsets.all(70),
              child: RaisedButton(
                 child: Text("Beginner",
                style: TextStyle(
                  color: Colors.white,
                  backgroundColor:new Color(0xFF00827F),
                  fontSize: 40.0,
                   ),),
                  elevation: 5.0,
                  onPressed:(){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>beginner()));
    }),
    ),
                Container(
                   margin: EdgeInsets.all(70),
                   child: RaisedButton(
                       child: Text("Expert",
                        style: TextStyle(
                        color: Colors.white,
                        
                        backgroundColor: new Color(0xFF00827F),
                        fontSize: 40.0,
    ),),
                        elevation: 5.0,
                        onPressed:(){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>expert()));
    }),
    ),
    ],

    )


      ),
        drawer: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Colors.white38, //This will change the drawer background to blue.
            //other styles
          ),
          child: Drawer(
              child: ListView(
                children: [
                  UserAccountsDrawerHeader(

                    accountName: Text("Faisal Zulfiqar "),
                    accountEmail: Text("faisalsunny166@gmail.com"),

                    decoration: BoxDecoration(

                        color: Colors.teal,
                    ),
                    currentAccountPicture: CircleAvatar(
                      radius: 40.0,
                      backgroundImage: AssetImage('images/std.jpg'),
                      backgroundColor: Theme.of(context).platform == TargetPlatform.iOS
                          ? Colors.black
                          : Colors.white,
                    ),
                  ),
                  ListTile(
                    title: Text('Home',style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                    ),),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => home()),
                      );
                      Beginner();
                    },
                  ),
                  SizedBox(
                    width: 2.0,
                    height: 2.0,
                    child: const DecoratedBox(
                      decoration: const BoxDecoration(
                          color: Colors.white
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text('Contact Us',style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                    ),),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => contact_us()),
                      );
                      expert();
                    },
                  ),
                  SizedBox(
                    width: 2.0,
                    height: 2.0,
                    child: const DecoratedBox(
                      decoration: const BoxDecoration(
                          color: Colors.white
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text('Exit',style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                    ),),
                    onTap: (){
                      SystemNavigator.pop();
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => expert()),
                      );
                      expert();
                    },
                  ),
                  ListTile(),
                ],
              )
          ),
        ),

    ),
    );

  }

}