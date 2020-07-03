import 'package:flutter/material.dart';
import 'package:focus_app/ballLosses.dart';
import 'package:focus_app/ballRecoveries.dart';
import 'ballRecoveriesAndLosses.dart';
import 'package:focus_app/completeTeam.dart';
import 'package:focus_app/login.dart';
import 'package:focus_app/metricsList.dart';
import 'package:focus_app/teamAttack.dart';
import 'package:focus_app/teamDefense.dart';
import 'package:focus_app/menu.dart';


void main() => runApp(MyApp());



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Focus app',
      initialRoute: '/mainPage',
      routes: {
        '/login': (context) => LoginPage(),
        '/mainPage': (context) => MainPage(),
        '/metricsList': (context) => MetricsListPage(),
        '/teamAttack': (context) => TeamAttackPage(),
        '/ballRecoveries': (context) => BallRecoveriesPage(),
        '/ballLosses': (context) => BallLossesPage(),
        '/ballRecoveriesAndLosses': (context) => BallRecoveriesAndLossesPage(),
        '/teamDefense': (context) => TeamDefensePage(),
        '/completeTeam': (context) => CompleteTeamPage()
      },
      theme: ThemeData(
        primaryColor: Colors.green[700],
      ),
      home: MainPage(),
    );
  }
}















