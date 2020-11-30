import 'package:flutter/material.dart';

import 'constants.dart';

class DetailView extends StatefulWidget {
  final String username, avatar;
  DetailView(this.username, this.avatar);
  @override
  _DetailViewState createState() => _DetailViewState();
}

class _DetailViewState extends State<DetailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 100),
        child: Column(
          children: <Widget>[
            Image(
              image: AssetImage(widget.avatar),
              width: 200,
              height: 200,
            ),
            Text(
              widget.username,
              style: TextStyle(
                  color: Colors.black26,
                  fontSize: 50,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 50,
            ),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    color: Colors.black12),
                child: Icon(
                  Icons.arrow_left,
                  size: 50,
                  color: Colors.black26,
                ),
              ),
            ),
            SizedBox(
              height: 150,
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                color: myThemeColor,
                child: Padding(
                  padding: const EdgeInsets.all(80.0),
                  child: Image(
                    image: AssetImage(logoLocation),
                    width: 50,
                    height: 50,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
