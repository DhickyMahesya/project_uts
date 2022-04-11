import 'screen_route/inbox.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          )
        ],
        backgroundColor: Colors.black54,
      ),
      drawer: drawerPage(),
      body: Container(
        alignment: Alignment.center,
        child: Text(
          "Selamat Datang",
          style: TextStyle(
            color: Colors.white,
            fontSize: 50,
          ),
        ),
      ),
    );
  }
}

class drawerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(padding: EdgeInsets.zero, children: <Widget>[
        _drawerHeader(),
        _drawerItem(
            icon: Icons.all_inbox,
            text: 'Inbox',
            onTap: () => {
                  {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => inbox()),
                    ),
                  }
                }),
        _drawerItem(
            icon: Icons.send,
            text: 'Outbox',
            onTap: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => outbox()),
                  ),
                }),
        _drawerItem(
            icon: Icons.access_time_sharp,
            text: 'Spam',
            onTap: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => spam()),
                  ),
                }),
        _drawerItem(
            icon: Icons.forum,
            text: 'Forums',
            onTap: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => forum()),
                  ),
                }),
        _drawerItem(
            icon: Icons.feedback,
            text: 'promos',
            onTap: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => promo()),
                  ),
                }),
      ]),
    );
  }

  Widget _drawerHeader() {
    return UserAccountsDrawerHeader(
        currentAccountPicture: ClipOval(
          child: Image(image: AssetImage('asset/image/profile.png'), fit: BoxFit.cover),
        ),
        accountName: Text('DHICKY MAHESYA TEGAR SURYA PRAMANA'),
        accountEmail: Text('dhivanipramana19@gmail.com'),
        decoration: const BoxDecoration(
          color: Colors.black54,
        ));
  }

  Widget _drawerItem({required IconData icon, required String text, required GestureTapCallback onTap}) {
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
}

class outbox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OutBox'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () => {},
          ),
        ],
      ),
      body: Center(
        child: Text('You are on the OutBox Page', style: TextStyle(fontSize: 20)),
      ),
    );
  }
}

class spam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Spam'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () => {},
            ),
          ],
        ),
        body: Center(
          child: Text("You are on the Spam Page", style: TextStyle(fontSize: 20)),
        ));
  }
}

class forum extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Forums'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () => {},
            ),
          ],
        ),
        body: Center(
          child: Text("You are on the Forum's Page", style: TextStyle(fontSize: 20)),
        ));
  }
}

class promo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Promos'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () => {},
          ),
        ],
      ),
      body: Center(
        child: Text("You are on the Forum's Page", style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
