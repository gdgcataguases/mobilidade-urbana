import 'package:flutter/material.dart';
import 'package:mobilidade_urbana/ui/rotas.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: <Widget>[
            Top(),
            ListaLinhas(),
          ],
        ),
      ),
    );
  }
}

class Top extends StatelessWidget {
  const Top({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 200,
      color: Colors.red,
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
    );
  }
}

class ListaLinhas extends StatelessWidget {
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
    return Expanded(
        child: ListView.builder(
      itemCount: rotas.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(rotas[index]),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => RotasPage()));
          },
        );
      },
    ));
  }
}
