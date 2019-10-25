import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TabBar myTabBar = TabBar(
      //indicatorColor: Colors.red,
      indicator: BoxDecoration(
          color: Colors.red,
          border: Border(top: BorderSide(color: Colors.purple, width: 10))),
      tabs: <Widget>[
        Tab(
          icon: Icon(Icons.comment),
          text: "komen",
        ),
        Tab(
          icon: Icon(Icons.computer),
          text: "Computer",
        )
      ],
    );

    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
              backgroundColor: Colors.indigo,
              title: Text("contoh Tab bar"),
              bottom: PreferredSize(
                  preferredSize: Size.fromHeight(myTabBar.preferredSize.height),
                  child: Container(color: Colors.amber, child: myTabBar))),
          body: TabBarView(
            children: <Widget>[
              Center(
                child: Text("tab hiji"),
              ),
              Center(
                child: Text("tab 2"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
