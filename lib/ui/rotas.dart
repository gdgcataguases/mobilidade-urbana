import 'package:flutter/material.dart';

final List<String> _horarios = [
  "05:25h (via Manufatora e Taquara Preta)",
  "06:30h",
];

class RotasPage extends StatelessWidget {
  String dados;

  // RotasPage({dados});

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
                    text: 'Saida Destino',
                  ),
                  Tab(
                    text: 'Saida Destino',
                  )
                ],
              )),
          body: TabBarView(
            children: [
              ListView.builder(
                itemCount: _horarios.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(_horarios[index]),
                  );
                },
              ),
              ListView.builder(
                itemCount: _horarios.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(_horarios[index]),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
