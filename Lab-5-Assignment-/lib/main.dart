import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
        ),
        body: Container(
          color: Colors.grey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(
                    "https://scontent.fcai20-4.fna.fbcdn.net/v/t39.30808-6/317566426_2104237639759347_6205173595996682173_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=7uhmiFanw_0AX-OdcTR&_nc_ht=scontent.fcai20-4.fna&oh=00_AfAT8Z6X3qerads_EKPfzeDqw84peU0u_PygzfqbkiIwgQ&oe=6439196E"),
              ),
              Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(
                    top: 5,
                  ),
                  child: Text(
                    "Mohamed Ahmed",
                    style: TextStyle(color: Colors.white, fontSize: 35),
                  )),
              Container(
                  margin: EdgeInsets.only(top: 10),
                  alignment: Alignment.center,
                  child: Text(".Net Developer",
                      style: TextStyle(color: Colors.white, fontSize: 25))),
              Divider(
                height: 20,
                thickness: 1,
                indent: 120,
                endIndent: 140,
                color: Colors.white,
              ),
              Container(
                width: 300,
                height: 70,
                color: Colors.white,
                padding: EdgeInsets.only(top: 10, bottom: 10),
                margin: EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.phone,
                      color: Colors.blue,
                    ),
                    Text(
                      "01211524277",
                      style: TextStyle(fontSize: 17),
                    )
                  ],
                ),
              ),
              Container(
                width: 300,
                height: 70,
                color: Colors.white,
                padding: EdgeInsets.only(top: 10),
                margin: EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.mail,
                      color: Colors.blue,
                    ),
                    Text(
                      "ma4541@fayoum.edu.eg",
                      style: TextStyle(fontSize: 17),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
