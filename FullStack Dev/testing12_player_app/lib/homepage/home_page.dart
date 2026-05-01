import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


    int mark1=0;
    int mark2=0;

    String winner='Draw';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Player Score', style: TextStyle(
          fontSize: 25.0,
          color: Colors.red,
          fontWeight: FontWeight.bold
        ),)),
      ),

      body: Column(
        children: [
          Text('$winner'),
          SizedBox(height: 20.0),
          Row(
            children: [
              Expanded(child: Text('player1', textAlign: TextAlign.center, style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0
              ),), ),
              Expanded(child: Text('player2', style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0
              ), textAlign: TextAlign.center,))
            ],
          ),
          SizedBox(height: 20.0),
          Row(
            children: [
              Expanded(child: Text(mark1.toString(), textAlign: TextAlign.center,), ),
              Expanded(child: Text(mark2.toString(), textAlign: TextAlign.center,))
            ],
          ),

          SizedBox(height: 30.0),
          Row(
            children: [
              Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 10.0, right: 10.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red, // background
                      ),
                      onPressed: (){
                        setState(() {
                          mark1++;
                        });
                        checkWinner();
                      },
                      child: Text('+1', style: TextStyle(
                          color: Colors.white
                      ),),
                    ),
                  )
              ),
              Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 10.0, right: 10.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red, // background
                      ),
                      onPressed: (){
                        setState(() {
                          mark2++;
                        });
                        checkWinner();
                      },
                      child: Text('+1', style: TextStyle(
                        color: Colors.white
                      ),),
                    ),
                  )
              ),
            ],
          ),
          SizedBox(height: 10.0),
          Row(
            children: [
              Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 10.0, right: 10.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red, // background
                      ),
                      onPressed: (){
                        setState(() {
                          mark1+=2;
                        });
                        checkWinner();
                      },
                      child: Text('+2', style: TextStyle(
                          color: Colors.white
                      ),),
                    ),
                  )
              ),
              Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 10.0, right: 10.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red, // background
                      ),
                      onPressed: (){
                        setState(() {
                          mark2+=2;
                        });
                        checkWinner();
                      },
                      child: Text('+2', style: TextStyle(
                          color: Colors.white
                      ),),
                    ),
                  )
              ),
            ],
          )


        ],
      ),
    );
  }

  void checkWinner(){
    if(mark1>mark2){
      setState(() {
        winner='Winner is player1';
      });
    }
    else if(mark1<mark2){
      setState(() {
        winner='Winner is player2';
      });
    }
    else{
      setState(() {
        winner='Draw';
      });
    }
  }
}


