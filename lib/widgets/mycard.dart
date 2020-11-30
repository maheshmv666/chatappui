import 'package:flutter/material.dart';

import 'details.dart';

Widget myCard(BuildContext context, String username, String iconPath) {
  return InkWell(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) {
          return DetailView(username, iconPath);
        }),
      );
    },
    child: Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: Colors.black12, borderRadius: BorderRadius.circular(10)),
      width: 500,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Image(
            image: AssetImage("$iconPath"),
            width: 50,
            height: 50,
          ),
          Text(
            "$username",
            style: TextStyle(color: Colors.black26, fontSize: 30),
          ),
          Icon(
            Icons.arrow_right,
            size: 50,
            color: Colors.black26,
          ),
        ],
      ),
    ),
  );
}
