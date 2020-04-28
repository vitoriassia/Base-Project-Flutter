import 'package:app/stores/user.store.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'drawer.item.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userModel = Provider.of<UserStore>(context).user;
    return Container(
      width: 280,
      child: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: Container(
          padding: EdgeInsets.all(10),
          color: Colors.grey[200],
          child: Column(
            children: <Widget>[
              Expanded(
                child: ListView(
                  // Important: Remove any padding from the ListView.
                  padding: EdgeInsets.zero,
                  children: <Widget>[
                    UserAccountsDrawerHeader(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius:
                                30.0, // has the effect of softening the shadow
                            spreadRadius:
                                5.0, // has the effect of extending the shadow
                            offset: Offset(
                              10.0, // horizontal, move right 10
                              10.0, // vertical, move down 10
                            ),
                          )
                        ],
                        borderRadius: new BorderRadius.only(
                          bottomLeft: new Radius.circular(20.0),
                          bottomRight: new Radius.circular(20.0),
                        ),
                        color: Colors.white,
                      ),
                      accountName: Text(
                        userModel.name,
                        style: TextStyle(color: Colors.black),
                      ),
                      accountEmail: Text(
                        userModel.email,
                        style: TextStyle(color: Colors.black),
                      ),
                      currentAccountPicture: CircleAvatar(
                        radius: 10.0,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage('assets/dude.jpg'),
                      ),
                    ),
                    DrawerItem(
                      icon: Icons.home,
                      text: 'Home',
                      onTap: () {
                        // if (ModalRoute.of(context).settings.name ==
                        //     'home.screen') {
                        //   Navigator.pop(context);
                        // } else {
                        //  navegationTo(context: context, page: HomeView.id);
                        // }
                        // Navigator.pushNamed(context, ContactUsView.id);
                      },
                    ),
                    DrawerItem(
                      icon: Icons.person,
                      text: 'Perfil',
                      onTap: () {
                        // if (ModalRoute.of(context).settings.name ==
                        //     'profile.screen') {
                        //   Navigator.pop(context);
                        // } else {
                        //   navegationTo(context: context, page: ProfileView.id);
                        // }
                      },
                    ),
                    DrawerItem(
                      icon: Icons.collections_bookmark,
                      text: 'Minha Reserva',
                      onTap: () {
                        // if (ModalRoute.of(context).settings.name ==
                        //     'meeting.screen') {
                        //   Navigator.pop(context);
                        // } else {
                        //   navegationTo(
                        //       context: context, page: ListMeetingView.id);
                        // }
                      },
                    ),
                    DrawerItem(
                      icon: Icons.group,
                      text: 'Meus Grupos',
                      onTap: () {
                        // if (ModalRoute.of(context).settings.name ==
                        //     'group.screen') {
                        //   Navigator.pop(context);
                        // } else {
                        //   navegationTo(context: context, page: GroupView.id);
                        // }
                      },
                    ),
                  ],
                ),
              ),
              DrawerItem(
                icon: Icons.exit_to_app,
                text: 'Sair',
                onTap: () {
                  Navigator.pop(context);

                  // Navigator.pushNamedAndRemoveUntil(
                  //   context,
                  //   StartView.id,
                  //   (r) => false,
                  // );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
