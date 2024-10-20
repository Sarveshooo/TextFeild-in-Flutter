

import"package:flutter/material.dart";
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Text Feild Demo",
      home: TextFeildDemo(),
    );
  }
}
class TextFeildDemo extends StatefulWidget {
  const TextFeildDemo({super.key});

  @override
  State<TextFeildDemo> createState() => _TextFeildDemoState();
}

class _TextFeildDemoState extends State<TextFeildDemo> {
  TextEditingController namecontroller=TextEditingController();
  String? myname;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text("TextFeild App",
        style: TextStyle(
          fontSize: 40,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.w900,
          color: Colors.white,
        ),
        ),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 30,),
        Padding(padding: const EdgeInsets.all(20),
        child: TextField(
          controller:namecontroller,
          style: const TextStyle(
            fontSize: 30,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w400,
            color: Colors.blue,
          ),
          obscureText: true,
          decoration: const InputDecoration(
            hintText: "Enter Your Name",
            hintStyle: TextStyle(
              color: Colors.green,
              fontSize: 30,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w400,
            ),
            suffixIcon: Icon(Icons.visibility),
            border: OutlineInputBorder(),
          ),
          onChanged: (value) {
            print("");
          },
          onEditingComplete: () {
            print("");
          },
          onSubmitted: (value) {

          },
        ),
        ),
        GestureDetector(
          onTap: () {
            print("Display on Console which is typed By the User");
            myname=namecontroller.text;
            print("The Name Entered By user $myname");
            namecontroller.clear;
            setState(() {});
          },
          child: Container(
            padding:const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(30),
              border: Border.all(color: Colors.red,width: 10),
            ),
            child: const Text("Press Me ",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: Colors.white,
              fontStyle: FontStyle.italic,
            ),
            ),
          ),
        ),
        const SizedBox(height: 30,),
        Text("The Name You Entered : $myname",
        style: const TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 30,
          fontStyle: FontStyle.italic,
          color: Colors.lime,
        ),
        ),
      ],
      ),
    );
  }
}
