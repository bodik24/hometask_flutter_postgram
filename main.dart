import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        primaryTextTheme: TextTheme(
            title: TextStyle(
                color: Colors.black
            )
        ),
      ),
      home: MyHomePage(title: 'PoStoGram'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 99;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(

          backgroundColor: Colors.white,
          centerTitle: true,
          leading: IconButton(
            onPressed: () => exit(0),
            icon: Icon(Icons.arrow_back_ios,
                color: Colors.black),
          ),
          title: Text(widget.title),

        ),
        body: Container(
            child: ListView(
                scrollDirection: Axis.vertical,
                children: <Widget>[_getImage(),_getImage2(), _setActions(), _getText(), _getNavigationBar()]))

    );
  }



  Widget _getImage() {
    FlatButton(
      color: Colors.red,
      child: Text('Click Me1!'),
      onPressed: () {},
    );
    return Image.network(
      'https://www.mgpu.ru/wp-content/uploads/2018/11/london-1900x1080-1.jpg',
    );


  }

  Widget _getImage2() {
    FlatButton(
      color: Colors.red,
      child: Text('Click Me1!'),
      onPressed: () {},
    );
    return Image.network(
      'https://upload.wikimedia.org/wikipedia/commons/thumb/8/87/Palace_of_Westminster_from_the_dome_on_Methodist_Central_Hall.jpg/1000px-Palace_of_Westminster_from_the_dome_on_Methodist_Central_Hall.jpg',
    );


  }

  Widget _setActions() {
    return Container(
      height: 35,
      width: MediaQuery.of(context).size.width,
      child: Stack(children: <Widget>[
        Positioned(
          left: 0,
          child: IconButton(
            onPressed: (_incrementCounter),
            color: Colors.red,
            icon: Icon(Icons.favorite),
          ),
        ),
        Positioned(
          left: 40,
          child: IconButton(
            onPressed: () {},
            color: Colors.blueAccent,
            icon: Icon(Icons.sms),
          ),
        ),
        Positioned(
          left: 80,
          child: IconButton(
            onPressed: () {},
            color: Colors.lightGreen,
            icon: Icon(Icons.share),
          ),
        ),
        Positioned(
          right: -5,
          child: IconButton(
            onPressed: () {},
            color: Colors.black,
            icon: Icon(Icons.bookmark_border),
          ),
        ),
      ]),
    );
  }

  Widget _getText() {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Нравится: $_counter',
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          RichText(
            text: TextSpan(
                text: 'The UK - ',
                style:
                TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                children: <TextSpan>[
                  TextSpan(
                    text:
                    '''LONDON - THE CAPITAL OF GREAT BRITAIN.\n\n London is the biggest city in Britain and one of the biggest in the world. More than eight million people live and work there. London is one of the most important cities in the world.\n\n.\n.\n.''',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.normal),
                    // navigate to desired screen
                  )
                ]),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '#griddynamics_kharkiv #hometask #workshop #flutter',
                style: TextStyle(color: Colors.blueAccent),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
            child: Align(
              alignment: Alignment.topLeft,
              child: RichText(
                text: TextSpan(
                    text: '23 january 2020 \u2022',
                    style: TextStyle(color: Colors.black, fontSize: 12),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' 5 hours ago',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 12),
                        // navigate to desired screen
                      )
                    ]),
              ),
            ),
          ),
        ],
      ),
    );
  }



  Widget _getNavigationBar() {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: [
        BottomNavigationBarItem(
            backgroundColor: Colors.white54,
            icon: Icon(Icons.home,color:Colors.black87),
            title: Text('Home')
        ),
        BottomNavigationBarItem(
            backgroundColor: Colors.red,
            icon: Icon(Icons.search,color:Colors.black87),
            title: Text('Search')
        ),
        BottomNavigationBarItem(
            backgroundColor: Colors.red,
            icon: Icon(Icons.add_circle_outline,color:Colors.black87),
            title: Text('Add')
        ),
        BottomNavigationBarItem(
            backgroundColor: Colors.red,
            icon: Icon(Icons.favorite_border,color:Colors.black87),
            title: Text('News')
        ),
        BottomNavigationBarItem(
            backgroundColor: Colors.red,
            icon: Icon(Icons.person_outline,color:Colors.black87),
            title: Text('Profile')
        ),
      ],
    );
  }
}