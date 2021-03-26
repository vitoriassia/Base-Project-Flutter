import 'package:app/screens/profile/widgets/profile_card.dart';
import 'package:app/sharedWidgets/default_scaffold.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  static const id = 'profile_screen';
  @override
  Widget build(BuildContext context) {
    //var store = Provider.of<UserStore>(context);

    return DefaultScaffold(
      body: Center(child: ProfileCard()),
    );
  }
}
