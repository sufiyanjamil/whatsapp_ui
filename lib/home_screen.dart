import 'package:flutter/material.dart';

class home_screen extends StatelessWidget {
  const home_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            Icon(Icons.search),
            SizedBox(
              width: 10,
            ),
            PopupMenuButton(
              icon: Icon(Icons.more_horiz_outlined),
              itemBuilder: (context) => [
                PopupMenuItem(
                  child: Text("New Group"),
                  value: '1',
                ),
                PopupMenuItem(
                  child: Text("Settings"),
                  value: '2',
                ),
                PopupMenuItem(
                  child: Text("Linked Devices"),
                  value: '3',
                ),
                PopupMenuItem(
                  child: Text("LogOut"),
                  value: '4',
                ),
              ],
            ),
            SizedBox(
              width: 10,
            )
          ],
          centerTitle: false,
          title: Text("Whatsapp"),
          bottom: TabBar(
            indicatorWeight: 4.0,
            indicatorSize: TabBarIndicatorSize.label,
            tabs: [
              Tab(
                child: Icon(Icons.camera_alt),
              ),
              Tab(
                child: Text("Chats"),
              ),
              Tab(
                child: Text("Status"),
              ),
              Tab(child: Text("Calls")),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Text("Camera"),
            ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text("John Wick"),
                  trailing: Text("6:59 pm"),
                  subtitle: Text("Where is my dog?"),
                  leading: CircleAvatar(
                      radius: 20,
                      backgroundImage: NetworkImage(
                          "https://w0.peakpx.com/wallpaper/81/150/HD-wallpaper-islamic-hijab-girl-anime-girl-hijab-girl-islamic.jpg")),
                );
              },
            ),
            ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text("John Wick"),
                  subtitle: Text("35m ago"),
                  leading: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.green,
                        width: 3,
                      ),
                    ),
                    child: CircleAvatar(
                        radius: 20,
                        backgroundImage: NetworkImage(
                            "https://w0.peakpx.com/wallpaper/81/150/HD-wallpaper-islamic-hijab-girl-anime-girl-hijab-girl-islamic.jpg")),
                  ),
                );
              },
            ),
            ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text("John Wick"),
                  trailing: Icon(
                    Icons.call_outlined,
                    color: Colors.teal,
                  ),
                  subtitle: Text("->(2) February 23,11:47 PM"),
                  leading: CircleAvatar(
                      radius: 20,
                      backgroundImage: NetworkImage(
                          "https://w0.peakpx.com/wallpaper/81/150/HD-wallpaper-islamic-hijab-girl-anime-girl-hijab-girl-islamic.jpg")),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
