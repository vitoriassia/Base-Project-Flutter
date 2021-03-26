import 'package:app/sharedWidgets/default_scaffold.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  static const id = 'home.screen';
  @override
  Widget build(BuildContext context) {
    //var store = Provider.of<UserStore>(context);

    return DefaultScaffold(
      body: Center(
        child: Card(
          child: Container(
            width: 200,
            height: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.home,
                  size: 70,
                ),
                Text(
                  'Home Screen',
                  style: Theme.of(context).textTheme.headline6,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
