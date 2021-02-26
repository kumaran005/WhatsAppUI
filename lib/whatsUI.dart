import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Whatsapp extends StatefulWidget {
  @override
  _WhatsappState createState() => _WhatsappState();
}

class _WhatsappState extends State<Whatsapp> {
  Color mainColor = Color(0xFF177767);
  var containerRadius = Radius.circular(30);

  //List<String> imageUrl = [];

  @override
  Widget build(BuildContext context) {
    //Chat timeline
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 12, right: 12, top: 12),
        child: ListView(
          children: [
            //custom widget chat tile
            chatTile(
                Icon(
                  Icons.account_circle,
                  color: Colors.black12,
                  size: 55,
                ),
                'userName',
                'msg',
                '9Am',
                false),
            chatTile(
                Icon(Icons.account_circle, color: Colors.black12, size: 55),
                'userName',
                'msg',
                '9Am',
                true),
            chatTile(
                Icon(Icons.account_circle, color: Colors.black12, size: 55),
                'userName',
                'msg',
                '9Am',
                false),
            chatTile(
                Icon(Icons.account_circle, color: Colors.black12, size: 55),
                'userName',
                'msg',
                '9Am',
                true),
            chatTile(
                Icon(Icons.account_circle, color: Colors.black12, size: 55),
                'userName',
                'msg',
                '9Am',
                true),
            chatTile(
                Icon(Icons.account_circle, color: Colors.black12, size: 55),
                'userName',
                'msg',
                '9Am',
                false),
            chatTile(
                Icon(Icons.account_circle, color: Colors.black12, size: 55),
                'userName',
                'msg',
                '9Am',
                false),
            chatTile(
                Icon(Icons.account_circle, color: Colors.black12, size: 55),
                'userName',
                'msg',
                '9Am',
                false),
          ],
        ),
      ),
    );
  }
}

//chatTile
Widget chatTile(
    Icon icon, String userName, String msg, String date, bool seen) {
  return InkWell(
    onTap: () {},
    child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              child: icon,
              radius: 28,
              backgroundColor: Colors.grey,
            ),
            SizedBox(
              width: 8,
            ),
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                        child: Text(
                      userName,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    )),
                    Text(date),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Expanded(child: Text(userName)),
                    if (seen)
                      Icon(Icons.check_circle, size: 18, color: Colors.grey),
                    if (!seen)
                      Icon(Icons.check_circle_outline,
                          size: 18, color: Colors.green),
                  ],
                )
              ],
            ))
          ],
        )),
  );
}
