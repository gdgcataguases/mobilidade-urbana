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
          appBar: AppBar(
              backgroundColor: Colors.red,
              title: Text('Horários'),
              bottom: TabBar(
                tabs: [
                  Tab(
                    text: 'Saida Origem',
                  ),
                  Tab(
                    text: 'Saida Destino',
                  )
                ],
              )),
          body: TabBarView(
            children: [
              Tab(
                text: 'TExt 1',
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
