import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Chats extends StatelessWidget {
  const Chats({Key? key}) : super(key: key);

  Widget getChats(name, message, time) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage("https://i.ibb.co/80szBpR/fatwa.jpg"),
        radius: 30,
      ),
      title: Column(
        children: [
          Text(
            name,
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
          ),
        ],
      ),
      subtitle: Text(message),
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
            // getContainer("Recent updates"),
            SizedBox(
              height: 10,
            ),
            getChats("Nanda", "Halo Fatwa", "11.23"),
            getChats("Dio", "wkk siap", "11.23"),
            getChats("Mz Aang", "suwon fat", "11.23"),
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
