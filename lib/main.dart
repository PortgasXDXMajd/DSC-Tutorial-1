import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ID Card",
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color myColor = Colors.amber;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        backgroundColor: Colors.grey[850],
        centerTitle: true,
        title: Text(
          "My ID Card",
          style: TextStyle(
              letterSpacing: 4,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: myColor),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Name:",
              style: TextStyle(color: Colors.grey, fontSize: 18),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Majd Al Kayyal",
              style: TextStyle(color: myColor, fontSize: 25),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Major:",
              style: TextStyle(color: Colors.grey, fontSize: 18),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Computer Science",
              style: TextStyle(color: myColor, fontSize: 25),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Email:",
              style: TextStyle(color: Colors.grey, fontSize: 18),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Majd.Kayyal.3398@gmail.com",
              style: TextStyle(color: myColor, fontSize: 25),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Phone:",
              style: TextStyle(color: Colors.grey, fontSize: 18),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "+968-96575078",
              style: TextStyle(color: myColor, fontSize: 25),
            ),
            SizedBox(
              height: 60,
            ),
            Center(
              child: Text(
                "Welcome to this Course",
                style: TextStyle(
                    color: myColor,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (myColor == Colors.amber) {
            setState(() {
              myColor = Colors.blueAccent;
            });
          } else {
            setState(() {
              myColor = Colors.amber;
            });
          }
        },
        backgroundColor: myColor,
        child: Icon(
          Icons.flip_camera_android,
          size: 30,
        ),
      ),
    );
  }
}
