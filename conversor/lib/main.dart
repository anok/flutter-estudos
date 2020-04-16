import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

const request = "https://api.hgbrasil.com/finance/?format=json&key=e6491522";

void main(List<String> args) {
  runApp(MaterialApp(home: Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      appBar: AppBar(
        title: Text('\$ Conversor \$'),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      body: FutureBuilder<Map>(
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
            case ConnectionState.waiting:
              return Center(
                child: Text(
                  'Carregando Dados',
                  style: TextStyle(color: Colors.amber, fontSize: 25.0),
                ),
              );
              break;
            default:
              if (snapshot.hasError) {
                return Center(
                    child: Text(
                  'Erro ao carregar dados',
                  style: TextStyle(color: Colors.amber, fontSize: 25.0),
                ));
              } else {
                return Container(color: Colors.green);
              }
              break;
          }
        },
        future: getData(),
      ),
    );
  }
}

Future<Map> getData() async {
  http.Response response = await http.get(request);
  return json.decode(response.body)['results']['currencies'];
}
