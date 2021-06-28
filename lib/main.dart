import 'package:flutter/material.dart';
import 'screens/home.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        title: Text('E-LEARNING SITE'),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 5.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('You are currently using guest access'),

                TextButton(
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Login(),
                        ),
                    );
                  },
                  child: Text("Login"),
                //SizedBox(height: 70.0, width: 20.0),

                ),
              ],
            ),

            CircleAvatar(
              backgroundImage: AssetImage('assets/elearning.jpg'),
              radius: 80.0,
            ),
          ],

        ),
      ),
    );
  }
}

class NavDrawer extends StatelessWidget {
  const NavDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          /*DrawerHeader(
              child: Text('Side Menu'),
            decoration: BoxDecoration(
              color: Colors.green,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(''),
              ),
            ),
          ),*/
          ListTile(
            leading: Icon(
              Icons.cancel,
              color: Colors.white,
              size: 30.0,
            ),
            //focusColor: Colors.blue,
            //hoverColor: Colors.blue,
            tileColor: Colors.blue,
            //selectedTileColor: Colors.blue,
            onTap: () => {Navigator.of(context).pop()},
          ),

          ListTile(
            leading: Icon(Icons.water_damage_outlined),
            title: Text('Home'),
            onTap: () => {},
          ),

          ListTile(
            leading: Icon(Icons.add_call),
            title: Text('Contact Us'),
            onTap: () => {Navigator.of(context).pop()},
          ),

          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () => {Navigator.of(context).pop()},
          ),

          ListTile(
            leading: Icon(Icons.add_box_outlined),
            title: Text('Subscribe'),
            onTap: () => {Navigator.of(context).pop()},
          ),

          ListTile(
            leading: Icon(Icons.account_box),
            title: Text('SignUp'),
            onTap: () => {
              Navigator.push(
            context,
            MaterialPageRoute(
            builder: (context) => Login(),
            ),
              ),
            },
          ),

          ListTile(
            leading: Icon(Icons.weekend_outlined),
            title: Text('About Us'),
            onTap: () => {Navigator.of(context).pop()},
          ),

          ListTile(
            leading: Icon(Icons.account_balance_wallet_sharp),
            title: Text('Site Announcements'),
            onTap: () => {Navigator.of(context).pop()},
          ),

          ListTile(
            leading: Icon(Icons.calendar_today_outlined),
            title: Text('Calendar'),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}