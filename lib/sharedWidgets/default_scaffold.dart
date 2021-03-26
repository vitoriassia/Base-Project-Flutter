import 'package:app/sharedWidgets/drawer_menu.dart';
import 'package:flutter/material.dart';

class DefaultScaffold extends StatelessWidget {
  final Widget body;
  final List<Widget> children;
  final String screen;

  const DefaultScaffold({Key key, this.body, this.screen, this.children})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        DefaultTabController(
          length: 7,
          child: Scaffold(
            drawer: DrawerMenu(),
            appBar: AppBar(
              centerTitle: true,
              elevation: 0.0,
              iconTheme: Theme.of(context).iconTheme,
              backgroundColor: Colors.white,
              title: Image.asset(
                'assets/icons/logo_principal.png',
                fit: BoxFit.cover,
                height: 55,
              ),
              actions: <Widget>[
                IconButton(
                    icon: Icon(
                      screen == 'notification'
                          ? Icons.close
                          : false
                              ? Icons.notifications_active
                              : Icons.notifications_none,
                      size: 30,
                    ),
                    onPressed: screen == 'notification'
                        ? () {
                            // navegationBack(context: context);
                          }
                        : () {
                            //   navegationTo(
                            //       context: context, page: NotificationsScreen.id);
                          })
              ],
            ),
            body: Container(
              color: Colors.grey[100],
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: body,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
