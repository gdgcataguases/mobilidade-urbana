import 'package:flutter/material.dart';

class RotasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Colors.red,
          appBar: TabBar(
            tabs: <Widget>[
              Tab(
                text: 'Saida',
              ),
              Tab(
                text: 'Saida',
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
      ),
    );
  }
}
