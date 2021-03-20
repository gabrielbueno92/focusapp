import 'package:flutter/material.dart';
import 'package:focusapp/src/features/presentation/commons_widgets/header_text.dart';
import 'package:focusapp/src/features/presentation/custom_icons/my_whistle_icon_icons.dart';
import 'package:focusapp/src/features/presentation/match_menu/view/metrics_charts_page.dart';
import 'package:focusapp/src/features/presentation/team_attack/view/team_attack.dart';
import 'package:full_screen_menu/full_screen_menu.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RecoveriesList {
  String name;
  int count;
  RecoveriesList(this.name, this.count);
}

class LossesList {
  String name;
  int count;
  LossesList(this.name, this.count);
}

class BallRecoveriesAndLossesPage extends StatefulWidget {
  int incomeAreaCounter;
  int shotsOutsideAreaCounter;
  int incomeAreaRight;
  int incomeAreaCenter;
  int incomeAreaLeft;
  int shotsOutsideAreaRight;
  int shotsOutsideAreaCenter;
  int shotsOutsideAreaLeft;
  BallRecoveriesAndLossesPage(
      {Key key,
      this.incomeAreaCounter,
      this.shotsOutsideAreaCounter,
      this.incomeAreaRight,
      this.incomeAreaCenter,
      this.incomeAreaLeft,
      this.shotsOutsideAreaRight,
      this.shotsOutsideAreaCenter,
      this.shotsOutsideAreaLeft})
      : super(key: key);

  @override
  _BallRecoveriesAndLossesPageState createState() =>
      _BallRecoveriesAndLossesPageState(
        incomeAreaCounter,
        shotsOutsideAreaCounter,
        incomeAreaRight,
        incomeAreaCenter,
        incomeAreaLeft,
        shotsOutsideAreaRight,
        shotsOutsideAreaCenter,
        shotsOutsideAreaLeft,
      );
}

class _BallRecoveriesAndLossesPageState
    extends State<BallRecoveriesAndLossesPage> {
  int incomeAreaCounter;
  int shotsOutsideAreaCounter;
  int incomeAreaRight;
  int incomeAreaCenter;
  int incomeAreaLeft;
  int shotsOutsideAreaRight;
  int shotsOutsideAreaCenter;
  int shotsOutsideAreaLeft;

  int _recoveriesCounter = 0;
  int _lossesCounter = 0;
  int _oneSectorRecoveries = 0;
  int _twoSectorRecoveries = 0;
  int _threeSectorRecoveries = 0;
  int _fourSectorRecoveries = 0;
  int _fiveSectorRecoveries = 0;
  int _sixSectorRecoveries = 0;
  int _sevenSectorRecoveries = 0;
  int _eightSectorRecoveries = 0;
  int _nineSectorRecoveries = 0;
  int _tenSectorRecoveries = 0;
  int _elevenSectorRecoveries = 0;
  int _twelveSectorRecoveries = 0;
  int _oneSectorLosses = 0;
  int _twoSectorLosses = 0;
  int _threeSectorLosses = 0;
  int _fourSectorLosses = 0;
  int _fiveSectorLosses = 0;
  int _sixSectorLosses = 0;
  int _sevenSectorLosses = 0;
  int _eightSectorLosses = 0;
  int _nineSectorLosses = 0;
  int _tenSectorLosses = 0;
  int _elevenSectorLosses = 0;
  int _twelveSectorLosses = 0;
  _BallRecoveriesAndLossesPageState(
    this.incomeAreaCounter,
    this.shotsOutsideAreaCounter,
    this.incomeAreaRight,
    this.incomeAreaCenter,
    this.incomeAreaLeft,
    this.shotsOutsideAreaRight,
    this.shotsOutsideAreaCenter,
    this.shotsOutsideAreaLeft,
  );

  @override
  void initState() {
    super.initState();
    _loadRecoveriesAndLossesPreferences();
  }

  _loadRecoveriesAndLossesPreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _recoveriesCounter = prefs.getInt("recoveriesCounter") ?? 0;
      _lossesCounter = prefs.getInt("lossesCounter") ?? 0;
      _oneSectorRecoveries = prefs.getInt("oneSectorRecoveries") ?? 0;
      _twoSectorRecoveries = prefs.getInt("twoSectorRecoveries") ?? 0;
      _threeSectorRecoveries = prefs.getInt("threeSectorRecoveries") ?? 0;
      _fourSectorRecoveries = prefs.getInt("fourSectorRecoveries") ?? 0;
      _fiveSectorRecoveries = prefs.getInt("fiveSectorRecoveries") ?? 0;
      _sixSectorRecoveries = prefs.getInt("sixSectorRecoveries") ?? 0;
      _sevenSectorRecoveries = prefs.getInt("sevenSectorRecoveries") ?? 0;
      _eightSectorRecoveries = prefs.getInt("eightSectorRecoveries") ?? 0;
      _nineSectorRecoveries = prefs.getInt("nineSectorRecoveries") ?? 0;
      _tenSectorRecoveries = prefs.getInt("tenSectorRecoveries") ?? 0;
      _elevenSectorRecoveries = prefs.getInt("elevenSectorRecoveries") ?? 0;
      _twelveSectorRecoveries = prefs.getInt("twelveSectorRecoveries") ?? 0;

      _oneSectorLosses = prefs.getInt("oneSectorLosses") ?? 0;
      _twoSectorLosses = prefs.getInt("twoSectorLosses") ?? 0;
      _threeSectorLosses = prefs.getInt("threeSectorLosses") ?? 0;
      _fourSectorLosses = prefs.getInt("fourSectorLosses") ?? 0;
      _fiveSectorLosses = prefs.getInt("fiveSectorLosses") ?? 0;
      _sixSectorLosses = prefs.getInt("sixSectorLosses") ?? 0;
      _sevenSectorLosses = prefs.getInt("sevenSectorLosses") ?? 0;
      _eightSectorLosses = prefs.getInt("eightSectorLosses") ?? 0;
      _nineSectorLosses = prefs.getInt("nineSectorLosses") ?? 0;
      _tenSectorLosses = prefs.getInt("tenSectorLosses") ?? 0;
      _elevenSectorLosses = prefs.getInt("elevenSectorLosses") ?? 0;
      _twelveSectorLosses = prefs.getInt("twelveSectorLosses") ?? 0;
    });
  }

  _sumRecoveries() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _recoveriesCounter++;
      prefs.setInt("recoveriesCounter", _recoveriesCounter);
    });
  }

  _sumLossess() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _lossesCounter++;
      prefs.setInt("lossesCounter", _lossesCounter);
    });
  }

  _sumOneSectorRecoveries() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _oneSectorRecoveries++;
      prefs.setInt("oneSectorRecoveries", _oneSectorRecoveries);
    });
  }

  _sumTwoSectorRecoveries() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _twoSectorRecoveries++;
      prefs.setInt("twoSectorRecoveries", _twoSectorRecoveries);
    });
  }

  _sumThreeSectorRecoveries() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _threeSectorRecoveries++;
      prefs.setInt("threeSectorRecoveries", _threeSectorRecoveries);
    });
  }

  _sumFourSectorRecoveries() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _fourSectorRecoveries++;
      prefs.setInt("fourSectorRecoveries", _fourSectorRecoveries);
    });
  }

  _sumFiveSectorRecoveries() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _fiveSectorRecoveries++;
      prefs.setInt("fiveSectorRecoveries", _fiveSectorRecoveries);
    });
  }

  _sumSixSectorRecoveries() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _sixSectorRecoveries++;
      prefs.setInt("sixSectorRecoveries", _sixSectorRecoveries);
    });
  }

  _sumSevenSectorRecoveries() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _sevenSectorRecoveries++;
      prefs.setInt("sevenSectorRecoveries", _sevenSectorRecoveries);
    });
  }

  _sumEightSectorRecoveries() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _eightSectorRecoveries++;
      prefs.setInt("eightSectorRecoveries", _eightSectorRecoveries);
    });
  }

  _sumNineSectorRecoveries() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _nineSectorRecoveries++;
      prefs.setInt("nineSectorRecoveries", _nineSectorRecoveries);
    });
  }

  _sumTenSectorRecoveries() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _tenSectorRecoveries++;
      prefs.setInt("tenSectorRecoveries", _tenSectorRecoveries);
    });
  }

  _sumElevenSectorRecoveries() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _elevenSectorRecoveries++;
      prefs.setInt("elevenSectorRecoveries", _elevenSectorRecoveries);
    });
  }

  _sumTwelveSectorRecoveries() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _twelveSectorRecoveries++;
      prefs.setInt("twelveSectorRecoveries", _twelveSectorRecoveries);
    });
  }

  _sumOneSectorLosses() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _oneSectorLosses++;
      prefs.setInt("oneSectorLosses", _oneSectorLosses);
    });
  }

  _sumTwoSectorLosses() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _twoSectorLosses++;
      prefs.setInt("twoSectorLosses", _twoSectorLosses);
    });
  }

  _sumThreeSectorLosses() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _threeSectorLosses++;
      prefs.setInt("threeSectorLosses", _threeSectorLosses);
    });
  }

  _sumFourSectorLosses() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _fourSectorLosses++;
      prefs.setInt("fourSectorLosses", _fourSectorLosses);
    });
  }

  _sumFiveSectorLosses() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _fiveSectorLosses++;
      prefs.setInt("fiveSectorLosses", _fiveSectorLosses);
    });
  }

  _sumSixSectorLosses() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _sixSectorLosses++;
      prefs.setInt("sixSectorLosses", _sixSectorLosses);
    });
  }

  _sumSevenSectorLosses() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _sevenSectorLosses++;
      prefs.setInt("sevenSectorLosses", _sevenSectorLosses);
    });
  }

  _sumEightSectorLosses() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _eightSectorLosses++;
      prefs.setInt("eightSectorLosses", _eightSectorLosses);
    });
  }

  _sumNineSectorLosses() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _nineSectorLosses++;
      prefs.setInt("nineSectorLosses", _nineSectorLosses);
    });
  }

  _sumTenSectorLosses() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _tenSectorLosses++;
      prefs.setInt("tenSectorLosses", _tenSectorLosses);
    });
  }

  _sumElevenSectorLosses() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _elevenSectorLosses++;
      prefs.setInt("elevenSectorLosses", _elevenSectorLosses);
    });
  }

  _sumTwelveSectorLosses() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _twelveSectorLosses++;
      prefs.setInt("twelveSectorLosses", _twelveSectorLosses);
    });
  }

  Future<void> _restart() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    setState(() {
      _recoveriesCounter = 0;
      _lossesCounter = 0;
      _oneSectorRecoveries = 0;
      _twoSectorRecoveries = 0;
      _threeSectorRecoveries = 0;
      _fourSectorRecoveries = 0;
      _fiveSectorRecoveries = 0;
      _sixSectorRecoveries = 0;
      _sevenSectorRecoveries = 0;
      _eightSectorRecoveries = 0;
      _nineSectorRecoveries = 0;
      _tenSectorRecoveries = 0;
      _elevenSectorRecoveries = 0;
      _twelveSectorRecoveries = 0;
      _oneSectorLosses = 0;
      _twoSectorLosses = 0;
      _threeSectorLosses = 0;
      _fourSectorLosses = 0;
      _fiveSectorLosses = 0;
      _sixSectorLosses = 0;
      _sevenSectorLosses = 0;
      _eightSectorLosses = 0;
      _nineSectorLosses = 0;
      _tenSectorLosses = 0;
      _elevenSectorLosses = 0;
      _twelveSectorLosses = 0;

      prefs.setInt("recoveriesCounter", _recoveriesCounter);
      prefs.setInt("lossesCounter", _lossesCounter);
      prefs.setInt("oneSectorRecoveries", _oneSectorRecoveries);
      prefs.setInt("twoSectorRecoveries", _twoSectorRecoveries);
      prefs.setInt("threeSectorRecoveries", _threeSectorRecoveries);
      prefs.setInt("fourSectorRecoveries", _fourSectorRecoveries);
      prefs.setInt("fiveSectorRecoveries", _fiveSectorRecoveries);
      prefs.setInt("sixSectorRecoveries", _sixSectorRecoveries);
      prefs.setInt("sevenSectorRecoveries", _sevenSectorRecoveries);
      prefs.setInt("eightSectorRecoveries", _eightSectorRecoveries);
      prefs.setInt("nineSectorRecoveries", _nineSectorRecoveries);
      prefs.setInt("tenSectorRecoveries", _tenSectorRecoveries);
      prefs.setInt("elevenSectorRecoveries", _elevenSectorRecoveries);
      prefs.setInt("twelveSectorRecoveries", _twelveSectorRecoveries);

      prefs.setInt("oneSectorLosses", _oneSectorLosses);
      prefs.setInt("twoSectorLosses", _twoSectorLosses);
      prefs.setInt("threeSectorLosses", _threeSectorLosses);
      prefs.setInt("fourSectorLosses", _fourSectorLosses);
      prefs.setInt("fiveSectorLosses", _fiveSectorLosses);
      prefs.setInt("sixSectorLosses", _sixSectorLosses);
      prefs.setInt("sevenSectorLosses", _sevenSectorLosses);
      prefs.setInt("eightSectorLosses", _eightSectorLosses);
      prefs.setInt("nineSectorLosses", _nineSectorLosses);
      prefs.setInt("tenSectorLosses", _tenSectorLosses);
      prefs.setInt("elevenSectorLosses", _elevenSectorLosses);
      prefs.setInt("twelveSectorLosses", _twelveSectorLosses);
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
              margin: EdgeInsets.only(top: 50.0),
              child: Padding(
                padding: EdgeInsets.all(18.0),
                child: Center(
                  child: Column(
                    children: [
                      headerText("Posesión de pelota", Colors.white,
                          FontWeight.bold, 25.0)
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 5),
              child: Row(
                children: <Widget>[
                  Text(
                    'Posesión recuperada',
                    style: TextStyle(color: Colors.white),
                  ),
                  Container(
                    height: 30,
                    width: 60,
                    color: Colors.lightBlue,
                    child: Text(
                      '$_recoveriesCounter',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    margin: EdgeInsets.only(right: 11, left: 10),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.end,
              ),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 25),
                      width: 73,
                      height: 45,
                      child: FlatButton(
                        child: Text(""),
                        color: Colors.transparent,
                        onPressed: () {
                          _sumOneSectorRecoveries();
                          _sumRecoveries();
                        },
                      ),
                    ),
                    Container(
                      width: 109,
                      height: 45,
                      child: FlatButton(
                        child: Text(""),
                        color: Colors.transparent,
                        onPressed: () {
                          _sumTwoSectorRecoveries();
                          _sumRecoveries();
                        },
                      ),
                    ),
                    Container(
                      width: 109,
                      height: 45,
                      child: FlatButton(
                        child: Text(""),
                        color: Colors.transparent,
                        onPressed: () {
                          _sumThreeSectorRecoveries();
                          _sumRecoveries();
                        },
                      ),
                    ),
                    Container(
                      width: 73,
                      height: 45,
                      child: FlatButton(
                        child: Text(""),
                        color: Colors.transparent,
                        onPressed: () {
                          _sumFourSectorRecoveries();
                          _sumRecoveries();
                        },
                      ),
                    ),
                  ]),
                  Row(children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 25),
                      width: 73,
                      height: 155,
                      child: FlatButton(
                        child: Text(""),
                        color: Colors.transparent,
                        onPressed: () {
                          _sumFiveSectorRecoveries();
                          _sumRecoveries();
                        },
                      ),
                    ),
                    Container(
                      width: 109,
                      height: 155,
                      child: FlatButton(
                        child: Text(""),
                        color: Colors.transparent,
                        onPressed: () {
                          _sumSixSectorRecoveries();
                          _sumRecoveries();
                        },
                      ),
                    ),
                    Container(
                      width: 109,
                      height: 155,
                      child: FlatButton(
                        child: Text(""),
                        color: Colors.transparent,
                        onPressed: () {
                          _sumSevenSectorRecoveries();
                          _sumRecoveries();
                        },
                      ),
                    ),
                    Container(
                      width: 73,
                      height: 155,
                      child: FlatButton(
                        child: Text(""),
                        color: Colors.transparent,
                        onPressed: () {
                          _sumEightSectorRecoveries();
                          _sumRecoveries();
                        },
                      ),
                    ),
                  ]),
                  Row(children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 25),
                      width: 73,
                      height: 45,
                      child: FlatButton(
                        child: Text(""),
                        color: Colors.transparent,
                        onPressed: () {
                          _sumNineSectorRecoveries();
                          _sumRecoveries();
                        },
                      ),
                    ),
                    Container(
                      width: 109,
                      height: 45,
                      child: FlatButton(
                        child: Text(""),
                        color: Color(0x00000000),
                        onPressed: () {
                          _sumTenSectorRecoveries();
                          _sumRecoveries();
                        },
                      ),
                    ),
                    Container(
                      width: 109,
                      height: 45,
                      // ignore: deprecated_member_use
                      child: FlatButton(
                        child: Text(""),
                        color: Color(0x00000000),
                        onPressed: () {
                          _sumElevenSectorRecoveries();
                          _sumRecoveries();
                        },
                      ),
                    ),
                    Container(
                      width: 73,
                      height: 45,
                      child: FlatButton(
                        child: Text(""),
                        onPressed: () {
                          _sumTwelveSectorRecoveries();
                          _sumRecoveries();
                        },
                      ),
                    ),
                  ]),
                ],
              ),
              height: screenSize.size.shortestSide / 1.6,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage("images/soccer_field.jpg"),
                fit: BoxFit.contain,
              )),
            ),
            Container(
              margin: EdgeInsets.only(top: 30, bottom: 5.0),
              child: Row(
                children: <Widget>[
                  Text(
                    'Posesión perdida',
                    style: TextStyle(color: Colors.white),
                  ),
                  Container(
                    height: 30,
                    width: 60,
                    color: Colors.red,
                    child: Text(
                      '$_lossesCounter',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    margin: EdgeInsets.only(right: 11, left: 10),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.end,
              ),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 25),
                      width: 73,
                      height: 45,
                      child: FlatButton(
                        child: Text(""),
                        color: Colors.transparent,
                        onPressed: () {
                          _sumOneSectorLosses();
                          _sumLossess();
                        },
                      ),
                    ),
                    Container(
                      width: 109,
                      height: 45,
                      child: FlatButton(
                        child: Text(""),
                        color: Colors.transparent,
                        onPressed: () {
                          _sumTwoSectorLosses();
                          _sumLossess();
                        },
                      ),
                    ),
                    Container(
                      width: 109,
                      height: 45,
                      child: FlatButton(
                        child: Text(""),
                        color: Colors.transparent,
                        onPressed: () {
                          _sumThreeSectorLosses();
                          _sumLossess();
                        },
                      ),
                    ),
                    Container(
                      width: 73,
                      height: 45,
                      child: FlatButton(
                        child: Text(""),
                        color: Colors.transparent,
                        onPressed: () {
                          _sumFourSectorLosses();
                          _sumLossess();
                        },
                      ),
                    ),
                  ]),
                  Row(children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 25),
                      width: 73,
                      height: 155,
                      child: FlatButton(
                        child: Text(""),
                        color: Colors.transparent,
                        onPressed: () {
                          _sumFiveSectorLosses();
                          _sumLossess();
                        },
                      ),
                    ),
                    Container(
                      width: 109,
                      height: 155,
                      child: FlatButton(
                        child: Text(""),
                        color: Colors.transparent,
                        onPressed: () {
                          _sumSixSectorLosses();
                          _sumLossess();
                        },
                      ),
                    ),
                    Container(
                      width: 109,
                      height: 155,
                      child: FlatButton(
                        child: Text(""),
                        color: Colors.transparent,
                        onPressed: () {
                          _sumSevenSectorLosses();
                          _sumLossess();
                        },
                      ),
                    ),
                    Container(
                      width: 73,
                      height: 155,
                      child: FlatButton(
                        child: Text(""),
                        color: Colors.transparent,
                        onPressed: () {
                          _sumEightSectorLosses();
                          _sumLossess();
                        },
                      ),
                    ),
                  ]),
                  Row(children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 25),
                      width: 73,
                      height: 45,
                      child: FlatButton(
                        child: Text(""),
                        color: Colors.transparent,
                        onPressed: () {
                          _sumNineSectorLosses();
                          _sumLossess();
                        },
                      ),
                    ),
                    Container(
                      width: 109,
                      height: 45,
                      child: FlatButton(
                        child: Text(""),
                        color: Colors.transparent,
                        onPressed: () {
                          _sumTenSectorLosses();
                          _sumLossess();
                        },
                      ),
                    ),
                    Container(
                      width: 109,
                      height: 45,
                      child: FlatButton(
                        child: Text(""),
                        color: Colors.transparent,
                        onPressed: () {
                          _sumElevenSectorLosses();
                          _sumLossess();
                        },
                      ),
                    ),
                    Container(
                      width: 73,
                      height: 45,
                      color: Colors.transparent,
                      child: FlatButton(
                        child: Text(""),
                        onPressed: () {
                          _sumTwelveSectorLosses();
                          _sumLossess();
                        },
                      ),
                    ),
                  ]),
                ],
              ),
              height: screenSize.size.shortestSide / 1.6,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage("images/soccer_field.jpg"),
                fit: BoxFit.contain,
              )),
            ),
            Container(
              margin: EdgeInsets.only(top: 70),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.navigate_before, size: 40.0),
                    color: Colors.white,
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => TeamAttackPage(
                              recoveriesCounter: _recoveriesCounter,
                              lossesCounter: _lossesCounter,
                              oneSectorRecoveries: _oneSectorRecoveries,
                              twoSectorRecoveries: _twoSectorRecoveries,
                              threeSectorRecoveries: _threeSectorRecoveries,
                              fourSectorRecoveries: _fourSectorRecoveries,
                              fiveSectorRecoveries: _fiveSectorRecoveries,
                              sixSectorRecoveries: _sixSectorRecoveries,
                              sevenSectorRecoveries: _sevenSectorRecoveries,
                              eightSectorRecoveries: _eightSectorRecoveries,
                              nineSectorRecoveries: _nineSectorRecoveries,
                              tenSectorRecoveries: _tenSectorRecoveries,
                              elevenSectorRecoveries: _elevenSectorRecoveries,
                              twelveSectorRecoveries: _twelveSectorRecoveries,
                              oneSectorLosses: _oneSectorLosses,
                              twoSectorLosses: _twoSectorLosses,
                              threeSectorLosses: _threeSectorLosses,
                              fourSectorLosses: _fourSectorLosses,
                              fiveSectorLosses: _fiveSectorLosses,
                              sixSectorLosses: _sixSectorLosses,
                              sevenSectorLosses: _sevenSectorLosses,
                              eightSectorLosses: _eightSectorLosses,
                              nineSectorLosses: _nineSectorLosses,
                              tenSectorLosses: _tenSectorLosses,
                              elevenSectorLosses: _elevenSectorLosses,
                              twelveSectorLosses: _twelveSectorLosses)));
                    },
                  ),
                  IconButton(
                      icon: Icon(Icons.menu, size: 40.0),
                      color: Colors.white,
                      onPressed: () {
                        FullScreenMenu.show(
                          context,
                          items: [
                            FSMenuItem(
                                icon:
                                    Icon(Icons.bar_chart, color: Colors.white),
                                text: Text('Ver métricas',
                                    style: TextStyle(
                                      color: Colors.white,
                                    )),
                                onTap: () => _goToMetricsPage()),
                            FSMenuItem(
                                icon: Icon(
                                    Icons.settings_backup_restore_rounded,
                                    color: Colors.white),
                                text: Text('Reiniciar métricas',
                                    style: TextStyle(
                                      color: Colors.white,
                                    )),
                                onTap: () => _restart()),
                            FSMenuItem(
                              icon: Icon(Icons.timer_off, color: Colors.white),
                              text: Text('Finalizar 1º tiempo',
                                  style: TextStyle(
                                    color: Colors.white,
                                  )),
                            ),
                            FSMenuItem(
                                icon: Icon(MyWhistleIcon.whistle,
                                    color: Colors.white, size: 17.0),
                                text: Text('Finalizar partido',
                                    style: TextStyle(
                                      color: Colors.white,
                                    )),
                                onTap: () => _exitGame()),
                          ],
                          backgroundColor: Colors.black,
                        );
                      }),
                  IconButton(
                    icon: Icon(
                      Icons.navigate_next,
                      size: 40.0,
                    ),
                    color: Colors.white,
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => TeamAttackPage(
                              recoveriesCounter: _recoveriesCounter,
                              lossesCounter: _lossesCounter,
                              oneSectorRecoveries: _oneSectorRecoveries,
                              twoSectorRecoveries: _twoSectorRecoveries,
                              threeSectorRecoveries: _threeSectorRecoveries,
                              fourSectorRecoveries: _fourSectorRecoveries,
                              fiveSectorRecoveries: _fiveSectorRecoveries,
                              sixSectorRecoveries: _sixSectorRecoveries,
                              sevenSectorRecoveries: _sevenSectorRecoveries,
                              eightSectorRecoveries: _eightSectorRecoveries,
                              nineSectorRecoveries: _nineSectorRecoveries,
                              tenSectorRecoveries: _tenSectorRecoveries,
                              elevenSectorRecoveries: _elevenSectorRecoveries,
                              twelveSectorRecoveries: _twelveSectorRecoveries,
                              oneSectorLosses: _oneSectorLosses,
                              twoSectorLosses: _twoSectorLosses,
                              threeSectorLosses: _threeSectorLosses,
                              fourSectorLosses: _fourSectorLosses,
                              fiveSectorLosses: _fiveSectorLosses,
                              sixSectorLosses: _sixSectorLosses,
                              sevenSectorLosses: _sevenSectorLosses,
                              eightSectorLosses: _eightSectorLosses,
                              nineSectorLosses: _nineSectorLosses,
                              tenSectorLosses: _tenSectorLosses,
                              elevenSectorLosses: _elevenSectorLosses,
                              twelveSectorLosses: _twelveSectorLosses)));
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      backgroundColor: Colors.black,
    );
  }

  _goToMetricsPage() {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => MetricsChartsPage(
            incomeAreaCounter: incomeAreaCounter,
            shotsOutsideAreaCounter: shotsOutsideAreaCounter,
            incomeAreaRight: incomeAreaRight,
            incomeAreaCenter: incomeAreaCenter,
            incomeAreaLeft: incomeAreaLeft,
            shotsOutsideAreaRight: shotsOutsideAreaRight,
            shotsOutsideAreaCenter: shotsOutsideAreaCenter,
            shotsOutsideAreaLeft: shotsOutsideAreaLeft,
            recoveriesCounter: _recoveriesCounter,
            lossesCounter: _lossesCounter,
            oneSectorRecoveries: _oneSectorRecoveries,
            twoSectorRecoveries: _twoSectorRecoveries,
            threeSectorRecoveries: _threeSectorRecoveries,
            fourSectorRecoveries: _fourSectorRecoveries,
            fiveSectorRecoveries: _fiveSectorRecoveries,
            sixSectorRecoveries: _sixSectorRecoveries,
            sevenSectorRecoveries: _sevenSectorRecoveries,
            eightSectorRecoveries: _eightSectorRecoveries,
            nineSectorRecoveries: _nineSectorRecoveries,
            tenSectorRecoveries: _tenSectorRecoveries,
            elevenSectorRecoveries: _elevenSectorRecoveries,
            twelveSectorRecoveries: _twelveSectorRecoveries,
            oneSectorLosses: _oneSectorLosses,
            twoSectorLosses: _twoSectorLosses,
            threeSectorLosses: _threeSectorLosses,
            fourSectorLosses: _fourSectorLosses,
            fiveSectorLosses: _fiveSectorLosses,
            sixSectorLosses: _sixSectorLosses,
            sevenSectorLosses: _sevenSectorLosses,
            eightSectorLosses: _eightSectorLosses,
            nineSectorLosses: _nineSectorLosses,
            tenSectorLosses: _tenSectorLosses,
            elevenSectorLosses: _elevenSectorLosses,
            twelveSectorLosses: _twelveSectorLosses)));
    FullScreenMenu.hide();
  }

  _exitGame() {
    _restart();
    Navigator.of(context).pushNamed('/firstMenuPage');
    FullScreenMenu.hide();
  }
}
