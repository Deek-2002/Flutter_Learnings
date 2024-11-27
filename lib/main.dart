import 'package:demo/Display.dart';
import 'package:demo/IntroPage.dart';
import 'package:demo/Splash_Screen.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
        useMaterial3: true,
      ),
      // home: IntroPage(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {

     var nameController=TextEditingController();


     //*************Shared Preferences*********
     //    var nameValue="No value Saved";
  //    @override
  // void initState() {
  //   super.initState();
  //       getValue();
  // }

      click(){
        print("clicked");
      }
      //var time=DateTime.now();

  // *****LOGIN PAGE CODE**********
     //var emailText=TextEditingController();
      //var passText=TextEditingController();
  @override
  Widget build(BuildContext context) {

        //var arrData=['ram','raj','ravi','ramesh','suresh','raghu','rajesh'];


    return Scaffold(
      appBar: AppBar(

          backgroundColor:Colors.amber,

        title: Center(child: Text("DASHBOARD")),
      ),

      //************************LOGIN PAGE***************************
      // body: Center(child: Container(
      //     width: 300,
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         Padding(
      //           padding: const EdgeInsets.all(8.0),
      //           child: Text("Enter email:",style: TextStyle(fontSize: 20),),
      //         ),
      //         TextField(
      //           // keyboardType: TextInputType.phone,
      //           controller: emailText,
      //           decoration: InputDecoration(
      //               hintText: "enter email",
      //               focusedBorder: OutlineInputBorder(
      //                   borderRadius: BorderRadius.circular(30),
      //                   borderSide: BorderSide(color: Colors.deepOrange)
      //               ),
      //               enabledBorder: OutlineInputBorder(
      //                   borderRadius: BorderRadius.circular(10),
      //                   borderSide: BorderSide(color: Colors.blueAccent)
      //               ),
      //               border: OutlineInputBorder(
      //                   borderRadius: BorderRadius.circular(10),
      //                   borderSide: BorderSide(color: Colors.deepOrange)
      //               ),
      //
      //               //suffixText:"Username ",
      //               // suffixIcon: IconButton(icon:Icon(Icons.remove_red_eye,color: Colors.orange,),
      //               // onPressed: (){
      //               //
      //               // },),
      //               prefixIcon: Icon(Icons.email,color: Colors.orange,)
      //           ),
      //         ),
      //         Container(height: 15,),
      //         Padding(
      //           padding: const EdgeInsets.all(8.0),
      //           child: Text("Enter password:",style: TextStyle(fontSize: 20),),
      //         ),
      //         TextField(
      //           controller: passText,
      //           obscureText: true,
      //           decoration: InputDecoration(
      //               hintText: "enter password",
      //               border: OutlineInputBorder(
      //                   borderRadius: BorderRadius.circular(30),
      //                   borderSide: BorderSide(color: Colors.blueAccent)
      //               ),
      //               enabledBorder: OutlineInputBorder(
      //                   borderRadius: BorderRadius.circular(10),
      //                   borderSide: BorderSide(color: Colors.cyan)
      //               ),
      //               focusedBorder: OutlineInputBorder(
      //                   borderRadius: BorderRadius.circular(30),
      //                   borderSide: BorderSide(color: Colors.amberAccent)
      //               ),
      //               prefixIcon: Icon(Icons.password,color: Colors.orange,),
      //               suffixIcon: IconButton(onPressed:(){
      //
      //               }, icon: Icon(Icons.remove_red_eye_outlined))
      //
      //           ),
      //         ),
      //         Padding(
      //           padding: const EdgeInsets.all(9),
      //           child: Container(
      //             width: 150,
      //             child: ElevatedButton(onPressed: (){
      //               String uname=emailText.text.toString();
      //               String pass=passText.text.toString();
      //               print("email: $uname,password:$pass");
      //             }, child: Text("login",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
      //           ),
      //         )
      //       ],
      //     ))),

      //******************CURR DATE AND TIME*************
      // body: Center(
      //   child: Container(
      //     width: 300,
      //     height: 200,
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         Text('current date and time $time',style: TextStyle(fontSize: 25),),
      //       ElevatedButton(onPressed: (){
      //         setState(() {
      //             time=DateTime.now();
      //         });
      //       }, child: Text('current date'))
      //       ],
      //     ),
      //   ),
      // ),
      //*******************GRIDVIEW*****************
      // body:
      //    GridView.count(crossAxisCount: 2,
      //         crossAxisSpacing: 11,
      //         mainAxisSpacing: 11,
      //         children: [
      //           Container(color: Colors.red,),
      //           Container(color:Colors.blue),
      //           Container(color:Colors.black87),
      //           Container(color: Colors.orange,)
      //
      //         ],
      //         )

//**************************passing data to display.dart page***********************
      // body: Center(
      //   child: Container(
      //     width: 300,
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       //crossAxisAlignment: CrossAxisAlignment.center,
      //       children: [
      //         Text('Fill here',style: TextStyle(fontSize: 25),),
      //         SizedBox(height: 20,),
      //
      //         Padding(
      //           padding: const EdgeInsets.all(8.0),
      //           child: TextField(
      //
      //             controller: nameController,
      //             decoration: InputDecoration(
      //               enabledBorder: OutlineInputBorder(
      //                 borderRadius: BorderRadius.circular(20),
      //                 borderSide: BorderSide(color: Colors.amberAccent)
      //               )
      //             ),
      //           ),
      //         ),
      //         SizedBox(height: 15,),
      //         ElevatedButton(onPressed: (){
      //           Navigator.push(context, MaterialPageRoute(builder: (context)=> Display(nameController.text.toString())));
      //         }, child: Text('Click to view your profile') )
      //       ],
      //     ),
      //   ),
      // ),

      //******************Mapping Widgets****************
      // body: Container(
      //   child: ListView(
      //     children:
      //       arrData.map((value) {
      //         return Container(
      //           child: Text(value),
      //         );
      //       }).toList()
      //     ,
      //   ),
      // ),

     //***********Shared preferences**************
      // body: Container(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Center(
      //         child: Container(
      //           width: 400,
      //           child: TextField(
      //
      //             controller: nameController,
      //
      //             decoration: InputDecoration(
      //               label: Text('Name'),
      //               border: OutlineInputBorder(
      //                 borderRadius: BorderRadius.circular(20),
      //                   borderSide: BorderSide(color: Colors.blueAccent)
      //               )
      //             )
      //           ),
      //         ),
      //       ),
      //       SizedBox(
      //         height: 11,
      //       ),
      //       ElevatedButton(onPressed: () async {
      //         var name=nameController.text.toString();
      //
      //         var prefs= await SharedPreferences.getInstance();
      //
      //         prefs.setString("name1", name);
      //
      //       }, child: Text('Save')),
      //       SizedBox(height: 11,),
      //       Text(nameValue)
      //     ],
      //   ),
      //
      // ),

    );
  }


  //********Shared preferences************
//   void getValue() async{
//
//        var prefs=await SharedPreferences.getInstance();
//        var getName=prefs.getString('name1');
//        nameValue=getName !=null ? getName : "no value saved";
//        setState(() {
//
//        });
//   }
 }


