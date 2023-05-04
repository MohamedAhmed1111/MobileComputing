import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.grey,
          appBar: AppBar(
            backgroundColor: Colors.brown,
            title: Text('language learning app'),
          ),
          body: Column(
            children: [
              Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 30),
                  child: Text(
                    "your way to learn japanese",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  )),
              GestureDetector(
                onTap: () {},
                child: Container(
                    color: Colors.yellow,
                    padding: EdgeInsets.only(left: 20),
                    height: 50,
                    width: double.infinity,
                    margin: EdgeInsets.only(top: 20),
                    child: Text(
                      "Numbers",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    )),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed("familymembers");
                },
                child: Container(
                    color: Colors.green,
                    padding: EdgeInsets.only(left: 20),
                    height: 50,
                    width: double.infinity,
                    child: Text("Family members",
                        style: TextStyle(color: Colors.black, fontSize: 20))),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                    color: Colors.deepPurpleAccent,
                    padding: EdgeInsets.only(left: 20),
                    height: 50,
                    width: double.infinity,
                    child: Text("Colors",
                        style: TextStyle(color: Colors.black, fontSize: 20))),
              )
            ],
          )),
    );
  }
}
