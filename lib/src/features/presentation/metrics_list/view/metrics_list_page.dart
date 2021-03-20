import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:focusapp/src/features/data/metrics_list_data.dart';
import 'package:focusapp/src/features/presentation/commons_widgets/back_button.dart';
import 'package:focusapp/src/features/presentation/commons_widgets/header_text.dart';

class NewGameMetricsListPage extends StatefulWidget {
  NewGameMetricsListPage({Key key}) : super(key: key);

  @override
  _NewGameMetricsListPageState createState() => _NewGameMetricsListPageState();
}

class _NewGameMetricsListPageState extends State<NewGameMetricsListPage> {
  bool isActive = false;
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.white));
    return Scaffold(
        body: Stack(children: [
      Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('images/ball-field.jpg'),
        )),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
          child: Container(color: Colors.black.withOpacity(0.3)),
        ),
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(top: 50.0, right: 15.0),
                child: backButton(context, Colors.white),
              ),
              Container(
                margin: EdgeInsets.only(top: 50.0),
                child: Padding(
                  padding: EdgeInsets.all(18.0),
                  child: Center(
                    child: Column(
                      children: [
                        headerText("Métricas de juego", Colors.white,
                            FontWeight.bold, 30.0)
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          Center(
            child: Container(
              padding: EdgeInsets.only(left: 45.0, right: 30.0),
              child: Column(
                children: [
                  Text(
                      "Seleccioná las acciones que quieras registrar durante el partido",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 15.0)),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView(
                children: metrics.map((metric) {
              return Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10.0),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(218, 215, 205, 0.8),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              metric.name,
                              style: TextStyle(
                                  color: Color.fromRGBO(58, 90, 64, 1),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16.0),
                            ),
                          ],
                        ),
                        Switch(
                          value: metric.isSelected,
                          onChanged: (bool value) {
                            setState(() {
                              metric.isSelected = value;
                            });
                          },
                          activeColor: Color.fromRGBO(58, 90, 64, 1),
                          inactiveThumbColor: Colors.white,
                        )
                      ],
                    )
                  ],
                ),
              );
            }).toList()),
          ),
          _startGame(context)
        ],
      )
    ]));
  }
}

Widget _startGame(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(bottom: 100),
    width: 350.0,
    height: 45.0,
    child: RaisedButton(
      onPressed: () {
        Navigator.pushNamed(context, '/teamAttack');
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      color: Theme.of(context).accentColor,
      child: Text('Comenzar partido',
          style: TextStyle(color: Colors.white, fontSize: 17.0)),
    ),
  );
}
