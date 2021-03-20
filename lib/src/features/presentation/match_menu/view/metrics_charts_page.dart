import 'package:configurable_expansion_tile/configurable_expansion_tile.dart';
import 'package:flutter/material.dart';
import 'package:focusapp/src/features/presentation/commons_widgets/back_button.dart';
import 'package:focusapp/src/features/presentation/commons_widgets/header_text.dart';
import 'package:vertical_barchart/vertical-barchart.dart';
import 'package:vertical_barchart/vertical-barchartmodel.dart';
import 'package:vertical_barchart/vertical-legend.dart';

class MetricsChartsPage extends StatefulWidget {
  int incomeAreaCounter;
  int shotsOutsideAreaCounter;
  int incomeAreaRight;
  int incomeAreaCenter;
  int incomeAreaLeft;
  int shotsOutsideAreaRight;
  int shotsOutsideAreaCenter;
  int shotsOutsideAreaLeft;
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
  MetricsChartsPage(
      {Key key,
      this.incomeAreaCounter,
      this.shotsOutsideAreaCounter,
      this.incomeAreaRight,
      this.incomeAreaCenter,
      this.incomeAreaLeft,
      this.shotsOutsideAreaRight,
      this.shotsOutsideAreaCenter,
      this.shotsOutsideAreaLeft,
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
  _MetricsChartsPageState createState() => _MetricsChartsPageState(
        incomeAreaCounter,
        shotsOutsideAreaCounter,
        incomeAreaRight,
        incomeAreaCenter,
        incomeAreaLeft,
        shotsOutsideAreaRight,
        shotsOutsideAreaCenter,
        shotsOutsideAreaLeft,
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

class _MetricsChartsPageState extends State<MetricsChartsPage> {
  int incomeAreaCounter;
  int shotsOutsideAreaCounter;
  int incomeAreaRight;
  int incomeAreaCenter;
  int incomeAreaLeft;
  int shotsOutsideAreaRight;
  int shotsOutsideAreaCenter;
  int shotsOutsideAreaLeft;
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
  _MetricsChartsPageState(
    this.incomeAreaCounter,
    this.shotsOutsideAreaCounter,
    this.incomeAreaRight,
    this.incomeAreaCenter,
    this.incomeAreaLeft,
    this.shotsOutsideAreaRight,
    this.shotsOutsideAreaCenter,
    this.shotsOutsideAreaLeft,
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
    this.twelveSectorLosses,
  );

  @override
  void initState() {
    super.initState();
  }

  List<VBarChartModel> _getBarData(
      int totalIncomes,
      int totalShots,
      int incomeRight,
      int incomeCenter,
      int incomeLeft,
      int shotsRight,
      int shotsCenter,
      int shotsLeft) {
    return [
      VBarChartModel(
        index: 0,
        label: "Izquierda",
        colors: [Colors.orange, Colors.orange],
        jumlah: shotsRight.toDouble(),
        tooltip: _calculatePorcents(shotsRight, totalShots),
      ),
      VBarChartModel(
        index: 1,
        label: "",
        colors: [Colors.red, Colors.red],
        jumlah: incomeRight.toDouble(),
        tooltip: _calculatePorcents(incomeRight, totalIncomes),
      ),
      VBarChartModel(
        index: 2,
        label: "Centro",
        colors: [Colors.orange, Colors.orange],
        jumlah: shotsCenter.toDouble(),
        tooltip: _calculatePorcents(shotsCenter, totalShots),
      ),
      VBarChartModel(
        index: 3,
        label: "",
        colors: [Colors.red, Colors.red],
        jumlah: incomeCenter.toDouble(),
        tooltip: _calculatePorcents(incomeCenter, totalIncomes),
      ),
      VBarChartModel(
          index: 4,
          label: "Derecha",
          colors: [Colors.orange, Colors.orange],
          jumlah: shotsLeft.toDouble(),
          tooltip: _calculatePorcents(shotsLeft, totalShots)),
      VBarChartModel(
        index: 5,
        label: "",
        colors: [Colors.red, Colors.red],
        jumlah: incomeLeft.toDouble(),
        tooltip: _calculatePorcents(incomeLeft, totalIncomes),
      ),
    ];
  }

  double _calculateMaxX(int totalIncomes, int totalShots) {
    if (totalIncomes > totalShots) {
      return totalIncomes.toDouble();
    } else {
      return totalShots.toDouble();
    }
  }

  String _calculatePorcents(int side, int total) {
    double move = (side * 100) / total;
    return move.toStringAsFixed(0) + "% (" + side.toString() + ")";
  }

  Color _calculateRecoveriesColorInField(int sector, int total) {
    double percentage = (sector * 100) / total;
    if (percentage <= 5) {
      return Color.fromRGBO(0, 139, 248, 0.0);
    } else if (percentage <= 10) {
      return Color.fromRGBO(0, 139, 248, 0.5);
    } else if (percentage <= 20) {
      return Color.fromRGBO(0, 139, 248, 0.6);
    } else if (percentage <= 40) {
      return Color.fromRGBO(0, 139, 248, 0.7);
    } else if (percentage <= 60) {
      return Color.fromRGBO(0, 139, 248, 0.8);
    } else if (percentage <= 80) {
      return Color.fromRGBO(0, 139, 248, 0.9);
    } else if (percentage <= 100) {
      return Color.fromRGBO(0, 139, 248, 1.0);
    }
  }

  Color _calculateLossesColorInField(int sector, int total) {
    double percentage = (sector * 100) / total;
    if (percentage <= 5) {
      return Color.fromRGBO(231, 34, 43, 0.0);
    } else if (percentage <= 10) {
      return Color.fromRGBO(231, 34, 43, 0.5);
    } else if (percentage <= 20) {
      return Color.fromRGBO(231, 34, 43, 0.6);
    } else if (percentage <= 40) {
      return Color.fromRGBO(231, 34, 43, 0.7);
    } else if (percentage <= 60) {
      return Color.fromRGBO(231, 34, 43, 0.8);
    } else if (percentage <= 80) {
      return Color.fromRGBO(231, 34, 43, 0.9);
    } else if (percentage <= 100) {
      return Color.fromRGBO(231, 34, 43, 1.0);
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context);
    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            children: <Widget>[
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 50.0, right: 25.0),
                    child: backButton(context, Colors.white),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 50.0),
                    child: Padding(
                      padding: EdgeInsets.all(18.0),
                      child: Center(
                        child: Column(
                          children: [
                            headerText("Métricas del partido", Colors.white,
                                FontWeight.bold, 25.0)
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 10),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius:
                                BorderRadius.all(Radius.circular(40.0))),
                        child: ConfigurableExpansionTile(
                          expandedBackgroundColor: Colors.black,
                          animatedWidgetFollowingHeader: const Icon(
                            Icons.expand_more,
                            color: Colors.white,
                            size: 30,
                          ),
                          header: Container(
                            margin: EdgeInsets.only(left: 10, right: 160),
                            child: Text("Ataques de mi equipo",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15.0)),
                          ),
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: VerticalBarchart(
                                background: Colors.black,
                                labelColor: Colors.white,
                                tooltipColor: Colors.white,
                                maxX: _calculateMaxX(
                                    incomeAreaCounter, shotsOutsideAreaCounter),
                                data: _getBarData(
                                    incomeAreaCounter,
                                    shotsOutsideAreaCounter,
                                    incomeAreaRight,
                                    incomeAreaCenter,
                                    incomeAreaLeft,
                                    shotsOutsideAreaRight,
                                    shotsOutsideAreaCenter,
                                    shotsOutsideAreaLeft),
                                showLegend: true,
                                legendPosition: LegendPosition.TOP,
                                legend: [
                                  Vlegend(
                                    isSquare: false,
                                    color: Colors.orange,
                                    text: "Remates fuera del área",
                                    textColor: Colors.white,
                                    size: 13,
                                  ),
                                  Vlegend(
                                    isSquare: false,
                                    color: Colors.red,
                                    text: "Ingresos al área",
                                    textColor: Colors.white,
                                    size: 13,
                                  )
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 10, left: 40.0),
                                  height: 30,
                                  width: 60,
                                  color: Colors.orange,
                                  child: Text(
                                    shotsOutsideAreaCounter.toString(),
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "TOTAL",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 10, right: 40.0),
                                  height: 30,
                                  width: 60,
                                  color: Colors.red,
                                  child: Text(
                                    incomeAreaCounter.toString(),
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius:
                              BorderRadius.all(Radius.circular(40.0))),
                      margin: EdgeInsets.only(top: 30, left: 10, right: 10),
                      child: ConfigurableExpansionTile(
                        expandedBackgroundColor: Colors.black,
                        animatedWidgetFollowingHeader: const Icon(
                          Icons.expand_more,
                          color: Colors.white,
                          size: 30,
                        ),
                        header: Container(
                          margin: EdgeInsets.only(left: 10, right: 93),
                          child: Text("Posesión de pelota recuperada",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15.0)),
                        ),
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Row(children: <Widget>[
                                  Container(
                                    decoration: BoxDecoration(
                                        border:
                                            Border.all(color: Colors.white)),
                                    margin: EdgeInsets.only(left: 18),
                                    width: 71,
                                    height: 45,
                                    child: FlatButton(
                                      child: Text(
                                        _calculatePorcents(oneSectorRecoveries,
                                            recoveriesCounter),
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      color: _calculateRecoveriesColorInField(
                                          oneSectorRecoveries,
                                          recoveriesCounter),
                                      onPressed: () {},
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        border:
                                            Border.all(color: Colors.white)),
                                    width: 108,
                                    height: 45,
                                    child: FlatButton(
                                      child: Text(
                                        _calculatePorcents(twoSectorRecoveries,
                                            recoveriesCounter),
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      color: _calculateRecoveriesColorInField(
                                          twoSectorRecoveries,
                                          recoveriesCounter),
                                      onPressed: () {},
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        border:
                                            Border.all(color: Colors.white)),
                                    width: 108,
                                    height: 45,
                                    child: FlatButton(
                                      child: Text(
                                        _calculatePorcents(
                                            threeSectorRecoveries,
                                            recoveriesCounter),
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      color: _calculateRecoveriesColorInField(
                                          threeSectorRecoveries,
                                          recoveriesCounter),
                                      onPressed: () {},
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        border:
                                            Border.all(color: Colors.white)),
                                    width: 71,
                                    height: 45,
                                    child: FlatButton(
                                      child: Text(
                                        _calculatePorcents(fourSectorRecoveries,
                                            recoveriesCounter),
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      color: _calculateRecoveriesColorInField(
                                          fourSectorRecoveries,
                                          recoveriesCounter),
                                      onPressed: () {},
                                    ),
                                  ),
                                ]),
                                Row(children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(left: 18),
                                    decoration: BoxDecoration(
                                        border:
                                            Border.all(color: Colors.white)),
                                    width: 71,
                                    height: 155,
                                    child: FlatButton(
                                      child: Text(
                                        _calculatePorcents(fiveSectorRecoveries,
                                            recoveriesCounter),
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      color: _calculateRecoveriesColorInField(
                                          fiveSectorRecoveries,
                                          recoveriesCounter),
                                      onPressed: () {},
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        border:
                                            Border.all(color: Colors.white)),
                                    width: 108,
                                    height: 155,
                                    child: FlatButton(
                                      child: Text(
                                        _calculatePorcents(sixSectorRecoveries,
                                            recoveriesCounter),
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      color: _calculateRecoveriesColorInField(
                                          sixSectorRecoveries,
                                          recoveriesCounter),
                                      onPressed: () {},
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        border:
                                            Border.all(color: Colors.white)),
                                    width: 108,
                                    height: 155,
                                    child: FlatButton(
                                      child: Text(
                                        _calculatePorcents(
                                            sevenSectorRecoveries,
                                            recoveriesCounter),
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      color: _calculateRecoveriesColorInField(
                                          sevenSectorRecoveries,
                                          recoveriesCounter),
                                      onPressed: () {},
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        border:
                                            Border.all(color: Colors.white)),
                                    width: 71,
                                    height: 155,
                                    child: FlatButton(
                                      child: Text(
                                        _calculatePorcents(
                                            eightSectorRecoveries,
                                            recoveriesCounter),
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      color: _calculateRecoveriesColorInField(
                                          eightSectorRecoveries,
                                          recoveriesCounter),
                                      onPressed: () {},
                                    ),
                                  ),
                                ]),
                                Row(children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(left: 18),
                                    decoration: BoxDecoration(
                                        border:
                                            Border.all(color: Colors.white)),
                                    width: 71,
                                    height: 45,
                                    child: FlatButton(
                                      child: Text(
                                        _calculatePorcents(nineSectorRecoveries,
                                            recoveriesCounter),
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      color: _calculateRecoveriesColorInField(
                                          nineSectorRecoveries,
                                          recoveriesCounter),
                                      onPressed: () {},
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        border:
                                            Border.all(color: Colors.white)),
                                    width: 108,
                                    height: 45,
                                    child: FlatButton(
                                      child: Text(
                                        _calculatePorcents(tenSectorRecoveries,
                                            recoveriesCounter),
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      color: _calculateRecoveriesColorInField(
                                          tenSectorRecoveries,
                                          recoveriesCounter),
                                      onPressed: () {},
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        border:
                                            Border.all(color: Colors.white)),
                                    width: 108,
                                    height: 45,
                                    // ignore: deprecated_member_use
                                    child: FlatButton(
                                      child: Text(
                                        _calculatePorcents(
                                            elevenSectorRecoveries,
                                            recoveriesCounter),
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      color: _calculateRecoveriesColorInField(
                                          elevenSectorRecoveries,
                                          recoveriesCounter),
                                      onPressed: () {},
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        border:
                                            Border.all(color: Colors.white)),
                                    width: 71,
                                    height: 45,
                                    child: FlatButton(
                                      child: Text(
                                        _calculatePorcents(
                                            twelveSectorRecoveries,
                                            recoveriesCounter),
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      color: _calculateRecoveriesColorInField(
                                          twelveSectorRecoveries,
                                          recoveriesCounter),
                                      onPressed: () {},
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
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius:
                              BorderRadius.all(Radius.circular(40.0))),
                      margin: EdgeInsets.only(top: 30, left: 10, right: 10),
                      child: ConfigurableExpansionTile(
                        expandedBackgroundColor: Colors.black,
                        animatedWidgetFollowingHeader: const Icon(
                          Icons.expand_more,
                          color: Colors.white,
                          size: 30,
                        ),
                        header: Container(
                          margin: EdgeInsets.only(left: 10, right: 120),
                          child: Text("Posesión de pelota perdida",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15.0)),
                        ),
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Row(children: <Widget>[
                                  Container(
                                    decoration: BoxDecoration(
                                        border:
                                            Border.all(color: Colors.white)),
                                    margin: EdgeInsets.only(left: 18),
                                    width: 71,
                                    height: 45,
                                    child: FlatButton(
                                      child: Text(
                                        _calculatePorcents(
                                            oneSectorLosses, lossesCounter),
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      color: _calculateLossesColorInField(
                                          oneSectorLosses, lossesCounter),
                                      onPressed: () {},
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        border:
                                            Border.all(color: Colors.white)),
                                    width: 108,
                                    height: 45,
                                    child: FlatButton(
                                      child: Text(
                                        _calculatePorcents(
                                            twoSectorLosses, lossesCounter),
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      color: _calculateLossesColorInField(
                                          twoSectorLosses, lossesCounter),
                                      onPressed: () {},
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        border:
                                            Border.all(color: Colors.white)),
                                    width: 108,
                                    height: 45,
                                    child: FlatButton(
                                      child: Text(
                                        _calculatePorcents(
                                            threeSectorLosses, lossesCounter),
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      color: _calculateLossesColorInField(
                                          threeSectorLosses, lossesCounter),
                                      onPressed: () {},
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        border:
                                            Border.all(color: Colors.white)),
                                    width: 71,
                                    height: 45,
                                    child: FlatButton(
                                      child: Text(
                                        _calculatePorcents(
                                            fourSectorLosses, lossesCounter),
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      color: _calculateLossesColorInField(
                                          fourSectorLosses, lossesCounter),
                                      onPressed: () {},
                                    ),
                                  ),
                                ]),
                                Row(children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(left: 18),
                                    decoration: BoxDecoration(
                                        border:
                                            Border.all(color: Colors.white)),
                                    width: 71,
                                    height: 155,
                                    child: FlatButton(
                                      child: Text(
                                        _calculatePorcents(
                                            fiveSectorLosses, lossesCounter),
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      color: _calculateLossesColorInField(
                                          fiveSectorLosses, lossesCounter),
                                      onPressed: () {},
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        border:
                                            Border.all(color: Colors.white)),
                                    width: 108,
                                    height: 155,
                                    child: FlatButton(
                                      child: Text(
                                        _calculatePorcents(
                                            sixSectorLosses, lossesCounter),
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      color: _calculateLossesColorInField(
                                          sixSectorLosses, lossesCounter),
                                      onPressed: () {},
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        border:
                                            Border.all(color: Colors.white)),
                                    width: 108,
                                    height: 155,
                                    child: FlatButton(
                                      child: Text(
                                        _calculatePorcents(
                                            sevenSectorLosses, lossesCounter),
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      color: _calculateLossesColorInField(
                                          sevenSectorLosses, lossesCounter),
                                      onPressed: () {},
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        border:
                                            Border.all(color: Colors.white)),
                                    width: 71,
                                    height: 155,
                                    child: FlatButton(
                                      child: Text(
                                        _calculatePorcents(
                                            eightSectorLosses, lossesCounter),
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      color: _calculateLossesColorInField(
                                          eightSectorLosses, lossesCounter),
                                      onPressed: () {},
                                    ),
                                  ),
                                ]),
                                Row(children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(left: 18),
                                    decoration: BoxDecoration(
                                        border:
                                            Border.all(color: Colors.white)),
                                    width: 71,
                                    height: 45,
                                    child: FlatButton(
                                      child: Text(
                                        _calculatePorcents(
                                            nineSectorLosses, lossesCounter),
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      color: _calculateLossesColorInField(
                                          nineSectorLosses, lossesCounter),
                                      onPressed: () {},
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        border:
                                            Border.all(color: Colors.white)),
                                    width: 108,
                                    height: 45,
                                    child: FlatButton(
                                      child: Text(
                                        _calculatePorcents(
                                            tenSectorLosses, lossesCounter),
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      color: _calculateLossesColorInField(
                                          tenSectorLosses, lossesCounter),
                                      onPressed: () {},
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        border:
                                            Border.all(color: Colors.white)),
                                    width: 108,
                                    height: 45,
                                    // ignore: deprecated_member_use
                                    child: FlatButton(
                                      child: Text(
                                        _calculatePorcents(
                                            elevenSectorLosses, lossesCounter),
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      color: _calculateLossesColorInField(
                                          elevenSectorLosses, lossesCounter),
                                      onPressed: () {},
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        border:
                                            Border.all(color: Colors.white)),
                                    width: 71,
                                    height: 45,
                                    child: FlatButton(
                                      child: Text(
                                        _calculatePorcents(
                                            twelveSectorLosses, lossesCounter),
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      color: _calculateLossesColorInField(
                                          twelveSectorLosses, lossesCounter),
                                      onPressed: () {},
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
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
