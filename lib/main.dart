import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Row(
            children: [
              Text(
                'sharaf.j.tibi',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                ),
              ),
              Icon(Icons.keyboard_arrow_down),
              SizedBox(
                width: 150.0,
              ),
              Icon(
                Icons.add,
              ),
            ],
          ),
        ),
        endDrawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text(
                  'Drawer Header',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.message),
                title: Text('Messages'),
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Profile'),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.black,
        body: SingleChildScrollView(child: MyPage()),
        bottomNavigationBar: Container(
          height: 54.0,
          child: BottomNavigationBar(
            backgroundColor: Colors.black,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                  size: 24.0,
                  color: Colors.white,
                ),
                title: Text("Route2"),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  size: 24.0,
                  color: Colors.white,
                ),
                title: Text("Route2"),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.add_box_outlined,
                  size: 24.0,
                  color: Colors.white,
                ),
                title: Text("Route2"),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite_border,
                  size: 24.0,
                  color: Colors.white,
                ),
                title: Text("Route2"),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.account_circle,
                  size: 24.0,
                  color: Colors.white,
                ),
                title: Text("Route2"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            'View Professional Resources',
            style: TextStyle(
              color: Colors.blue,
              letterSpacing: 1.0,
            ),
          ),
        ),
        Divider(
          color: Colors.grey[800],
        ),
        Padding(
          padding: EdgeInsets.only(right: 20.0, top: 3.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                radius: 44.0,
                backgroundColor: Colors.orange[500],
                child: CircleAvatar(
                  radius: 41,
                  backgroundImage: AssetImage("images/logo.jpeg"),
                ),
              ),
              Column(
                children: [
                  Text(
                    '73',
                    style:
                        TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 4.0,
                  ),
                  Text(
                    'Posts',
                    style: TextStyle(fontSize: 15.0),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    '6,016',
                    style:
                        TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 4.0,
                  ),
                  Text(
                    'Followers',
                    style: TextStyle(fontSize: 15.0),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    '2,048',
                    style:
                        TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 4.0,
                  ),
                  Text(
                    'Following',
                    style: TextStyle(fontSize: 15.0),
                  )
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 5.0,
        ),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 15.0, top: 3.0),
              child: Text(
                'Sharaf Tibi || شرف الطيبي',
                style: TextStyle(
                  letterSpacing: 1.0,
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Row(
            children: [
              Text(
                'Writer',
                style: TextStyle(
                  letterSpacing: 1.0,
                  fontSize: 17.0,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 15.0),
          child: Row(
            children: [
              Text(
                'COMPUTER SYSTEMS ENGINEERING AT AUG.\nTHE AMBITITION OF WRITER.',
                style: TextStyle(
                  letterSpacing: 1.0,
                  fontSize: 15.0,
                  fontWeight: FontWeight.w500,
                  fontFamily: ('Ubuntu'),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        OutlineButton(
          onPressed: () {
            print('Received click');
          },
          child: Text(
            "Edit Profile",
            style: TextStyle(
              letterSpacing: 1.0,
            ),
          ),
          padding: EdgeInsets.symmetric(horizontal: 150.0),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            OutlineButton(
              onPressed: () {
                print('Button Clicked');
              },
              child: Text(
                "Promotions",
                style: TextStyle(
                  letterSpacing: 1.0,
                ),
              ),
              padding: EdgeInsets.symmetric(horizontal: 20.0),
            ),
            OutlineButton(
              onPressed: () {
                print('Button Clicked');
              },
              child: Text(
                "Insighte",
                style: TextStyle(
                  letterSpacing: 1.0,
                ),
              ),
              textColor: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 30.0),
            ),
            OutlineButton(
              onPressed: () {
                print('Button Clicked');
              },
              child: Text(
                "Contact",
                style: TextStyle(
                  letterSpacing: 1.0,
                ),
              ),
              padding: EdgeInsets.symmetric(horizontal: 30.0),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  CircleAvatar(
                    radius: 30.0,
                    backgroundColor: Colors.grey[500],
                    child: CircleAvatar(
                      radius: 28,
                      backgroundImage: AssetImage("images/5.jpeg"),
                    ),
                  ),
                  Text('My writings')
                ],
              ),
              Column(
                children: [
                  CircleAvatar(
                    radius: 30.0,
                    backgroundColor: Colors.grey[500],
                    child: CircleAvatar(
                      radius: 28,
                      backgroundImage: AssetImage("images/2.jpeg"),
                    ),
                  ),
                  Text('داخل المطار')
                ],
              ),
              Column(
                children: [
                  CircleAvatar(
                    radius: 30.0,
                    backgroundColor: Colors.grey[500],
                    child: CircleAvatar(
                      radius: 28,
                      backgroundImage: AssetImage("images/3.jpeg"),
                    ),
                  ),
                  Text('اللهم رجعة')
                ],
              ),
              Column(
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 30.0,
                        backgroundColor: Colors.grey[500],
                        child: CircleAvatar(
                          radius: 28,
                          backgroundImage: AssetImage("images/4.jpeg"),
                        ),
                      ),
                      Text('يا مسهل')
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 30.0,
                        backgroundColor: Colors.grey[800],
                        child: CircleAvatar(
                          radius: 29,
                          child: Icon(Icons.add),
                        ),
                      ),
                      Text('New')
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.grid_view),
            Icon(Icons.live_tv),
            Icon(Icons.person_pin_outlined),
          ],
        ),
        SizedBox(
          height: 8.0,
        ),
        Container(
          height: 410.0,
          // color: Colors.blue,
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 2.5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image(
                        height: 132.0,
                        width: 132.0,
                        fit: BoxFit.cover,
                        image: AssetImage('images/1.jpeg'),
                      ),
                      Image(
                        height: 132.0,
                        width: 132.0,
                        fit: BoxFit.cover,
                        image: AssetImage('images/5.jpeg'),
                      ),
                      Image(
                        height: 132.0,
                        width: 132.0,
                        fit: BoxFit.cover,
                        image: AssetImage('images/6.jpeg'),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 2.5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image(
                        height: 132.0,
                        width: 132.0,
                        fit: BoxFit.cover,
                        image: AssetImage('images/6.jpeg'),
                      ),
                      Image(
                        height: 132.0,
                        width: 132.0,
                        fit: BoxFit.cover,
                        image: AssetImage('images/3.jpeg'),
                      ),
                      Image(
                        height: 132.0,
                        width: 132.0,
                        fit: BoxFit.cover,
                        image: AssetImage('images/2.jpeg'),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 2.5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image(
                        height: 132.0,
                        width: 132.0,
                        fit: BoxFit.cover,
                        image: AssetImage('images/5.jpeg'),
                      ),
                      Image(
                        height: 132.0,
                        width: 132.0,
                        fit: BoxFit.cover,
                        image: AssetImage('images/6.jpeg'),
                      ),
                      Image(
                        height: 132.0,
                        width: 132.0,
                        fit: BoxFit.cover,
                        image: AssetImage('images/1.jpeg'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
