import 'package:flutter/material.dart';

class Status extends StatefulWidget {
  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 12, right: 12, top: 12),
        child: ListView(
          children: [
            storyButton(
                Icon(Icons.account_circle, color: Colors.black12, size: 55),
                "Member 1"),
            storyButton(
                Icon(Icons.account_circle, color: Colors.black12, size: 55),
                "Member 2"),
            storyButton(
                Icon(
                  Icons.account_circle,
                  color: Colors.black12,
                  size: 55,
                ),
                "Member 3"),
            storyButton(
                Icon(
                  Icons.account_circle,
                  color: Colors.black12,
                  size: 55,
                ),
                "Member 4"),
            storyButton(
                Icon(
                  Icons.account_circle,
                  color: Colors.black12,
                  size: 55,
                ),
                "Member 5"),
            storyButton(
                Icon(
                  Icons.account_circle,
                  color: Colors.black12,
                  size: 55,
                ),
                "Member 6"),
            storyButton(
                Icon(
                  Icons.account_circle,
                  color: Colors.black12,
                  size: 55,
                ),
                "Member 7"),
            storyButton(
                Icon(
                  Icons.account_circle,
                  color: Colors.black12,
                  size: 55,
                ),
                "Member 8"),
          ],
        ),
      ),
    );
  }
}

Widget storyButton(Icon icon, String userName) {
  return InkWell(
    onTap: () {},
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
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
                  Row(children: [
                    Expanded(
                      child: Text(
                        userName,
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w400),
                      ),
                    )
                  ])
                ]),
          )
        ],
      ),
    ),
  );
}
