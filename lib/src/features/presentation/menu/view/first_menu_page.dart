import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:focusapp/src/features/presentation/custom_icons/my_icons_icons.dart';
import 'package:rounded_button/rounded_button.dart';

class FirstMenuPage extends StatelessWidget {
  const FirstMenuPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('images/grass.jpg'),
          )),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
            child: Container(color: Colors.black.withOpacity(0.4)),
          ),
        ),
        Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 120.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image(
                    image: AssetImage('images/focus_app_logo.jpeg'),
                    width: 170.0,
                    height: 170.0,
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 40.0),
                    child: RoundedButton(
                      primaryColor: Color.fromRGBO(82, 183, 136, 1),
                      backgroundColor: Colors.transparent,
                      text: 'Nuevo partido   ',
                      onPressed: () {
                        Navigator.pushNamed(context, '/newGamePage');
                      },
                      icon: Icon(
                        Icons.sports_soccer,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20.0, top: 40.0),
                    child: RoundedButton(
                      primaryColor: Color.fromRGBO(82, 183, 136, 1),
                      backgroundColor: Colors.transparent,
                      text: 'Partidos jugados',
                      onPressed: () {},
                      icon: Icon(
                        Icons.check_circle_outline,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 20.0),
                    child: RoundedButton(
                      primaryColor: Color.fromRGBO(82, 183, 136, 1),
                      backgroundColor: Colors.transparent,
                      text: 'Mis equipos     ',
                      onPressed: () {},
                      icon: Icon(
                        MyIcons.t_shirt,
                      ),
                    ),
                  ),
                  Container(
                    child: RoundedButton(
                      primaryColor: Color.fromRGBO(82, 183, 136, 1),
                      backgroundColor: Colors.transparent,
                      text: 'Configuración    ',
                      onPressed: () {},
                      icon: Icon(
                        Icons.settings,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: RoundedButton(
                      primaryColor: Color.fromRGBO(82, 183, 136, 1),
                      backgroundColor: Colors.transparent,
                      text: 'Mi perfil       ',
                      onPressed: () {},
                      icon: Icon(
                        Icons.person_outline,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    ));
  }
}
