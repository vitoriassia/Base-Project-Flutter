import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
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
    );
  }
}
