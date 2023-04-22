import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class basketUi extends StatefulWidget {
  const basketUi({Key? key}) : super(key: key);

  @override
  State<basketUi> createState() => _basketUiState();
}

class _basketUiState extends State<basketUi> {
  int _counter = 0;
  int _counter2 = 0;
  void resetCounter() {
    setState(() {
      _counter = 0;
      _counter2 = 0;
    });
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _incrementCounter2() {
    setState(() {
      _counter += 2;
    });
  }

  void _incrementCounter3() {
    setState(() {
      _counter += 3;
    });
  }

  void _incrementCountersec() {
    setState(() {
      _counter2++;
    });
  }

  void _incrementCounter2sec() {
    setState(() {
      _counter2 += 2;
    });
  }

  void _incrementCounter3sec() {
    setState(() {
      _counter2 += 3;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Text('Basketball Score Counter'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'TEAM A',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    ' $_counter',
                    style: TextStyle(fontSize: 70),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: ElevatedButton(
                      onPressed: _incrementCounter,
                      child: Text('+1 Point', style: TextStyle(fontSize: 15)),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(150.0, 50.0),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: ElevatedButton(
                      onPressed: _incrementCounter2,
                      child: Text('+2 Point', style: TextStyle(fontSize: 15)),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(150.0, 50.0),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: ElevatedButton(
                      onPressed: _incrementCounter3,
                      child: Text(
                        '+3 Point',
                        style: TextStyle(fontSize: 15),
                      ),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(150.0, 50.0),
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 17),
                  child: Container(
                    height: 400,
                    child: VerticalDivider(
                      thickness: 1,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'TEAM B',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    ' $_counter2',
                    style: TextStyle(fontSize: 70),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 10),
                    child: ElevatedButton(
                      onPressed: _incrementCountersec,
                      child: Text('+1 Point', style: TextStyle(fontSize: 15)),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(150.0, 50.0),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 10),
                    child: ElevatedButton(
                      onPressed: _incrementCounter2sec,
                      child: Text('+2 Point', style: TextStyle(fontSize: 15)),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(150.0, 50.0),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 10),
                    child: ElevatedButton(
                      onPressed: _incrementCounter3sec,
                      child: Text(
                        '+3 Point',
                        style: TextStyle(fontSize: 15),
                      ),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(150.0, 50.0),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 55,
            width: 150,
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.grey.shade400)),
              onPressed: () {
                resetCounter();
              },
              child: Text(
                'RESET',
                style: TextStyle(fontSize: 17, color: Colors.black),
              ),
            ),
          )
        ],
      ),
    );
  }
}
