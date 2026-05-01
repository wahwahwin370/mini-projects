import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // List to hold names
  List<String> _names = [];
  // Controller to manage text input
  var _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('People List'),
      ),
      body: Column(
        children: [
          // Row containing TextField and ElevatedButton
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      hintText: 'Enter Name',
                    ),
                  ),
                ),
                SizedBox(width: 8.0),
                ElevatedButton(
                  onPressed: () {
                    final name = _controller.text.trim();
                    if (name.isNotEmpty) {
                      setState(() {
                        _names.add(name);
                        _controller.clear(); // Clear the input field
                      });
                    }
                  },
                  child: Text('Add'),
                ),
              ],
            ),
          ),
          // Display the list of names
          Expanded(   //if we would like to write Listview in column we always need to wrap it with expanded
            child: ListView.builder(
              itemCount: _names.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(_names[index]),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
