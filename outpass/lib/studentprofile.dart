import 'package:flutter/material.dart';
import 'package:outpass/student.dart';

class studentprofile extends StatefulWidget {
  const studentprofile({Key? key}) : super(key: key);

  @override
  State<studentprofile> createState() => _studentprofileState();
}

class _studentprofileState extends State<studentprofile> {
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
                      'Student Name',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Text(
                      'studentemail@iiitdwd.ac.in',
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
              text: 'Outpass Form',
              icon: Icons.notifications_on,
              onclicked: () => selectedItem(context, 1),
            ),
            buildMenuItem(
              text: 'Faculty Advisor',
              icon: Icons.people_alt_rounded,
              onclicked: () => selectedItem(context, 2),
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
        MaterialPageRoute(builder: (context) => const studentprofile()),
      );
      break;
    case 1:
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const outpassrequest()),
      );
      break;
    case 2:
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const facultyadvisor()),
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
        MaterialPageRoute(builder: (context) => const student()),
      );
      break;
  }
}

class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
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
                    width: 10,
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
                    'Student Name',
                    style: TextStyle(fontSize: 25),
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Container(
                    child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: 30,
                      child: TextButton(
                        child: Image(
                          image: AssetImage(
                            'images/qrcode.png',
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => qr()),
                          );
                        },
                      ),
                    ),
                  )
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
                              '>Warden\'s Approval Pending\n   Applied on:2/07/2022',
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
                                    builder: (context) => history()),
                              );
                            },
                            child: Text(
                              '> Faculty Advisor Approved\n   Recieved on:1/07/2022',
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
                              child: Text(
                                  '>Faculty Advisor: Student ABC, your Outpass has been approved by me and has been forwarded for Warden\'s approval',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.black)),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => outpassrequest()),
                                );
                              },
                              child: Text(
                                  '>Warden: Student ABC, please meet me in my office on monday regarding your outpass request',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.black)),
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

class outpassrequest extends StatefulWidget {
  const outpassrequest({Key? key}) : super(key: key);

  @override
  State<outpassrequest> createState() => _outpassrequestState();
}

class _outpassrequestState extends State<outpassrequest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(50, 75, 205, 1),
        title: Text('Outpass'),
      ),
    );
  }
}

class facultyadvisor extends StatefulWidget {
  const facultyadvisor({Key? key}) : super(key: key);

  @override
  State<facultyadvisor> createState() => _facultyadvisorState();
}

class _facultyadvisorState extends State<facultyadvisor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(50, 75, 205, 1),
        title: Text('Faculty Advisor'),
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

class qr extends StatelessWidget {
  const qr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image(
        image: AssetImage('images/qrcode.png'),
      ),
    );
  }
}
