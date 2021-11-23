
import 'package:class_no_22/home.dart';
import 'package:class_no_22/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [
     /* DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,*/
    /*  DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,*/

    ]
  );
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'This is madaripur'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {

  final ctrlName = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[


            Container(
              height: MediaQuery.of(context).size.height/5,
              width: 300,
              color: Colors.purple,
              child: FractionallySizedBox(
                heightFactor: .5,
                widthFactor: .5,
                child: Container(
                  color: Colors.yellowAccent,
                ),
              ),

            ),

            FittedBox(
              child: Row(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height/5,
                    width: MediaQuery.of(context).size.width/2,
                    color: Colors.blue,

                  ),
                  Container(
                    height: MediaQuery.of(context).size.height/5,
                    width: MediaQuery.of(context).size.width/3,
                    color: Colors.red,

                  ),
                  Container(
                    height: MediaQuery.of(context).size.height/5,
                    width: MediaQuery.of(context).size.width/3,
                    color: Colors.yellow,

                  ),
                ],
              ),
            ),


            ElevatedButton(
                onPressed: (){
                  printSomeData();
                },
                child: Text("Click Me")
            ),

            Container(
              height: 200,
              width: 300,
              color: Colors.black,
              child: Column(
                children: [
                  Text("This is a container",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25
                    ),
                  ),
                  Text("This is a container 2",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25
                    ),
                  ),
                ],
              ),

            )


          ],
        ),
      ),
    );
  }
  printSomeData()async {
    String result = await initialSomeData();
    print("m$result");
  }
  Future<String> initialSomeData(){
    Future<String> value  = Future.delayed(Duration(seconds: 2),(){
      return "This is madaripur";
    });
    return value;
  }
}


