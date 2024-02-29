import 'package:demo/pages/social_pages/facebook.dart';
import 'package:demo/pages/social_pages/instagram.dart';
import 'package:demo/pages/social_pages/twitter.dart';
import 'package:flutter/material.dart';

class IndexPage extends StatelessWidget {
  const IndexPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Social Engage", style: TextStyle(fontSize: 20),),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),
      drawer: Drawer(
        backgroundColor: Colors.pink[100],
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            DrawerHeader(
                child: Icon(
              Icons.laptop,
              size: 48,
              color: Colors.pink,
            )),

            // home page list tile
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.pink[400],
              ),
              title: Text('H O M E'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/home');
              },
            ),

            // settings page list tile
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.pink[400],
              ),
              title: Text('S E T T I N G S'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/settings');
              },
            ),
          ],
        ),
      ),
      body: PageView(
        children: [
          Facebook(),
          Twitter(),
          Instagram()
        ],
      ),
    );
  }
}
