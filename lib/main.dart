import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Text('WhatsApp'),
            backgroundColor: Colors.green,

            actions: [
              IconButton(
                onPressed: () {
                  print("Search tapped");
                },
                icon: Icon(Icons.search),
              ),
              IconButton(
                onPressed: () {
                  print("Chat icon tapped");
                },
                icon: Icon(Icons.chat),
              ),
              IconButton(
                onPressed: () {
                  print("call tapped");
                },
                icon: Icon(Icons.call),
              ),
            ],
            bottom: TabBar(
              tabs: [
                Tab(text: "status"),
                Tab(text: "Chats"),
                Tab(text: "Calls"),
              ],
            ),
          ),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
                  decoration: BoxDecoration(color: Colors.grey),
                  child: Text(
                    "Pambaniso Bongi",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.home_filled),
                  title: Text("Account"),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text("Settings"),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.help_center),
                  title: Text("Help"),
                  onTap: () {},
                ),
              ],
            ),
          ),
          body: ListView(
            children: [
              ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage("assets/profile1.jpg"),
                ),
                title: Text(
                  "Jessica",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "Ka theowela ka 10",
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ),
              Divider(),
              ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage("assets/profile2.jpg"),
                ),
                title: Text(
                  "Bobe",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "Hareye KFC",
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ),
              Divider(),
              ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage("assets/profile3.jpg"),
                ),
                title: Text(
                  "daki",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "Apply moo",
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ),
              Divider(),
              ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage("assets/profile2.jpg"),
                ),
                title: Text(
                  "Mmami",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "Aya o hopotse Nono",
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ),
              Divider(),
              ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage("assets/profile3.jpg"),
                ),
                title: Text(
                  "Papa",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "Send hee fast",
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ),
              Divider(),
              ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage("assets/profile3.jpg"),
                ),
                title: Text(
                  "Malefu",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "ke Welkom",
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
