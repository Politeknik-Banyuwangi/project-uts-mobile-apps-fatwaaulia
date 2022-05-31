import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Calls extends StatelessWidget {
  const Calls({Key? key}) : super(key: key);
  // Masukkan coding disini
  Widget getCalls(name, time, callOrVidcall) {
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
          callOrVidcall == "call"
              ? Icon(
                  Icons.call,
                  color: Colors.green,
                )
              : Icon(
                  Icons.video_call,
                  color: Colors.green,
                ),
        ],
      ),
      subtitle: Text(
        time,
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
            getCalls("Tiara TI D", "(2) Hari ini 11.19", "call"),
            getCalls("Mbak Rindy YOT", "Kemarin 20.01", "call"),
            getCalls("Bunbun", "19 Mei 06.56", "11.video_call"),
            getCalls("+62 1234567890", "17 Mei 15.12", "video_call"),
            getCalls("Fajar TI D", "05 Mei 07.46", "call"),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.white,
            focusElevation: 0.0,
            onPressed: () {},
            child: Icon(
              Icons.video_call,
              color: Colors.teal.shade900,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          FloatingActionButton(
            backgroundColor: Colors.green,
            onPressed: () {},
            child: Icon(
              Icons.add_call,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
