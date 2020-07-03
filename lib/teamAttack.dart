import 'package:flutter/material.dart';

class CountAttackList {
  String name;
  int count;
  CountAttackList(this.name, this.count);
}

class TeamAttackPage extends StatefulWidget {
  @override
  _TeamAttackPageState createState() => _TeamAttackPageState();
}

class _TeamAttackPageState extends State<TeamAttackPage> {
  List<CountAttackList> _attack;
  int _incomeAreaCounter = 0;
  int _shotsOutsideAreaCounter = 0;

  @override
  void initState() {
    _attack = [
      CountAttackList('Ingreso al area derecha', 0),
      CountAttackList('Ingreso al area centro', 0),
      CountAttackList('Ingreso al area izquierda', 0),
      CountAttackList('Remate afuera area derecha', 0),
      CountAttackList('Remate afuera area centro', 0),
      CountAttackList('Remate afuera area izquierda', 0),
    ];
    super.initState();
  }

  void _sumIncomeArea() {
    setState(() {
      _incomeAreaCounter++;
    });
  }

  void _sumShotsOutsideArea() {
    setState(() {
      _shotsOutsideAreaCounter++;
    });
  }

  void _restart() {
    setState(() {
      _shotsOutsideAreaCounter = 0;
      _incomeAreaCounter = 0;
      _attack[0].count = 0;
      _attack[1].count = 0;
      _attack[2].count = 0;
      _attack[3].count = 0;
      _attack[4].count = 0;
      _attack[5].count = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context);
    return Scaffold(
      body: Center(
          child: Column(
        children: <Widget>[
          Container(
            child: Center(
                child: Text(
              'Controlando ataque',
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.bold),
            )),
            decoration: BoxDecoration(
              color: Color.fromARGB(500, 211, 201, 211),
            ),
            height: 50,
            margin: EdgeInsets.only(top: 20),
          ),
          Container(
            height: screenSize.size.shortestSide,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage("images/half_soccer_field.jpg"),
              fit: BoxFit.contain,
            )),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      width: 37,
                      height: 30,
                      margin: EdgeInsets.only(top: 70, left: 70),
                      child: RaisedButton(
                        child: Text(
                          _attack[0].count.toString(),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        color: Colors.red,
                        onPressed: () {
                          _attack[0].count++;
                          _sumIncomeArea();
                        },
                        padding: EdgeInsets.all(1),
                      ),
                    ),
                    Container(
                      width: 37,
                      height: 30,
                      margin: EdgeInsets.only(top: 90),
                      child: RaisedButton(
                        child: Text(
                          _attack[1].count.toString(),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        color: Colors.red,
                        onPressed: () {
                          _attack[1].count++;
                          _sumIncomeArea();
                        },
                        padding: EdgeInsets.all(1),
                      ),
                    ),
                    Container(
                      width: 37,
                      height: 30,
                      margin: EdgeInsets.only(top: 70, right: 70),
                      child: RaisedButton(
                        child: Text(
                          _attack[2].count.toString(),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        color: Colors.red,
                        onPressed: () {
                          _attack[2].count++;
                          _sumIncomeArea();
                        },
                        padding: EdgeInsets.all(1),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      width: 37,
                      height: 30,
                      margin: EdgeInsets.only(top: 20, left: 50),
                      child: RaisedButton(
                        child: Text(
                          _attack[3].count.toString(),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        color: Colors.orange,
                        onPressed: () {
                          _attack[3].count++;
                          _sumShotsOutsideArea();
                        },
                        padding: EdgeInsets.all(1),
                      ),
                    ),
                    Container(
                      width: 37,
                      height: 30,
                      margin: EdgeInsets.only(top: 50),
                      child: RaisedButton(
                        child: Text(
                          _attack[4].count.toString(),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        color: Colors.orange,
                        onPressed: () {
                          _attack[4].count++;
                          _sumShotsOutsideArea();
                        },
                        padding: EdgeInsets.all(1),
                      ),
                    ),
                    Container(
                      width: 37,
                      height: 30,
                      margin: EdgeInsets.only(top: 20, right: 50),
                      child: RaisedButton(
                        child: Text(
                          _attack[5].count.toString(),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        color: Colors.orange,
                        onPressed: () {
                          _attack[5].count++;
                          _sumShotsOutsideArea();
                        },
                        padding: EdgeInsets.all(1),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            width: screenSize.size.shortestSide,
            margin: EdgeInsets.only(left: 10,right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  
                  child: Text(
                    'Ingresos al área',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: 30,
                  width: 60,
                  color: Colors.red,
                  child: Text(
                    '$_incomeAreaCounter',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: screenSize.size.shortestSide,
            margin: EdgeInsets.only(left: 10,right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  child: Text(
                    'Remates desde afuera del área',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: 30,
                  width: 60,
                  color: Colors.orange,
                  child: Text(
                    '$_shotsOutsideAreaCounter',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          RaisedButton(
            child: Text('Reiniciar contadores'),
            onPressed: _restart,
          ),
        ],
      )),
      backgroundColor: Colors.black,
    );
  }
}

/*child: */
