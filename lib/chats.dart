import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Chats extends StatelessWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (_) {
          _.disallowGlow();
          return true;
        },
        child: ListView(
          children: [
            SizedBox(
              height: 10,
            ),
            ListTile(
                leading: Stack(
                  alignment: AlignmentDirectional.bottomEnd,
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5fGKks_ZOlVCtiZQV6ETawu9L0xk74WbsvQ&usqp=CAU"),
                      radius: 30,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.green,
                      radius: 10,
                      child: Icon(
                        Icons.add,
                        size: 20,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "My status",
                      style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Tap to add status update",
                      style: TextStyle(color: Colors.grey.shade700),
                    ),
                  ],
                )),
            SizedBox(
              height: 10,
            ),
            getContainer("Recent updates"),
            SizedBox(
              height: 10,
            ),
            getStory("Sasuke", "Just now"),
            getStory("Ronaldo", "Today, 2:8 pm"),
            getStory("Moh salah", "6 minutes ago"),
            getStory("Rossi", "25 minutes ago"),
            getStory("Torres", "Yestrday, 8:45 pm"),
            getStory("Omar Hassan", "Yestrday, 5:5 Am"),
            SizedBox(
              height: 10,
            ),
            getContainer("Viewed updates"),
            SizedBox(
              height: 10,
            ),
            getStory("Hassan fares", "25 minutes ago"),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage("https://asset.kompas.com/crops/-EE26_TNXjiiiz5NP-cvLblAJX4=/0x0:946x631/750x500/data/photo/2020/09/23/5f6ab981c74e4.jpg"),
                radius: 30,
              ),
              title: Text(
                "Carlos",
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
              ),
              subtitle: Text("Today, 2:54 pm"),
            ),
            SizedBox(
              height: 10,
            ),
            getContainer("Muted updets"),
            SizedBox(
              height: 10,
            ),
            getStory("Karim Ayman", "54 minutes ago"),
            getStory("Hady Nasr", "15 minutes ago"),
            getStory("Hager Ahmed", "Yestrday, 5:5 Am"),
          ],
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {},
        child: Icon(
          Icons.chat_bubble,
          color: Colors.white,
        ),
      ),
    );
  }
}
