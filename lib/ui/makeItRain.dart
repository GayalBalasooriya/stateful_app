import 'package:flutter/material.dart';

class MakeItRain extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new MakeItRainState();
  }
}

class MakeItRainState extends State<MakeItRain> {

  int moneyCounter = 0;

  void rainMoney() {
     setState(() {
       moneyCounter = moneyCounter + 100;
     });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Make it rain"),
        backgroundColor: Colors.lightGreen,
      ),

      body: new Container(
        child: new Column(
          children: <Widget>[
            new Center(
              child: new Text("Get rich", style: new TextStyle(color: Colors.grey, fontWeight: FontWeight.w400, fontSize: 29.9),)
            ),
            
            new Expanded(
                child: new Center(
                  child: new Text("\$$moneyCounter",style: new TextStyle(
                      color: Colors.greenAccent,
                      fontSize: 46.9,
                      fontWeight: FontWeight.w400,
                  )
                  )
                ),
            ),
            new Expanded(
                child: new Center(
                  child: new FlatButton(
                      onPressed: rainMoney,
                      child: new Text("Let it rain", style: new TextStyle(fontSize: 19.9),)
                  ),
                )
            )
          ],
        ),
      ),
    );
  }

}