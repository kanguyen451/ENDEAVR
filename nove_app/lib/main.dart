import 'package:flutter/material.dart';

//main function for landing page
void main() => runApp(MaterialApp(
  home: Home(),
));


//static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
//widget list
List<Widget> _widgetOptions = <Widget>[
  Text(
    'Index 0: Home',
    //style: optionStyle,
  ),
  Text(
    'Index 1: Business',
    //style: optionStyle,
  ),
  Text(
    'Index 2: School',
    //style: optionStyle,
  ),
  Text(
    'Index 3: Settings',
    //style: optionStyle,
  ),
];

//bottom navigation index tracker
int _selectedIndex = 0;
void _onItemTapped(int index) {
  _selectedIndex = index;

  print(index);
}

void printHello(){
  print("Hello world");
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9F8F8),
      appBar: AppBar(
        title: Text("NOVE"),
        backgroundColor: Color(0xff2389FF),
      ),

      body:
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 40.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Container(
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    new Container(
                      width: MediaQuery.of(context).size.width*0.8,
                      child: new Text("WELCOME AND BE PREPARED", textAlign: TextAlign.center, style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold,)),
                    ),
                    new Container(
                      padding: EdgeInsets.fromLTRB(0, 5.0, 0, 0),
                      width: MediaQuery.of(context).size.width*0.8,
                      child: Text("NOVE sends you notifications when there is an incoming train, flood warnings, etc. Our goal is to keep the city of Nolanville safe.", ),
                    ),
                  ],
                ),
                padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
              ),
            ],
          ),

          //buttons container
          Container(
            child: Column(
              children: <Widget> [
                Container(
                  height: 40.0,
                ),
                new Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    new SizedBox(
                      width: 140.0,
                      height: 140.0,
                      child:
                      new RaisedButton(
                        onPressed: printHello,
                        color: Colors.white,
                        child: Column(
                          children: <Widget> [
                            Container(height: 10.0,),
                            Image.asset('assets/images/train.png', height: 80.0, width: 80.0,),
                            Container(height: 10.0,),
                            Text("Train"),
                          ],
                        ),
                        padding: EdgeInsets.all(10.0),
                        elevation: 3.0,
                        highlightElevation: 8.0,
                        highlightColor: Color(0xff7CB7FA),
                      ),
                    ),
                    new Container(
                      width: 20.0,
                    ),
                    new SizedBox(
                      width: 140.0,
                      height: 140.0,
                      child:
                      new RaisedButton(
                        onPressed: printHello,
                        color: Colors.white,
                        child: Column(
                          children: <Widget> [
                            Container(height: 10.0,),
                            Image.asset('assets/images/flood.png', height: 80.0, width: 80.0,),
                            Container(height: 10.0,),
                            Text("Report"),
                          ],
                        ),
                        padding: EdgeInsets.all(10.0),
                        elevation: 3.0,
                        highlightElevation: 8.0,
                        highlightColor: Color(0xff7CB7FA),
                      ),
                    ),
                  ],
                ),
                Container(height:20.0,),
                new Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    new SizedBox(
                      width: 140.0,
                      height: 140.0,
                      child:
                      new RaisedButton(
                        onPressed: printHello,
                        color: Colors.white,
                        child: Column(
                          children: <Widget> [
                            Container(height: 10.0,),
                            Image.asset('assets/images/alert.png', height: 80.0, width: 80.0,),
                            Container(height: 10.0,),
                            Text("Alert"),
                          ],
                        ),
                        padding: EdgeInsets.all(10.0),
                        elevation: 3.0,
                        highlightColor: Color(0xff7CB7FA),
                        highlightElevation: 8.0,
                      ),
                    ),
                    new Container(
                      width: 20.0,
                    ),
                    new SizedBox(
                      width: 140.0,
                      height: 140.0,
                      child:
                      new RaisedButton(
                        onPressed: printHello,
                        color: Colors.white,
                        child: Column(
                          children: <Widget> [
                            Container(height: 10.0,),
                            Image.asset('assets/images/list.png', height: 80.0, width: 80.0,),
                            Container(height: 10.0,),
                            Text("Alert History"),
                          ],
                        ),
                        padding: EdgeInsets.all(10.0),
                        elevation: 3.0,
                        highlightColor: Color(0xff7CB7FA),
                        highlightElevation: 8.0,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 25.0,
                ),
                new GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "myRoute");
                  },
                  child: new Text("About Us",),
                ),
                Container(
                  height: 25.0,
                ),
                new GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "myRoute");
                  },
                  child: new Text("Terms and Conditions",),
                ),
              ],
            ),
          ),

        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            title: Text('Tutorial'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text('Settings'),
          ),
//          BottomNavigationBarItem(
//            icon: Icon(Icons.settings),
//            title: Text('Settings'),
//          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xff8CBEF5),
        onTap: _onItemTapped,
      ),

      endDrawer: Drawer(),
//    floatingActionButton: FloatingActionButton(
//      child: Text('?'),
//    ),
    );
  }
}
