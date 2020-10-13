import 'package:faRcO/Screens/herocard.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class loginB extends StatefulWidget {
  @override
  _loginBState createState() => _loginBState();
}

class _loginBState extends State<loginB> {
  @override
  Widget build(BuildContext context) {
    final drawerHeader = UserAccountsDrawerHeader(
      accountName: Text('User Name'),
      accountEmail: Text('user.name@email.com'),
      currentAccountPicture: CircleAvatar(
        child: FlutterLogo(size: 42.0),
        backgroundColor: Colors.white,
      ),
      otherAccountsPictures: <Widget>[
        CircleAvatar(
          child: Text('A'),
          backgroundColor: Colors.yellow,
        ),
        CircleAvatar(
          child: Text('B'),
          backgroundColor: Colors.red,
        )
      ],
    );
    final drawerItems = ListView(
      children: <Widget>[
        drawerHeader,
        ListTile(
          title: Text('To page 1'),
          onTap: () => {},
        ),
        ListTile(
          title: Text('To page 2'),
          onTap: () => {},
        ),
        ListTile(
          title: Text('other drawer item'),
          onTap: () {},
        ),
      ],
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      drawer: Drawer(
        elevation: 23,
        semanticLabel: 'Dashboard',
        child: drawerItems,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                child: Text(
                  'Details about Borrower',
                  style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
            ),
            Expanded(child: hero()),
          ],
        ),
      ),
    );
  }
}

class loginL extends StatefulWidget {
  @override
  _loginLState createState() => _loginLState();
}

class _loginLState extends State<loginL> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Dashboard',
          style: GoogleFonts.averageSans(
              fontSize: 35, fontStyle: FontStyle.italic, color: Colors.brown),
        ),
        backgroundColor: Colors.brown.shade200,
        elevation: 23,
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  'Profile',
                  style: GoogleFonts.secularOne(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3),
                ),
              ),
            ),
            Expanded(child: hero1()),
          ],
        ),
      ),
    );
  }
}
