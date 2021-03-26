import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback onTap;

  const DrawerItem({
    Key key,
    this.icon,
    this.text,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(
          icon,
          size: 22.0,
        ),
        title: Text(
          text,
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 15.0,
          ),
        ),
        onTap: onTap,
      ),
    );
  }
}
