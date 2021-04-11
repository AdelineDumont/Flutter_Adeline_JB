import 'package:dwmgex/models/movie.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  DetailPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    final Movie movie = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
              icon: Icon(Icons.edit),
              onPressed: () {
                Navigator.pushNamed(context, '/detail/update');
              })
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Text(
              'Titre :',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Text(
              movie.title,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            Text(' '),
            Text('Résumé : ',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Text(
              movie.plot,
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 20),
            ),
            Text(' '),
            Text('Durée : ',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Text(
              movie.runtime.toString(),
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 20),
            ),
            Text(' '),
            Text('Acteurs : ',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Text(
              movie.actors.toString(),
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 20),
            ),
            Text(' '),
            Text('Genre : ',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Text(
              movie.kind.toString(),
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
