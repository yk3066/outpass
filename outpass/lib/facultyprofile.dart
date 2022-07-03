import 'package:flutter/material.dart';
import 'package:outpass/faculty.dart';
import 'package:outpass/qrscanner.dart';

class facultyprofile extends StatefulWidget {
  const facultyprofile({Key? key}) : super(key: key);

  @override
  State<facultyprofile> createState() => _facultyprofileState();
}

class _facultyprofileState extends State<facultyprofile> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: new AppBar(
        backgroundColor: Color.fromRGBO(50, 75, 205, 1),
        title: Text('Home'),
        leading: Builder(
          builder: (context) => IconButton(
            icon: new Icon(Icons.menu),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
      ),
      body: home(),
    );
  }
}

class NavigationDrawerWidget extends StatelessWidget {
  NavigationDrawerWidget({Key? key}) : super(key: key);
  final padding = EdgeInsets.symmetric(horizontal: 20);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Color.fromRGBO(50, 75, 205, 1),
        child: ListView(
          padding: padding,
          children: [
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 40,
                  child: Icon(
                    Icons.person_rounded,
                    color: Color.fromRGBO(50, 75, 205, 1),
                    size: 40,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Faculty Name',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Text(
                      'facultyemail@iiitdwd.ac.in',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.7,
                          fontStyle: FontStyle.italic),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 35,
            ),
            buildMenuItem(
              text: 'Home',
              icon: Icons.home_rounded,
              onclicked: () => selectedItem(context, 0),
            ),
            buildMenuItem(
              text: 'Outpass Requests',
              icon: Icons.notifications_on,
              onclicked: () => selectedItem(context, 1),
            ),
            buildMenuItem(
              text: 'Student',
              icon: Icons.people_alt_rounded,
              onclicked: () => selectedItem(context, 2),
            ),
            buildMenuItem(
              text: 'Scan QR',
              icon: Icons.qr_code_scanner_rounded,
              onclicked: () => selectedItem(context, 6),
            ),
            buildMenuItem(
              text: 'History',
              icon: Icons.check_circle_outline_rounded,
              onclicked: () => selectedItem(context, 3),
            ),
            buildMenuItem(
              text: 'Edit Profile',
              icon: Icons.manage_accounts,
              onclicked: () => selectedItem(context, 4),
            ),
            SizedBox(
              height: 24,
            ),
            Divider(
              color: Colors.white70,
            ),
            SizedBox(
              height: 40,
            ),
            buildMenuItem(
              text: 'Log out',
              icon: Icons.logout_rounded,
              onclicked: () => selectedItem(context, 5),
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildMenuItem({
  required String text,
  required IconData icon,
  VoidCallback? onclicked,
}) {
  final color = Colors.white;
  return ListTile(
    leading: Icon(icon, color: color),
    title: Text(
      text,
      style: TextStyle(
        color: color,
      ),
    ),
    onTap: onclicked,
  );
}

void selectedItem(BuildContext context, int index) {
  Navigator.of(context).pop();
  switch (index) {
    case 0:
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const facultyprofile()),
      );

      break;
    case 1:
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const requests()),
      );
      break;
    case 2:
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const students()),
      );
      break;
    case 3:
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const history()),
      );
      break;
    case 4:
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const profile()),
      );
      break;
    case 5:
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const faculty()),
      );
      break;
    case 6:
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => qrscanner()),
      );
      break;
  }
}

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
        body: ListView(
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            height: 130,
            child: Card(
              shadowColor: Color.fromRGBO(50, 75, 205, 1),
              elevation: 10,
              margin: EdgeInsets.symmetric(vertical: 1.0, horizontal: 7.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: 60,
                    child: Icon(
                      Icons.account_circle_sharp,
                      size: 100,
                    ),
                  ),
                  Text(
                    'Faculty Name',
                    style: TextStyle(fontSize: 25),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 300,
            child: Card(
                shadowColor: Color.fromRGBO(50, 75, 205, 1),
                elevation: 10,
                margin: EdgeInsets.symmetric(vertical: 1.0, horizontal: 7.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Approval Pending',
                        style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => history()),
                              );
                            },
                            child: Text(
                              '>Warden\'s Approval Pending\n   Applied on:29/06/2022',
                              style: TextStyle(
                                color: Colors.blueGrey,
                                fontStyle: FontStyle.italic,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => requests()),
                              );
                            },
                            child: Text(
                              '> XYZ\'s Approval Pending\n   Recieved on:1/07/2022',
                              style: TextStyle(
                                color: Colors.blueGrey,
                                fontStyle: FontStyle.italic,
                                fontSize: 18,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 200,
            child: Card(
                shadowColor: Color.fromRGBO(50, 75, 205, 1),
                elevation: 10,
                margin: EdgeInsets.symmetric(vertical: 1.0, horizontal: 7.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Feedback',
                          style: TextStyle(
                              fontStyle: FontStyle.italic,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Column(

                          children: [
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => history()),
                                );
                              },
                              child:Text('>Warden: Student ABC\'s Outpass has been approved. He has been allowed to leave the campus from 1st July to 7th July',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black
                              )),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => requests()),
                                );
                              },
                              child:Text('>XYZ: Sir, I have requested for my leave from the campus during my summer break. Please check the details and approve it',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.black
                                  )),
                            ),
                          ],
                        )
                      ]),
                )),
          ),
        ],
      ),
    );
  }
}

class requests extends StatefulWidget {
  const requests({Key? key}) : super(key: key);

  @override
  State<requests> createState() => _requestsState();
}

class _requestsState extends State<requests> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(50, 75, 205, 1),
        title: Text('Outpass Requests'),
      ),
    );
  }
}

class students extends StatefulWidget {
  const students({Key? key}) : super(key: key);

  @override
  State<students> createState() => _studentsState();
}

class _studentsState extends State<students> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(50, 75, 205, 1),
        title: Text('Students'),
      ),
    );
  }
}

class history extends StatefulWidget {
  const history({Key? key}) : super(key: key);

  @override
  State<history> createState() => _historyState();
}

class _historyState extends State<history> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(50, 75, 205, 1),
        title: Text('Approval History'),
      ),
    );
  }
}

class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(50, 75, 205, 1),
        title: Text('Edit Profile'),
      ),
      body: Container(),
    );
  }
}
