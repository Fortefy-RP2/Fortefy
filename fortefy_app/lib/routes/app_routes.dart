import 'package:flutter/material.dart';
import '../presentation/agendamento_screen/agendamento_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/cadastro_aluno_screen/cadastro_aluno_screen.dart';
import '../presentation/cadastro_personal_screen/cadastro_personal_screen.dart';
import '../presentation/cadastro_screen/cadastro_screen.dart';
import '../presentation/home_screen/home_screen.dart';
import '../presentation/login_screen/login_screen.dart';
import '../presentation/search_personal_screen/search_personal_screen.dart';
import '../presentation/search_screen/search_screen.dart';
import '../presentation/splash_screen/splash_screen.dart';


class AppRoutes {
  static const String agendamentoScreen = '/agendamento_screen';

  static const String searchPersonalScreen = '/search_personal_screen';

  static const String searchPersonalInitialPage =
      '/search_personal_initial_page';

  static const String cadastroScreen = '/cadastro_screen';

  static const String loginScreen = '/login_screen';

  static const String homeScreen = '/home_screen';

  static const String searchScreen = '/search_screen';

  static const String cadastroAlunoScreen = '/cadastro_aluno_screen';

  static const String splashScreen = '/splash_screen';

  static const String cadastroPersonalScreen = '/cadastro_personal_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    agendamentoScreen: (context) => AgendamentoScreen(),
    searchPersonalScreen: (context) => SearchPersonalScreen(),
    cadastroScreen: (context) => CadastroScreen(),
    loginScreen: (context) => LoginScreen(),
    homeScreen: (context) => HomeScreen(),
    searchScreen: (context) => SearchScreen(),
    cadastroAlunoScreen: (context) => CadastroAlunoScreen(),
    splashScreen: (context) => SplashScreen(),
    cadastroPersonalScreen: (context) => CadastroPersonalScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    initialRoute: (context) => SplashScreen()
  };
}