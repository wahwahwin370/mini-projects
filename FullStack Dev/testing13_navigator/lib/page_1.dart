import 'package:flutter/material.dart';
import 'package:testing13_navigator/page_2.dart';

class Page1 extends StatelessWidget {
  //const page1({super.key});

  var tController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 1'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: tController,
              decoration: InputDecoration(
                labelText:'Enter Something',
              ),
            ),
            SizedBox(height: 20.0,),
            OutlinedButton(
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder:(BuildContext context){
                  return Page2(tController.text);
                }
                ));
            },
              child: Text('Send'),
            )
          ],

        ),
      )
    );
  }
}
