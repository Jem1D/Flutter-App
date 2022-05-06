import 'package:first_app/utils/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  final url =
      "https://www.pockettactics.com/wp-content/uploads/2021/02/among-us-logo.jpg";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                decoration: BoxDecoration(color: Colors.deepPurple),
                accountName: Text(
                  "Jemil",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                accountEmail: Text(
                  "Abc@gmail.com",
                  style: TextStyle(fontSize: 18),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(url),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text(
                "Email me",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.login);
              },
              leading: Icon(
                CupertinoIcons.back,
                color: Colors.white,
              ),
              title: Text(
                "login Page",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
