import 'package:flutter/material.dart';

final List<String> _horarios = [
  "05:25h (via Manufatora e Taquara Preta)",
  "06:30h",
];

class RotasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                text: Expanded(
        child: ListView.builder(
      itemCount: _horarios.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(_horarios[index]),
          },
        );
      },
    )),
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
