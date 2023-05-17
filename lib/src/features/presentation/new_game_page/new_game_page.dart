import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:focusapp/src/features/presentation/commons_widgets/back_button.dart';
import 'package:focusapp/src/features/presentation/commons_widgets/header_text.dart';

class NewGamePage extends StatelessWidget {
  const NewGamePage({Key key}) : super(key: key);

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
            image: AssetImage('images/goal.jpg'),
          )),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
            child: Container(color: Colors.black.withOpacity(0.3)),
          ),
        ),
        Column(
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 50.0, right: 45.0),
                  child: backButton(context, Colors.white),
                ),
                Container(
                  margin: EdgeInsets.only(top: 50.0),
                  child: Padding(
                    padding: EdgeInsets.all(18.0),
                    child: Center(
                      child: Column(
                        children: [
                          headerText("Nuevo partido", Colors.white,
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
                padding: EdgeInsets.only(left: 30.0, right: 30.0),
                child: Column(
                  children: [
                    Text("Completá los datos del partido",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 15.0)),
                    _opposingTeamName(context),
                    _tournamentName(context),
                    _courtSize(context),
                    _location(context),
                    _nextPage(context)
                  ],
                ),
              ),
            )
          ],
        )
      ]),
    );
  }
}

Widget _opposingTeamName(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(top: 40.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
      color: Color.fromRGBO(255, 255, 255, 0.7),
      borderRadius: BorderRadius.circular(40.0),
    ),
    child: TextField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
          hintText: 'Equipo rival',
          border: OutlineInputBorder(borderSide: BorderSide.none)),
    ),
  );
}

Widget _tournamentName(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(top: 20.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
      color: Color.fromRGBO(255, 255, 255, 0.7),
      borderRadius: BorderRadius.circular(40.0),
    ),
    child: TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          hintText: 'Torneo',
          border: OutlineInputBorder(borderSide: BorderSide.none)),
    ),
  );
}

Widget _courtSize(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(top: 20.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
      color: Color.fromRGBO(255, 255, 255, 0.7),
      borderRadius: BorderRadius.circular(40.0),
    ),
    child: TextField(
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
          hintText: 'Tamaño cancha (ej. 7, 9, 11)',
          border: OutlineInputBorder(borderSide: BorderSide.none)),
    ),
  );
}

Widget _location(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(top: 20.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
      color: Color.fromRGBO(255, 255, 255, 0.7),
      borderRadius: BorderRadius.circular(40.0),
    ),
    child: TextField(
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
          hintText: 'Lugar / predio',
          border: OutlineInputBorder(borderSide: BorderSide.none)),
    ),
  );
}

Widget _nextPage(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(top: 280.0),
    width: 350.0,
    height: 45.0,
    // ignore: deprecated_member_use
    child: RaisedButton(
      onPressed: () {
        Navigator.pushNamed(context, '/newGameMetricsListPage');
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      color: Theme.of(context).accentColor,
      child: Text('Siguiente',
          style: TextStyle(color: Colors.white, fontSize: 17.0)),
    ),
  );
}
