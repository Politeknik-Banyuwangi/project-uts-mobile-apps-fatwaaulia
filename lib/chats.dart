import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Chats extends StatelessWidget {
  const Chats({Key? key}) : super(key: key);

  Widget getStory(title, subTitle) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage("https://i0.wp.com/www.cirebonkota.go.id/wp-content/uploads/2018/05/jokowi.jpg"),
        radius: 30,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
      ),
      subtitle: Text(subTitle),
    );
  }

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
                title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
            )),
            SizedBox(
              height: 10,
            ),
            // getContainer("Recent updates"),
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
