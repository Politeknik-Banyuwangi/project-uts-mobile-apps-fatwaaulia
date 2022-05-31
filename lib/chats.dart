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
      title: Row(
        children: [
          Text(
            name,
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
          ),
          Spacer(),
          Text(
            time,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w400,
              fontSize: 12,
            ),
          ),
        ],
      ),
      subtitle: Text(
        message,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w400,
          fontSize: 15,
        ),
      ),
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
            getChats("Kelas TI-2D", "Rofiq: besok libur ges", "13.57"),
            getChats("Nanda", "Halo Fatwa", "11.23"),
            getChats("Dio", "wkk siap", "11.23"),
            getChats("Mz Aang", "suwon fat", "11.23"),
            getChats("Bunbun", "makasih nak", "11.23"),
            getChats("Wahid TI C", "suwon fat", "11.23"),
            getChats("Adelina", "suwon fat", "11.23"),
            getChats("Ilham YOT", "suwon fat", "11.23"),
            getChats("Fajar TI D", "suwon fat", "11.23"),
            getChats("Ilma TI D", "suwon fat", "11.23"),
            getChats("Mz Bagus Fahmi UB", "suwon fat", "11.23"),
            getChats("Mz Marenda", "suwon fat", "11.23"),
            getChats("Wimbi TI A", "suwon fat", "11.23"),
            getChats("Mz Aang", "suwon fat", "11.23"),
            getChats("Mz Aang", "suwon fat", "11.23"),
            getChats("Mz Aang", "suwon fat", "11.23"),
            getChats("Mz Aang", "suwon fat", "11.23"),
            getChats("Mz Aang", "suwon fat", "11.23"),
            getChats("Mz Aang", "suwon fat", "11.23"),
            getChats("Mz Aang", "suwon fat", "11.23"),
            getChats("Mz Aang", "suwon fat", "11.23"),
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
