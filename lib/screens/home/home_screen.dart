import 'package:app/screens/home/widgets/home_card.dart';
import 'package:app/sharedWidgets/default_scaffold.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const id = 'home_screen';
  @override
  Widget build(BuildContext context) {
    //var store = Provider.of<UserStore>(context);

    return DefaultScaffold(
      body: Center(child: HomeCard()),
    );
  }
}
