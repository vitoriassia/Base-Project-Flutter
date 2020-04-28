import 'package:app/views/loginView/login.view.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'constant.dart';
import 'locator.dart';
import 'stores/user.store.dart';
//bool _isAuthenticated = false;
//UserService _userService;

void main() async {
  setupLocator();
  WidgetsFlutterBinding.ensureInitialized();
  //_userService = UserService();
  //_isAuthenticated = await _userService.isAuthenticated();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => UserStore()),
      ],
      child: MaterialApp(
        localizationsDelegates: [
          // ... app-specific localization delegate[s] here
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: [
          const Locale('en'), // English
          const Locale('pt'), // brasil
        ],
        routes: {
          LoginView.id: (context) => LoginView(),
        },
        title: kAppTitle,
        theme: defaultThemeData,
        onGenerateRoute: (RouteSettings settings) {
          // switch (settings.name) {
          //   case '/':
          //   case BookingScreen.id:
          //     return MaterialPageRoute(builder: (_) {
          //       return _isAuthenticated
          //           ? acess == '3' ? AdminScreen() :
          //           ? RedirectUserType()
          //           : LoginScreen();
          //     });
          //   case LoginScreen.id:
          return MaterialPageRoute(builder: (_) => LoginView());
        },
      ),
    );
  }
}