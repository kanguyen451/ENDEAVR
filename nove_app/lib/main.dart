import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NOVE"),
        centerTitle: true,
        backgroundColor: Color(0xff2389FF),
      ),
      body: Center(
        child: Text(
          "Hello World!",
          style: TextStyle(
            fontFamily: 'Barlow',
            fontSize: 20.0,
          ),
        ),
      ),
      endDrawer: Drawer(),
//    floatingActionButton: FloatingActionButton(
//      child: Text('?'),
//    ),
    );
  }
}
