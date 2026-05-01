import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello App'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      child: Text('1'),
                      color: Colors.cyan,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      child: Text('2'),
                      color: Colors.deepPurple,
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Container(
                            child: Text('2'),
                            color: Colors.orange,
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Container(
                            child: Text('3'),
                            color: Colors.greenAccent,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    )
  );
}

