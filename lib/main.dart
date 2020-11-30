import 'package:flutter/material.dart';

import 'widgets/constants.dart';
import 'widgets/mycard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ChatApp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'ChatApp'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(200),
          child: Container(
            decoration:
                BoxDecoration(color: myThemeColor, boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.black,
                offset: Offset(0.0, 3.0),
                blurRadius: 60.0,
              ),
            ]),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Image(
                    image: AssetImage(logoLocation),
                    width: 50,
                    height: 50,
                  ),
                  Text(
                    widget.title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.menu,
                      size: 50,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      print("clicked");
                      _scaffoldKey.currentState.openEndDrawer();
                    },
                  )
                ],
              ),
            ),
          ),
        ),
        endDrawer: Drawer(
          child: ListView(
            children: [
              ListTile(
                title: Text('Profile',
                    style: TextStyle(color: Colors.grey, fontSize: 30)),
                trailing: Icon(Icons.directions_bike),
              ),
              ListTile(
                title: Text('Settings',
                    style: TextStyle(color: Colors.grey, fontSize: 30)),
                trailing: Icon(Icons.settings),
              )
            ],
          ),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  myCard(context, "Username1", avatarLocation1),
                  myCard(context, "Username2", avatarLocation2),
                  myCard(context, "Username3", avatarLocation3),
                  myCard(context, "Username4", avatarLocation4),
                  myCard(context, "Username5", avatarLocation5),
                  myCard(context, "Username6", avatarLocation6),
                  myCard(context, "Username7", avatarLocation1),
                  myCard(context, "Username8", avatarLocation2),
                  myCard(context, "Username9", avatarLocation3),
                  myCard(context, "Username10", avatarLocation4),
                  myCard(context, "Username11", avatarLocation5),
                  myCard(context, "Username12", avatarLocation6),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
