import 'dart:ui' as prefix0;

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Makna Kemerdekaan',
//      theme: ThemeData(
//        primarySwatch: Colors.red[600],
//      ),
      home: Home(),
    );
  }
}

class Kendaraan extends StatefulWidget {
 @override 
 _KendaraanState createState() => _KendaraanState();
}

class _KendaraanState extends State<Kendaraan> {
  @override 
  Widget build(BuildContext context) {
    // TODO: implement build
    return null;
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int like = 2;
  int dislike = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Makna Kemerdekaan"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Image.asset('assets/merdeka.jpeg')
                  ),
                Expanded(
                  child: Image.asset('assets/bendera.jpg')
                  )
              ],
            ),
            Center(
              child: Text('Apa Makna Kemerdekaan ?', style: TextStyle(
                color: Colors.red,
                fontSize: 32.0,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.blueGrey, 
                    Colors.red,
                    Colors.deepPurple
                  ]
                ),
              ),
              child: Text(
                  'Kemerdekaan Bukan lagi tentang bebas dari penjajahan tetapi tentang keberanian menunjukkan kemampuan diri dan karya nyata kepada dunia \r\n - Ainun Chomsun',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontStyle: FontStyle.italic,
                  ),
                  textAlign: TextAlign.justify,
                ),
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            ),
            SizedBox(height: 20.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    FlatButton(
                      child: Icon(Icons.thumb_up, size: 100.0, color: Colors.green[600],),
                      onPressed: () {
                        setState(() {
                          like++;
                        });
                      },
                    ),
                    Text(like.toString(), style: TextStyle(
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                    ),)
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    FlatButton(
                      child: Icon(Icons.thumb_down, size: 100.0, color: Colors.red[600],),
                      onPressed: () {
                        setState(() {
                          dislike++;
                        });
                      },
                    ),
                    Text(dislike.toString(), style: TextStyle(
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                    ),)
                  ],
                ),
              ],
            ),
            SizedBox(height: 20.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      width: 50.0,
                      height: 50.0,
                      child: Icon(Icons.share, size: 32.0, color: Colors.grey[600],),
                    ),
                    Text('20', style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),)
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      width: 50.0,
                      height: 50.0,
                      child: Icon(Icons.comment, size: 32.0, color: Colors.grey[600],),
                    ),
                    Text('20', style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),)
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      width: 50.0,
                      height: 50.0,
                      child: Icon(Icons.person, size: 32.0, color: Colors.grey[600],),
                    ),
                    Text('20', style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),)
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      width: 50.0,
                      height: 50.0,
                      child: Icon(Icons.favorite, size: 32.0, color: Colors.grey[600],),
                    ),
                    Text('20', style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),)
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}