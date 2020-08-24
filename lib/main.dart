import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
// import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aman app',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.red,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Myhomepage() ,
    );
  }
}

class Myhomepage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(appBar: AppBar(title: Text("Hello_World")),
                    body: TextInputWiget() , );
  }
}

// class TestWidget extends StatelessWidget{
//   @override
//   Widget build(BuildContext context){
//     return Text("Hello World!!");
//   }
// }

class TextInputWiget extends StatefulWidget {
  @override
  _TextInputWigetState createState() => _TextInputWigetState();
}

class _TextInputWigetState extends State<TextInputWiget> {
  final controller = TextEditingController();

  String text= "";

  @override
  void dispose(){
    super.dispose();
    controller.dispose();
  }

  void changeText(text){

    if(text == "Hello World!"){
      controller.clear();
      text = "";
    }

    setState(() {
      this.text = text;
      
    });
    

  }
  @override
  Widget build(BuildContext context) {
    return Column( children : <Widget> 
      [TextField(
      controller: this.controller,
      decoration: InputDecoration(prefixIcon: Icon(Icons.message), labelText: "Type a message"),
      onChanged: (text) => this.changeText(text),),
      Text(this.text)]);
  }
}