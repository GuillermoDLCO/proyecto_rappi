import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.dark,
    ));
    return MaterialApp(
      theme: ThemeData(
        accentColor: Colors.white
      ),
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: SafeArea(
        child: Scaffold(
          drawer: Drawer(
            elevation: 2.0,
          ),
          bottomNavigationBar: bottombar(),
          appBar: AppBar(
            title: Text(
              'Clone rappi',
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.orange,
          ),
          body: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 5.0,),
                  Text('¿Qué se te antoja?', style: TextStyle(fontSize: 20.0, ),),
                  Container(
                    margin: EdgeInsets.only(top: 5.0),
                    height: 80.0,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(20.0)
                    ),
                  ),
                  Text('¿Qué se te antoja?', style: TextStyle(fontSize: 20.0, ),),
                  Container(
                    margin: EdgeInsets.only(top: 5.0),
                    height: 80.0,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(20.0)
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  _listado(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Table _listado() {
    return Table(children: [
                  TableRow(children: [
                    _categoria(),
                    _categoria(),
                  ]),
                  TableRow(children: [
                    _categoria(),
                    _categoria(),
                  ]),
                  TableRow(children: [
                    _categoria(),
                    _categoria(),
                  ]),
                  TableRow(children: [
                    _categoria(),
                    _categoria(),
                  ]),
                  TableRow(children: [
                    _categoria(),
                    _categoria(),
                  ]),
                ]);
  }

  BottomAppBar bottombar() {
    return BottomAppBar(
          shape: CircularNotchedRectangle(),
          elevation: 1.0,
          color: Colors.white,
          child: new Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.store),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.add_to_queue),
                color: Colors.black,
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.headset),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.offline_bolt),
                onPressed: () {},
                color: Colors.orange,
              ),
            ],
          ),
        );
  }

  Padding _categoria() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 150.0,
        width: 40.0,
        decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.circular(20.0)
        ),

      ),
    );
  }
}
