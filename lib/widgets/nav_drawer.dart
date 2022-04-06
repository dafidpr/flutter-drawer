import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          _drawerHeader(),
          _drawerItem(
            icon: Icons.camera_alt,
            text: 'Camera',
            onTap: () {
              DefaultTabController.of(context)?.animateTo(0);
              Navigator.pop(context);
            },
          ),
          _drawerItem(
            icon: Icons.message,
            text: 'Chat',
            onTap: () {
              DefaultTabController.of(context)?.animateTo(1);
              Navigator.pop(context);
            },
          ),
          _drawerItem(
            icon: Icons.access_time,
            text: 'Status',
            onTap: () {
              DefaultTabController.of(context)?.animateTo(2);
              Navigator.pop(context);
            },
          ),
          _drawerItem(
            icon: Icons.call,
            text: 'Calls',
            onTap: () {
              DefaultTabController.of(context)?.animateTo(3);
              Navigator.pop(context);
            },
          ),
          Divider(
            height: 25,
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
            child: Text(
              'Setting',
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
          ),
          _drawerItem(
            icon: Icons.settings,
            text: 'Pengaturan',
            onTap: () => print('Tap to Setting Menu'),
          ),
          _drawerItem(
            icon: Icons.logout,
            text: 'Logout',
            onTap: () => print('Tap to Logout'),
          ),
        ],
      ),
    );
  }
}

Widget _drawerHeader() {
  return UserAccountsDrawerHeader(
    currentAccountPicture: ClipOval(
      child: Image(
          image: NetworkImage(
              'https://images.unsplash.com/photo-1628157588553-5eeea00af15c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80'),
          fit: BoxFit.cover),
    ),
    accountName: Text('Dafid Prasetyo'),
    accountEmail: Text('dafid@webmediadigital.com'),
  );
}

Widget _drawerItem(
    {required IconData icon,
    required String text,
    required GestureTapCallback onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(icon),
        Padding(
          padding: EdgeInsets.only(left: 25.0),
          child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ),
    onTap: onTap,
  );
}
