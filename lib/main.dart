import 'package:flutter/material.dart';

void main(){
  runApp(basket());
}
class  basket extends StatefulWidget {
  @override
  State<basket> createState() => _basketState();
}

class _basketState extends State<basket> {
  int teamApoints=0;

  int teamBpoints=0;

  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar:AppBar(
          title: Text('Points Cards'),
          backgroundColor: Colors.orange,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text('Team A',
                      style: TextStyle(
                          fontSize: 40
                      ),
                    ),
                    Text('$teamApoints',
                      style: TextStyle(
                        fontSize: 150,
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          maximumSize: Size(130, 40)
                      ),
                      onPressed:(){
                        teamApoints++;
                        setState(() {

                        });
                      },
                      child: Text('Add 1 point',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black
                        ),),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          maximumSize: Size(130, 40)
                      ),
                      onPressed: (){
                        setState(() {
                          teamApoints+=2;
                        });
                      },
                      child: Text('Add 2 point',style: TextStyle(
                          fontSize: 15,
                          color: Colors.black
                      ),),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          maximumSize: Size(130, 40)
                      ),
                      onPressed: (){
                        setState(() {
                          teamApoints+=3;
                        });
                      },
                      child: Text('Add 3 point',style: TextStyle(
                          fontSize: 15,
                          color: Colors.black
                      ),),
                    ),

                  ],
                ),
                Container(
                  height: 500,
                  child: VerticalDivider(
                    color: Colors.grey,
                    endIndent: 80,
                  ),
                ),
                Column(
                  children: [
                    Text('Team B',
                      style: TextStyle(
                          fontSize: 40
                      ),
                    ),
                    Text('$teamBpoints',
                      style: TextStyle(
                        fontSize: 150,
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          maximumSize: Size(130, 40)
                      ),
                      onPressed: (){},
                      child: Text('Add 1 point',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black
                        ),),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          maximumSize: Size(130, 40)
                      ),
                      onPressed: (){},
                      child: Text('Add 2 point',style: TextStyle(
                          fontSize: 15,
                          color: Colors.black
                      ),),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          maximumSize: Size(130, 40)
                      ),
                      onPressed: (){},
                      child: Text('Add 3 point',style: TextStyle(
                          fontSize: 15,
                          color: Colors.black
                      ),
                      ),
                    ),
                  ],
                ),
                  ],
                ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.orange,
                    maximumSize: Size(130, 40)
                ),
                onPressed: (){
                  setState(() {
                    teamApoints=0;
                    teamBpoints=0;
                  });
                },
                child: Text('Reset',style: TextStyle(
                    fontSize: 20,
                    color: Colors.black
                ),
                ),
              ),
            ),
          ],
        ),
        ),
    );
  }
}
