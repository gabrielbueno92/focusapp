import 'package:flutter/material.dart';

class MetricsList {
  String name;
  String description;
  bool check;
  MetricsList(this.name, this.description) : check = false;

  void toggleDone() {
    check = !check;
  }
}

class MetricsListPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MetricsListState();
  }
}

class MetricsListState extends State<MetricsListPage> {
  List<MetricsList> _metrics;

  @override
  void initState() {
    _metrics = [
      MetricsList('Ataque', 'Controlar ataque del equipo'),
      MetricsList('Defensa', 'Controlar defensa del equipo'),
      MetricsList('Recuperación de pelota', 'Controlar recuperaciones'),
      MetricsList('Pérdida de pelota', 'Controlar pérdidas de pelota'),
    ];
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Seleccionar métricas'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.navigate_next, size: 40.0),
              padding: const EdgeInsets.only(right: 40.0),
              onPressed: (){
                Navigator.pushNamed(context, '/teamAttack');
              },
            ),
          ],
        ),
        body: ListView.builder(
          itemCount: _metrics.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                setState(() {
                  _metrics[index].toggleDone();
                });
              },
              child: ListTile(
                trailing: Checkbox(
                  value: _metrics[index].check,
                  onChanged: (checked) {
                    setState(() {
                      _metrics[index].check = checked;
                    });
                  },
                ),
                title: Text(_metrics[index].name),
                subtitle: Text(_metrics[index].description),
              ),
            );
          },
        ));
  }
}