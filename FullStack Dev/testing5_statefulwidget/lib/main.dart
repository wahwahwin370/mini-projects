import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
    ),
  );
}

// Convert to StatefulWidget
class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
      ),
      body: Container(
        padding: EdgeInsets.all(30.0),
        child: Column(
          children: [
            Container(
              color: Colors.amber,
              padding: EdgeInsets.only(left: 30, right: 30, top: 10, bottom: 10),
              child: Text(
                count.toString(),
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 30.0,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        count--;
                      });
                    },
                    child: Text('Reduce'),
                  ),

                  SizedBox(width: 10), // Add spacing between buttons

                  OutlinedButton(
                    onPressed: () {
                      setState(() {
                        count++;
                      });
                    },
                    child: Text('Increase'),
                  ),

                  SizedBox(width: 10), // Add spacing between buttons

                  TextButton(
                    onPressed: () {
                      setState(() {
                        count++;
                      });
                    },
                    child: Icon(Icons.add),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count++;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
