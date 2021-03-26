import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
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
    );
  }
}
