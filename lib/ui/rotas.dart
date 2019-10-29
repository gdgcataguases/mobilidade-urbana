import 'package:flutter/material.dart';

class RotasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: TabBar(
          tabs: <Widget>[
            Tab(
              text: 'TAB',
            ),
            Tab(
              text: 'TAB 2',
            )
          ],
        ),
        body: TabBarView(
          children: <Widget>[
            Tab(
              text: 'TEXT',
            ),
            Tab(
              text: 'TEXT 2',
            )
          ],
        ),
      ),
    );
  }
}
