import 'package:flutter/material.dart';
import 'package:focusapp/src/features/presentation/commons_widgets/header_text.dart';
import 'package:focusapp/src/features/presentation/custom_icons/my_whistle_icon_icons.dart';
import 'package:focusapp/src/features/presentation/match_menu/view/metrics_charts_page.dart';
import 'package:focusapp/src/features/presentation/recoveries_losses/view/recoveries_losses_page.dart';
import 'package:full_screen_menu/full_screen_menu.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CountAttackList {
  String name;
  int count;
  CountAttackList(this.name, this.count);
}

class TeamAttackPage extends StatefulWidget {
  int recoveriesCounter;
  int lossesCounter;
  int oneSectorRecoveries;
  int twoSectorRecoveries;
  int threeSectorRecoveries;
  int fourSectorRecoveries;
  int fiveSectorRecoveries;
  int sixSectorRecoveries;
  int sevenSectorRecoveries;
  int eightSectorRecoveries;
  int nineSectorRecoveries;
  int tenSectorRecoveries;
  int elevenSectorRecoveries;
  int twelveSectorRecoveries;
  int oneSectorLosses;
  int twoSectorLosses;
  int threeSectorLosses;
  int fourSectorLosses;
  int fiveSectorLosses;
  int sixSectorLosses;
  int sevenSectorLosses;
  int eightSectorLosses;
  int nineSectorLosses;
  int tenSectorLosses;
  int elevenSectorLosses;
  int twelveSectorLosses;
  TeamAttackPage(
      {Key key,
      this.recoveriesCounter,
      this.lossesCounter,
      this.oneSectorRecoveries,
      this.twoSectorRecoveries,
      this.threeSectorRecoveries,
      this.fourSectorRecoveries,
      this.fiveSectorRecoveries,
      this.sixSectorRecoveries,
      this.sevenSectorRecoveries,
      this.eightSectorRecoveries,
      this.nineSectorRecoveries,
      this.tenSectorRecoveries,
      this.elevenSectorRecoveries,
      this.twelveSectorRecoveries,
      this.oneSectorLosses,
      this.twoSectorLosses,
      this.threeSectorLosses,
      this.fourSectorLosses,
      this.fiveSectorLosses,
      this.sixSectorLosses,
      this.sevenSectorLosses,
      this.eightSectorLosses,
      this.nineSectorLosses,
      this.tenSectorLosses,
      this.elevenSectorLosses,
      this.twelveSectorLosses})
      : super(key: key);
  @override
  _TeamAttackPageState createState() => _TeamAttackPageState(
        recoveriesCounter,
        lossesCounter,
        oneSectorRecoveries,
        twoSectorRecoveries,
        threeSectorRecoveries,
        fourSectorRecoveries,
        fiveSectorRecoveries,
        sixSectorRecoveries,
        sevenSectorRecoveries,
        eightSectorRecoveries,
        nineSectorRecoveries,
        tenSectorRecoveries,
        elevenSectorRecoveries,
        twelveSectorRecoveries,
        oneSectorLosses,
        twoSectorLosses,
        threeSectorLosses,
        fourSectorLosses,
        fiveSectorLosses,
        sixSectorLosses,
        sevenSectorLosses,
        eightSectorLosses,
        nineSectorLosses,
        tenSectorLosses,
        elevenSectorLosses,
        twelveSectorLosses,
      );
}

class _TeamAttackPageState extends State<TeamAttackPage> {
  int recoveriesCounter;
  int lossesCounter;
  int oneSectorRecoveries;
  int twoSectorRecoveries;
  int threeSectorRecoveries;
  int fourSectorRecoveries;
  int fiveSectorRecoveries;
  int sixSectorRecoveries;
  int sevenSectorRecoveries;
  int eightSectorRecoveries;
  int nineSectorRecoveries;
  int tenSectorRecoveries;
  int elevenSectorRecoveries;
  int twelveSectorRecoveries;
  int oneSectorLosses;
  int twoSectorLosses;
  int threeSectorLosses;
  int fourSectorLosses;
  int fiveSectorLosses;
  int sixSectorLosses;
  int sevenSectorLosses;
  int eightSectorLosses;
  int nineSectorLosses;
  int tenSectorLosses;
  int elevenSectorLosses;
  int twelveSectorLosses;
  int _incomeAreaCounter = 0;
  int _shotsOutsideAreaCounter = 0;
  int _incomeAreaRight = 0;
  int _incomeAreaCenter = 0;
  int _incomeAreaLeft = 0;
  int _shotsOutsideAreaRight = 0;
  int _shotsOutsideAreaCenter = 0;
  int _shotsOutsideAreaLeft = 0;
  _TeamAttackPageState(
      this.recoveriesCounter,
      this.lossesCounter,
      this.oneSectorRecoveries,
      this.twoSectorRecoveries,
      this.threeSectorRecoveries,
      this.fourSectorRecoveries,
      this.fiveSectorRecoveries,
      this.sixSectorRecoveries,
      this.sevenSectorRecoveries,
      this.eightSectorRecoveries,
      this.nineSectorRecoveries,
      this.tenSectorRecoveries,
      this.elevenSectorRecoveries,
      this.twelveSectorRecoveries,
      this.oneSectorLosses,
      this.twoSectorLosses,
      this.threeSectorLosses,
      this.fourSectorLosses,
      this.fiveSectorLosses,
      this.sixSectorLosses,
      this.sevenSectorLosses,
      this.eightSectorLosses,
      this.nineSectorLosses,
      this.tenSectorLosses,
      this.elevenSectorLosses,
      this.twelveSectorLosses);

  @override
  void initState() {
    super.initState();
    _loadAttackPreferencies();
  }

  _loadAttackPreferencies() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _incomeAreaCounter = prefs.getInt("incomeAreaCounter") ?? 0;
      _shotsOutsideAreaCounter = prefs.getInt("shotsOutsideAreaCounter") ?? 0;
      _shotsOutsideAreaLeft = prefs.getInt("shotsOutsideAreaLeft") ?? 0;
      _shotsOutsideAreaCenter = prefs.getInt("shotsOutsideAreaCenter") ?? 0;
      _shotsOutsideAreaRight = prefs.getInt("shotsOutsideAreaRight") ?? 0;
      _incomeAreaLeft = prefs.getInt("incomeAreaLeft") ?? 0;
      _incomeAreaRight = prefs.getInt("incomeAreaRight") ?? 0;
      _incomeAreaCenter = prefs.getInt("incomeAreaCenter") ?? 0;
    });
  }

  _sumIncomeArea() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    setState(() {
      _incomeAreaCounter++;
      prefs.setInt("incomeAreaCounter", _incomeAreaCounter);
    });
  }

  _sumShotsOutsideArea() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _shotsOutsideAreaCounter++;
      prefs.setInt("shotsOutsideAreaCounter", _shotsOutsideAreaCounter);
    });
  }

  _sumIncomeAreaRight() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _incomeAreaRight++;
      prefs.setInt("incomeAreaRight", _incomeAreaRight);
    });
  }

  _sumIncomeAreaCenter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _incomeAreaCenter++;
      prefs.setInt("incomeAreaCenter", _incomeAreaCenter);
    });
  }

  _sumIncomeAreaLeft() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _incomeAreaLeft++;
      prefs.setInt("incomeAreaLeft", _incomeAreaLeft);
    });
  }

  _sumShotsOutsideAreaRight() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _shotsOutsideAreaRight++;
      prefs.setInt("shotsOutsideAreaRight", _shotsOutsideAreaRight);
    });
  }

  _sumShotsOutsideAreaCenter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _shotsOutsideAreaCenter++;
      prefs.setInt("shotsOutsideAreaCenter", _shotsOutsideAreaCenter);
    });
  }

  _sumShotsOutsideAreaLeft() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _shotsOutsideAreaLeft++;
      prefs.setInt("shotsOutsideAreaLeft", _shotsOutsideAreaLeft);
    });
  }

  void _restart() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _shotsOutsideAreaCounter = 0;
      _incomeAreaCounter = 0;
      _incomeAreaRight = 0;
      _incomeAreaCenter = 0;
      _incomeAreaLeft = 0;
      _shotsOutsideAreaRight = 0;
      _shotsOutsideAreaCenter = 0;
      _shotsOutsideAreaLeft = 0;

      prefs.setInt("incomeAreaCounter", _incomeAreaCounter);
      prefs.setInt("shotsOutsideAreaCounter", _shotsOutsideAreaCounter);
      prefs.setInt("shotsOutsideAreaLeft", _shotsOutsideAreaLeft);
      prefs.setInt("shotsOutsideAreaCenter", _shotsOutsideAreaCenter);
      prefs.setInt("shotsOutsideAreaRight", _shotsOutsideAreaRight);
      prefs.setInt("incomeAreaLeft", _incomeAreaLeft);
      prefs.setInt("incomeAreaRight", _incomeAreaRight);
      prefs.setInt("incomeAreaCenter", _incomeAreaCenter);
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
                    headerText("Ataques de mi equipo", Colors.white,
                        FontWeight.bold, 25.0)
                  ],
                ),
              ),
            ),
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
                          _incomeAreaRight.toString(),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        color: Colors.red,
                        onPressed: () {
                          _sumIncomeAreaRight();
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
                          _incomeAreaCenter.toString(),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        color: Colors.red,
                        onPressed: () {
                          _sumIncomeAreaCenter();
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
                          _incomeAreaLeft.toString(),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        color: Colors.red,
                        onPressed: () {
                          _sumIncomeAreaLeft();
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
                          _shotsOutsideAreaRight.toString(),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        color: Colors.orange,
                        onPressed: () {
                          _sumShotsOutsideAreaRight();
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
                          _shotsOutsideAreaCenter.toString(),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        color: Colors.orange,
                        onPressed: () {
                          _sumShotsOutsideAreaCenter();
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
                          _shotsOutsideAreaLeft.toString(),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        color: Colors.orange,
                        onPressed: () {
                          _sumShotsOutsideAreaLeft();
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
            margin: EdgeInsets.only(left: 10, right: 10),
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
            margin: EdgeInsets.only(left: 10, right: 10, top: 5),
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
                  margin: EdgeInsets.only(top: 10),
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
          Container(
            margin: EdgeInsets.only(top: 200),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.navigate_before, size: 40.0),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => BallRecoveriesAndLossesPage(
                              incomeAreaCounter: _incomeAreaCounter,
                              shotsOutsideAreaCounter: _shotsOutsideAreaCounter,
                              incomeAreaRight: _incomeAreaRight,
                              incomeAreaCenter: _incomeAreaCenter,
                              incomeAreaLeft: _incomeAreaLeft,
                              shotsOutsideAreaRight: _shotsOutsideAreaRight,
                              shotsOutsideAreaCenter: _shotsOutsideAreaCenter,
                              shotsOutsideAreaLeft: _shotsOutsideAreaLeft,
                            )));
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
                              icon: Icon(Icons.bar_chart, color: Colors.white),
                              text: Text('Ver métricas',
                                  style: TextStyle(
                                    color: Colors.white,
                                  )),
                              onTap: () => _goToMetricsPage()),
                          FSMenuItem(
                              icon: Icon(Icons.settings_backup_restore_rounded,
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
                            onTap: () => _exitGame(),
                          ),
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
                        builder: (context) => BallRecoveriesAndLossesPage(
                              incomeAreaCounter: _incomeAreaCounter,
                              shotsOutsideAreaCounter: _shotsOutsideAreaCounter,
                              incomeAreaRight: _incomeAreaRight,
                              incomeAreaCenter: _incomeAreaCenter,
                              incomeAreaLeft: _incomeAreaLeft,
                              shotsOutsideAreaRight: _shotsOutsideAreaRight,
                              shotsOutsideAreaCenter: _shotsOutsideAreaCenter,
                              shotsOutsideAreaLeft: _shotsOutsideAreaLeft,
                            )));
                  },
                ),
              ],
            ),
          )
        ],
      )),
      backgroundColor: Colors.black,
    );
  }

  _goToMetricsPage() {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => MetricsChartsPage(
            incomeAreaCounter: _incomeAreaCounter,
            shotsOutsideAreaCounter: _shotsOutsideAreaCounter,
            incomeAreaRight: _incomeAreaRight,
            incomeAreaCenter: _incomeAreaCenter,
            incomeAreaLeft: _incomeAreaLeft,
            shotsOutsideAreaRight: _shotsOutsideAreaRight,
            shotsOutsideAreaCenter: _shotsOutsideAreaCenter,
            shotsOutsideAreaLeft: _shotsOutsideAreaLeft,
            recoveriesCounter: recoveriesCounter,
            lossesCounter: lossesCounter,
            oneSectorRecoveries: oneSectorRecoveries,
            twoSectorRecoveries: twoSectorRecoveries,
            threeSectorRecoveries: threeSectorRecoveries,
            fourSectorRecoveries: fourSectorRecoveries,
            fiveSectorRecoveries: fiveSectorRecoveries,
            sixSectorRecoveries: sixSectorRecoveries,
            sevenSectorRecoveries: sevenSectorRecoveries,
            eightSectorRecoveries: eightSectorRecoveries,
            nineSectorRecoveries: nineSectorRecoveries,
            tenSectorRecoveries: tenSectorRecoveries,
            elevenSectorRecoveries: elevenSectorRecoveries,
            twelveSectorRecoveries: twelveSectorRecoveries,
            oneSectorLosses: oneSectorLosses,
            twoSectorLosses: twoSectorLosses,
            threeSectorLosses: threeSectorLosses,
            fourSectorLosses: fourSectorLosses,
            fiveSectorLosses: fiveSectorLosses,
            sixSectorLosses: sixSectorLosses,
            sevenSectorLosses: sevenSectorLosses,
            eightSectorLosses: eightSectorLosses,
            nineSectorLosses: nineSectorLosses,
            tenSectorLosses: tenSectorLosses,
            elevenSectorLosses: elevenSectorLosses,
            twelveSectorLosses: twelveSectorLosses)));
    FullScreenMenu.hide();
  }

  _exitGame() {
    _restart();
    Navigator.of(context).pushNamed('/firstMenuPage');
    FullScreenMenu.hide();
  }
}
