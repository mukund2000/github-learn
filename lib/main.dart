import 'package:flutter/material.dart';

void main() => runApp(Quiz());

class Quiz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      title: "quiz app",
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    );
  }
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int index = 0;
  List question=["what is your favorite food?","what is you name?","who are you?"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quiz App"),
        leading: Icon(Icons.dashboard),
        actions: <Widget>[
        IconButton(icon: Icon(Icons.settings), onPressed: (){})
        ],
      ),
      body: Column(
        children: <Widget>[
          Text(question[index]),
          FlatButton(
            child: Text("answer 1"),
            onPressed: (){
              print("correct answer 1");
            },
          ),
          FlatButton(
            child: Text("answer 2"),
            onPressed: (){
              print("correct answer 2");
            },
          ),
          FlatButton(
            color: Colors.black12,
            child: Text("answer 3"),
            onPressed: (){
              print("correct answer 3");
            },
          )
        ],
      ),
    );
  }
}
