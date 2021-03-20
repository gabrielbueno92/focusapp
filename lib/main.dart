import 'package:flutter/material.dart';
import 'package:focusapp/src/features/presentation/match_menu/view/metrics_charts_page.dart';
import 'package:focusapp/src/features/presentation/menu/view/first_menu_page.dart';
import 'package:focusapp/src/features/presentation/menu/view/menu.dart';
import 'package:focusapp/src/features/presentation/ball_losses_page/view/ball_losses_page.dart';
import 'package:focusapp/src/features/presentation/ball_recoveries_page/view/ball_recoveries_page.dart';
import 'package:focusapp/src/features/presentation/complete_team/view/complete_team.dart';
import 'package:focusapp/src/features/presentation/forgot_password_page/view/forgot_password_page.dart';
import 'package:focusapp/src/features/presentation/login_page/view/login_page.dart';
import 'package:focusapp/src/features/presentation/metrics_list/view/metrics_list_page.dart';
import 'package:focusapp/src/features/presentation/new_game_page/new_game_page.dart';
import 'package:focusapp/src/features/presentation/recoveries_losses/view/recoveries_losses_page.dart';
import 'package:focusapp/src/features/presentation/sign_up_page/view/sign_up_page.dart';
import 'package:focusapp/src/features/presentation/team_attack/view/team_attack.dart';
import 'package:focusapp/src/features/presentation/team_defense/view/team_defense.dart';
import 'package:focusapp/src/features/presentation/welcome_page/view/welcome_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        supportedLocales: [
          const Locale('en'), // Inglés
          const Locale('es'), // Español
        ],
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => WelcomePage(),
          '/login': (context) => LoginPage(),
          '/forgot-password': (context) => ForgotPasswordPage(),
          '/sign-up': (context) => SignUpPage(),
          '/mainPage': (context) => MainPage(),
          '/teamAttack': (context) => TeamAttackPage(),
          '/ballRecoveries': (context) => BallRecoveriesPage(),
          '/ballLosses': (context) => BallLossesPage(),
          '/ballRecoveriesAndLosses': (context) =>
              BallRecoveriesAndLossesPage(),
          '/teamDefense': (context) => TeamDefensePage(),
          '/completeTeam': (context) => CompleteTeamPage(),
          '/firstMenuPage': (context) => FirstMenuPage(),
          '/newGamePage': (context) => NewGamePage(),
          '/newGameMetricsListPage': (context) => NewGameMetricsListPage(),
          '/metricsChartsPage': (context) => MetricsChartsPage()
        },
        theme: ThemeData(
            accentColor: Color.fromRGBO(144, 169, 85, 1.0),
            primaryColor: Color.fromRGBO(10, 31, 68, 1.0),
            buttonColor: Color.fromRGBO(0, 122, 255, 1.0),
            disabledColor: Color.fromRGBO(142, 142, 147, 1.2),
            scaffoldBackgroundColor: Colors.white,
            appBarTheme:
                AppBarTheme(iconTheme: IconThemeData(color: Colors.black))));
  }
}
