import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListaBairros(),
      ),
    );
  }
}

class ListaBairros extends StatelessWidget {
  final List<String> rotas = [
    "Ana Carrara X Menezes",
    "Ana Carrara X Taquara Preta",
    "Ana Carrara X Cháraca Paraíso",
    "Bom Pastor x Guanabara",
    "Carijós x Canoa",
    "Chácara Paraíso x Justino",
    "Colinas x Taquara Preta",
    "Ana Carrara X Menezes",
    "Ana Carrara X Taquara Preta",
    "Ana Carrara X Cháraca Paraíso",
    "Bom Pastor x Guanabara",
    "Carijós x Canoa",
    "Chácara Paraíso x Justino",
    "Colinas x Taquara Preta",
    "Ana Carrara X Menezes",
    "Ana Carrara X Taquara Preta",
    "Ana Carrara X Cháraca Paraíso",
    "Bom Pastor x Guanabara",
    "Carijós x Canoa",
    "Chácara Paraíso x Justino",
    "Colinas x Taquara Preta",
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: rotas.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(rotas[index]),
        );
      },
    );
  }
}

SizedBox getTop(BuildContext context) {
  return SizedBox(
    height: 240,
    width: MediaQuery.of(context).size.width,
    child: Padding(
      padding: const EdgeInsets.fromLTRB(50, 30, 50, 20),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              children: <Widget>[
                Center(
                  child: Text(
                    'KTAMOBI',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 60,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: TextField(
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                          hintText: 'Informe o bairro',
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)))),
                )
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
