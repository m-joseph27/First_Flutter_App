import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TabBar myTabBar = TabBar(
      indicator: BoxDecoration(
          color: Colors.white,
          border: Border(top: BorderSide(color: Colors.greenAccent, width: 5))),
      // to give color indicator on bottom of tab
      // indicatorColor: Colors.green,
      tabs: [
        Tab(
          icon: Icon(Icons.comment),
          text: 'Comments',
        ),
        Tab(
          icon: Icon(Icons.computer),
          text: 'Computer',
        )
      ],
    );

    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Tap Bar'),
            bottom: PreferredSize(
                preferredSize: Size.fromHeight(myTabBar.preferredSize.height),
                child: Container(color: Colors.amberAccent, child: myTabBar)),
          ),
          body: TabBarView(
            children: [
              Center(
                child: Text('Tab 1'),
              ),
              Center(
                child: Text('Tab 2'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
