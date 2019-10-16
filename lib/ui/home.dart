import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: HomePage(title: ''),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: searchbar(context),
        ),
      ),
    );
  }

  List<Widget> searchbar(BuildContext context) {
    return <Widget>[
      new SearchBar(rotas: rotas),
    ];
  }
}

class SearchBar extends StatelessWidget {
  final List<String> rotas;

  const SearchBar({
    Key key,
    this.rotas,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          Container(
            color: Colors.red,
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    getTop(context),
                  ],
                ),
              ],
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                  child: ListView.builder(
                shrinkWrap: true,
                itemCount: rotas.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      '${rotas[index]}',
                      style: TextStyle(fontSize: 22),
                    ),
                    trailing: Icon(Icons.directions_bus),
                  );
                },
              )),
            ],
          ),
        ],
      ),
    );
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
}
