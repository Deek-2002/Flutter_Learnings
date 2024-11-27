import 'package:demo/main.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("intro"),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            Text("welcome",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            SizedBox(
              height: 11,
            ),
            ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> MyHomePage(), ));
            }, child: Text("next"))
          ],
        ),
      ),
      
    );
  }
  
}