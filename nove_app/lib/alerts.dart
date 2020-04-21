import 'package:flutter/material.dart';

class Alerts extends StatelessWidget {
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("Alerts"),
          backgroundColor: Color(0xff2389FF),
        ),
        body: ListView(
          children: ListTile.divideTiles( //          <-- ListTile.divideTiles
              context: context,
              tiles: [
                ListTile(
                  title: Row(
                      children: <Widget>[
                        Icon(Icons.warning),
                        Text("  Flooding in North st.")
                      ]
                  ),
                  trailing: Icon(Icons.map),
                ),
                ListTile(
                  title: Row(
                      children: <Widget>[
                        Icon(Icons.whatshot),
                        Text("  Fire in Creek ln.")
                      ]
                  ),
                  trailing: Icon(Icons.map),
                ),
                ListTile(
                  title: Row(
                      children: <Widget>[
                        Icon(Icons.train),
                        Text("  Train blocked N main st.")
                      ]
                  ),
                  trailing: Icon(Icons.map),
                ),
              ]
          ).toList(),
        )
    );
  }
}

