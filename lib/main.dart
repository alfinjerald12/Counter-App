import 'package:flutter/material.dart';

void main() {
  runApp(MyCounterApp());
}

class MyCounterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CounterScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class CounterScreen extends StatefulWidget {
  @override
  _CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int count = 0;

  void _incrementCounter() {
    setState(() {
      count++;
    });
  }

  void _resetCounter() {
    setState(() {
      count = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50], // light background
      appBar: AppBar(
        title: Text("Click Counter"),
        backgroundColor: Colors.blue, // app bar color
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              count == 0 ? "Press the button" : "$count times",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: _incrementCounter,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green, // button color
                foregroundColor: Colors.white, // text color
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Text("Click Me", style: TextStyle(fontSize: 18)),
            ),
            SizedBox(height: 15),
            ElevatedButton(
              onPressed: _resetCounter,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red, // button color
                foregroundColor: Colors.white, // text color
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Text("Reset", style: TextStyle(fontSize: 18)),
            ),
          ],
        ),
      ),
    );
  }
}
