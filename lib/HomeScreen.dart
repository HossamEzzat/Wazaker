import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _counter = 0;

  void incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void zeroCounter() {
    setState(() {
      _counter = 0;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$_counter",
              style: Theme.of(context).textTheme.headline3,
            ),
            SizedBox(
              height: 15,
            ),
            FlatButton(
                onPressed: () {
                  incrementCounter();
                },
                padding: EdgeInsets.all(40),
                shape: CircleBorder(),
                color: Colors.black,
                child: Text(
                  "سبح",
                  style: TextStyle(
                    fontSize: 25,
                    color: Color.fromRGBO(59, 121, 55, 1),
                  ),
                )),
            SizedBox(height: 15),
            FlatButton(
                onPressed: () {
                  zeroCounter();
                },
                padding: EdgeInsets.all(15),
                shape: CircleBorder(),
                color: Colors.black,
                child: Text(
                  "0",
                  style: TextStyle(
                    color: Color.fromRGBO(59, 121, 55, 1),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
