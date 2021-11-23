import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  String value="";

  Home(String name){
    value = name;
  }



  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Home Page")
      ),
      body: Center(child: Column(
        children: [
          Text(widget.value),
          ElevatedButton(onPressed: (){
            fileContent();
          },
          child: Text("show")
          )
        ],
      )
      ),
    );
  }

  fileContent() async {
    String result = await downlodFile();
    print("$result");
  }

  Future<String> downlodFile(){
    Future<String> result  =  Future.delayed(Duration(seconds: 6),(){
      return "This is madaripur";
    });
    return result;
  }
}
