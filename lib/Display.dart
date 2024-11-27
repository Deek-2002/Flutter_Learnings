import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Display extends StatelessWidget{

  var nameFromHome;

  Display(this.nameFromHome);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('my profile'),
      ),
      body: Center(
        child: Container(
          width: 500,
          color: Colors.blue,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Welcome,$nameFromHome",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w800,color: Colors.white),),
              ElevatedButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text("back") )

            ],
          ),
        ),
      ),
    );
  }

}