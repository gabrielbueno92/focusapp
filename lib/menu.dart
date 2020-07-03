import 'package:flutter/material.dart';

class OptionsList {
  String name;
  String description;
  OptionsList(this.name, this.description);
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<OptionsList> _options;
  TextEditingController _controller;
  final _formKey = GlobalKey<FormState>();
  String _opponentName = "";

  @override
  void initState() {
    _options = [
      OptionsList('Nuevo partido', 'Comenzar un nuevo partido'),
      OptionsList('Partidos jugados', 'Consultar partidos jugados'),
      OptionsList('Mi equipo', 'Gestionar equipo y jugadores'),
    ];

    _controller = TextEditingController();
    super.initState();

  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _modalOpponentName() {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Iniciar nuevo partido'),
            content: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text('Ingrese nombre del equipo rival:'),
                Form(
                    key: _formKey,
                    child: TextFormField(
                      onSaved: (String opponentName) => setState(() => opponentName = _opponentName),
                      keyboardType: TextInputType.text,
                      controller: _controller,
                      validator: (value) {
                        if(value.isEmpty){
                          return "Ingrese nombre del rival";
                        };
                      },
                      decoration: InputDecoration(
                          errorStyle: TextStyle(
                            color: Colors.red,
                          )
                      ),
                    ))
              ],
            ),
            actions: <Widget>[
              FlatButton(
                  child: Text('CANCELAR'),
                  textColor: Colors.green[700],
                  onPressed: () {
                    Navigator.of(context).pop(false);
                    _controller.clear();
                  }),
              FlatButton(
                  child: Text('SIGUIENTE'),
                  textColor: Colors.green[700],
                  onPressed: () {
                    if(_formKey.currentState.validate()){
                      Navigator.of(context).pop(true);
                    }
                  }),
            ],
          )).then((next) {
        if (next) {
          Navigator.pushNamed(context, '/metricsList');
        }
      });
    }

    return Scaffold(
      appBar: AppBar(title: Text('Menú principal')),
      body: ListView.builder(
        itemCount: _options.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              if (_options[index].name == 'Nuevo partido') {
                _modalOpponentName();
              }
            },
            child: ListTile(
              trailing: Icon(Icons.navigate_next),
              title: Text(_options[index].name),
              subtitle: Text(_options[index].description),
            ),
          );
        },
      ),
    );
  }
}