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
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: SafeArea(
        child: Scaffold(
          drawer: Drawer(),
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
              child: Column(
                children: <Widget>[
                  Table(children: [
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
                  ])
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  BottomAppBar bottombar() {
    return BottomAppBar(
          shape: CircularNotchedRectangle(),
          elevation: 1.0,
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
        color: Colors.orange,
      ),
    );
  }
}
