import 'package:app/sharedWidgets/default_scaffold.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  static const id = 'profile_screen';
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
                  Icons.person,
                  size: 70,
                ),
                Text(
                  'Profile Screen',
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
