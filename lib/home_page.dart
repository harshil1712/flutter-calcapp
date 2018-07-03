import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  @override
  State createState() => new HomePageState();
}

class HomePageState extends State<HomePage>{

  var num1="0", num2="0", ansStr='0', ans=0, oper='', flag=0 ;

  void clear() {
    setState(() {
          num1="0"; num2="0"; ansStr='0'; ans=0; oper=''; flag=0 ;
        });
  }

  void add(){
    setState(() {
      oper= '+';
      if(flag==0){
        num2 = num1;
      }
      else {
        num2 = ansStr;
      }
        num1 = '0';

        });
  }
  void sub(){
    setState(() {
      oper= '-';
      if(flag==0){
        num2 = num1;
      }
      else {
        num2 = ansStr;
      }
        num1 = '0';

        });
  }
  void one(){
    setState(() {
          num1+="1";
          ans =int.parse(num1);
          ansStr = "$ans";
        });
  }
  void two(){
    setState(() {
          num1+="2";
          ans =int.parse(num1);
          ansStr = "$ans";
        });
  }
  void three(){
    setState(() {
          num1+="3";
          ans =int.parse(num1);
          ansStr = "$ans";
        });
  }
  void four(){
    setState(() {
          num1+="4";
          ans =int.parse(num1);
          ansStr = "$ans";
        });
  }
  void five(){
    setState(() {
          num1+="5";
          ans =int.parse(num1);
          ansStr = "$ans";
        });
  }  
  void six(){
    setState(() {
          num1+="6";
          ans =int.parse(num1);
          ansStr = "$ans";
        });
  }
  void seven(){
    setState(() {
          num1+="7";
          ans =int.parse(num1);
          ansStr = "$ans";
        });
  }
  void eight(){
    setState(() {
          num1+="8";
          ans =int.parse(num1);
          ansStr = "$ans";
        });
  }
  void nine(){
    setState(() {
          num1+="9";
          ans =int.parse(num1);
          ansStr = "$ans";
        });
  }
  void zero(){
    setState(() {
          num1+="0";
          ans =int.parse(num1);
          ansStr = "$ans";
        });
  }

  void disp() {
    setState(() {
      if(oper=='+'){
        ans = int.parse(num1)+int.parse(num2);
        flag++;
      }
      else if(oper == '-'){
        ans = int.parse(num2)-int.parse(num1);
        flag++;        
      }
          ansStr = "$ans";
        });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Calculator"),
      ),
      body: new Container(
        child: new Column(
          children: <Widget>[
            new Container(
              constraints: new BoxConstraints.expand(
                height: Theme.of(context).textTheme.display1.fontSize * 1.1 + 75.0,
              ),
              alignment: Alignment.bottomRight,
              child: new Text(
                "$ansStr",
                style: new TextStyle(
                  fontSize: 50.0,
                ),
                textAlign: TextAlign.right,
              ),
            ),
            new Row(
              children: <Widget>[
                new Expanded(
                  child: new MaterialButton(
                    height: 75.0,
                    child:new Text("9"),
                    color: Colors.grey.shade400,
                    onPressed: nine,
                  )
                ),
                new Expanded(
                  child: new MaterialButton(
                    height: 75.0,
                    child:new Text("8"),
                    color: Colors.grey.shade400,
                    onPressed: eight,
                  ),
                ),
                new Expanded(
                  child: new MaterialButton(
                    height: 75.0,
                    child:new Text("7"),
                    color: Colors.grey.shade400,
                    onPressed: seven,
                  ),
                ),
                new Expanded(
                  child: new MaterialButton(
                    height: 75.0,
                    child:new Text("+"),
                    color: Colors.grey.shade400,
                    onPressed: add,
                  ),
                )
              ],
            ),
            new Padding(padding: new EdgeInsets.all(2.0),),
            new Row(
              children: <Widget>[
                new Expanded(
                  child: new MaterialButton(
                    height: 75.0,
                    child:new Text("6"),
                    color: Colors.grey.shade400,
                    onPressed: six,
                  )
                ),
                new Expanded(
                  child: new MaterialButton(
                    height: 75.0,
                    child:new Text("5"),
                    color: Colors.grey.shade400,
                    onPressed: five,
                  ),
                ),
                new Expanded(
                  child: new MaterialButton(
                    height: 75.0,
                    child:new Text("4"),
                    color: Colors.grey.shade400,
                    onPressed: four,
                  ),
                ),
                new Expanded(
                  child: new MaterialButton(
                    height: 75.0,
                    child:new Text("-"),
                    color: Colors.grey.shade400,
                    onPressed: sub,
                  ),
                )
              ],
            ),
            new Padding(padding: new EdgeInsets.all(2.0),),
            new Row(
              children: <Widget>[
                new Expanded(
                  child: new MaterialButton(
                    height: 75.0,
                    child:new Text("3"),
                    color: Colors.grey.shade400,
                    onPressed: three,
                  )
                ),
                new Expanded(
                  child: new MaterialButton(
                    height: 75.0,
                    child:new Text("2"),
                    color: Colors.grey.shade400,
                    onPressed: two,
                  ),
                ),
                new Expanded(
                  child: new MaterialButton(
                    height: 75.0,
                    child:new Text("1"),
                    color: Colors.grey.shade400,
                    onPressed: one,
                  ),
                ),
                new Expanded(
                  child: new MaterialButton(
                    height: 75.0,
                    child:new Text("*"),
                    color: Colors.grey.shade400,
                    onPressed: (){},
                  ),
                )
              ],
            ),
            new Padding(padding: new EdgeInsets.all(2.0),),
            new Row(
              children: <Widget>[
                new Expanded(
                  child: new MaterialButton(
                    height: 75.0,
                    child:new Text("."),
                    color: Colors.grey.shade400,
                    onPressed: (){},
                  )
                ),
                new Expanded(
                  child: new MaterialButton(
                    height: 75.0,
                    child:new Text("0"),
                    color: Colors.grey.shade400,
                    onPressed: zero,
                  ),
                ),
                new Expanded(
                  child: new MaterialButton(
                    height: 75.0,
                    child:new Text("="),
                    color: Colors.grey.shade400,
                    onPressed:disp,
                  ),
                ),
                new Expanded(
                  child: new MaterialButton(
                    height: 75.0,
                    child:new Text("/"),
                    color: Colors.grey.shade400,
                    onPressed: (){},
                  ),
                )
              ],
            ),
            new Padding(padding: new EdgeInsets.all(2.0),),
            new Row (
              children: <Widget>[
                new Expanded(
                  child: new MaterialButton(
                    height: 75.0,
                    child:new Text("Clear"),
                    color: Colors.grey.shade400,
                    onPressed: clear,
                  ),
                )
              ]
            )
          ],
        ),
      ),
    );
  }
}