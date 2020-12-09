import 'package:flutter/material.dart';
import './screeen_drawer.dart';
import './listfile.dart';
import './slider_screen.dart';
import './navigate.dart';
import './widgets/upi.dart';

void main() => runApp(Example1());

class Example1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'New App',
      home: HomePage1(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

class HomePage1 extends StatefulWidget {
  @override
  _HomePage1State createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
  int index;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: _appbar1(),
        drawer: Drawer1(),
        body: new Container(
          child: new SingleChildScrollView(
            child: new Column(
              children: <Widget>[
                _itemScroll(),
                _bottombar1(),
                _tagone(),
                _rowofthreeButton(),
                CarouselWithIndicator(),
                _tagtwo(),
                _rowoffourButtons1(),
                CarouselWithIndicator(),
                _tagthree(),
                _itemScrollDown(),
                _rowoffourButtonsDown(),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _bottombar(),
      ),
    );
  }
}
//Appbar Widget
Widget _appbar1() {
  return AppBar(
    title: new TextField(
      decoration: new InputDecoration(
        prefixIcon: Image.asset(
          'assets/paytm.png',
          height: 40.0,
          width: 15.0,
        ),
        suffixIcon: Image.asset(
          'assets/bell.png',
          height: 40.0,
          width: 15.0,
        ),
        filled: true,
        fillColor: Colors.white,
      ),
    ),
    actions: <Widget>[
      new Padding(
        padding: EdgeInsets.fromLTRB(0.0, 2.0, 2.0, 2.0),
      ),
      new Image.asset(
        'assets/cashbackoffer.jpg',
      ),
    ],
  );
}
// Bottombar Widget
Widget _bottombar() {
  return new BottomNavigationBar(
    type: BottomNavigationBarType.fixed,
    items: [
      new BottomNavigationBarItem(
        icon: new Icon(Icons.home),
        title: new Text('Home'),
      ),
      new BottomNavigationBarItem(
        icon: new Icon(Icons.shopping_basket),
        title: new Text('shop'),
      ),
      new BottomNavigationBarItem(
        icon: new Icon(Icons.scanner),
        title: new Text('Scan Qr'),
      ),
      new BottomNavigationBarItem(
        icon: new Icon(Icons.home),
        title: new Text('Bank'),
      ),
      new BottomNavigationBarItem(
        icon: Icon(Icons.email),
        title: Text('inbox'),
      )
    ],
  );
}
// First Row
Widget _itemScroll() => new Column(
      children: <Widget>[
        new Container(
          height: 90,
          color: Colors.blue[800],
          child: ListView.builder(
              padding: EdgeInsets.only(left: 20.0),
              scrollDirection: Axis.horizontal,
              itemCount: top.length,
              itemBuilder: (BuildContext context, int index) {
                return new GestureDetector(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: <Widget>[
                        new Image.asset(
                          top[index].imgurl,
                          height: 50.0,
                          width: 50.0,
                          color: Colors.white,
                        ),
                        new Text(
                          top[index].name,
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  onTap: () {
                    if (top[index].name == "Pay") {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Upi(),
                        ),
                      );
                    } else if (top[index].name == "Upi") {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Upi(),
                        ),
                      );
                    } else if (top[index].name == "Passbook") {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MyPage(),
                        ),
                      );
                    } else if (top[index].name == "Postpaid") {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MyPage(),
                        ),
                      );
                    } else if (top[index].name == "Add Money") {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MyPage(),
                        ),
                      );
                    } else if (top[index].name == "Link Account") {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MyPage(),
                        ),
                      );
                    }
                  },
                );
              }),
        )
      ],
    );

Widget _bottombar1() => new Column(
      children: <Widget>[
        new Container(
          height: 160.0,
          child: GridView.count(
            crossAxisCount: 4,
            mainAxisSpacing: 5.0,
            crossAxisSpacing: 5.0,
            padding: EdgeInsets.all(5.0),
            children: List.generate(bot.length, (index) {
              return Center(
                child: Column(
                  children: <Widget>[
                    new Icon(
                      bot[index].icon,
                      size: 50.0,
                      color: Colors.blue,
                    ),
                    new Text(
                      bot[index].name,
                      style: TextStyle(color: Colors.blue, fontSize: 10.0),
                    ),
                  ],
                ),
              );
            }),
          ),
        ),
      ],
    );

Widget _tagone() => new Container(
      width: 1000.0,
      color: Colors.white,
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          new Icon(Icons.create, color: Colors.black),
          new Text('Pay from Bank Account',
              style: TextStyle(color: Colors.black, fontSize: 15.0)),
         ],
      ),
    );

Widget _rowofthreeButton() {
  return Container(
    child: Row(
      children: <Widget>[
        new Card(
          child: InkWell(
            onTap: () {
              print("tapped");
            },
            child: new Container(
              padding: new EdgeInsets.all(12.0),
              child: new Column(
                children: <Widget>[
                  new Icon(
                    Icons.contacts,
                    color: Colors.blue,
                  ),
                  new Text('To Contacts'),
                ],
              ),
            ),
          ),
        ),
        new Card(
          child: InkWell(
            onTap: () {
              print("tapped");
            },
            child: new Container(
              padding: new EdgeInsets.all(10.0),
              child: new Column(
                children: <Widget>[
                  new Icon(Icons.attach_money, color: Colors.blue),
                  new Text('Check Balance'),
                ],
              ),
            ),
          ),
        ),
        new Card(
          child: InkWell(
            onTap: () {
              print("tapped");
            },
            child: new Container(
              padding: new EdgeInsets.all(10.0),
              child: new Column(
                children: <Widget>[
                  new Icon(Icons.scanner, color: Colors.blue),
                  new Text('Scan UPI QR'),
                ],
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget _rowoffourButtonsDown() {
  return Container(
    child: new Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        new Card(
          child: new InkWell(
            onTap: () {
              print("tapped");
            },
            child: new Container(
              width: 90.0,
              height: 40.0,
              padding: new EdgeInsets.all(4.0),
              child: new Column(
                children: <Widget>[
                  new Text('Sell on Paytm',
                      style: TextStyle(color: Colors.blue),
                      textAlign: TextAlign.center),
                ],
              ),
            ),
          ),
        ),

        new Card(
          child: new InkWell(
            onTap: () {
              print("tapped");
            },
            child: Container(
              width: 80.0,
              height: 40.0,
              padding: new EdgeInsets.all(0.00),
              child: new Column(
                children: <Widget>[
                  new Text('Busines with\n Paytm',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.blue)),
            
                ],
              ),
            ),
          ),
        ),


        new Card(
          child: InkWell(
            onTap: () {
              print("tapped");
            },
            child: new Container(
              width: 70.0,
              height: 40.0,
              padding: new EdgeInsets.all(4.0),
              child: new Column(
                children: <Widget>[
                  new Text('Our Blog',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.blue)),
                ],
              ),
            ),
          ),
        ),

        new Card(
          child: InkWell(
            onTap: () {
              print("tapped");
            },
            child: new Container(
              width: 80.0,
              height: 40.0,
              padding: new EdgeInsets.all(4.0),
              child: new Column(
                children: <Widget>[
                  new Text(' 24x7 Help',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.blue)),
                ],
              ),
            ),
          ),
        ),

      ],
    ),
  );
}

Widget _tagtwo() => new Container(
      width: 1000.0,
      color: Colors.white,
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          new Icon(Icons.create, color: Colors.black),
          new Text('Top Shopping Offers',
              style: TextStyle(color: Colors.black, fontSize: 15.0)),
        ],
      ),
    );

Widget _rowofthreeButton1() {
  return Container(
    child: Row(
      children: <Widget>[
        new Card(
          child: InkWell(
            onTap: () {
              print("tapped");
            },
            child: new Container(
              padding: new EdgeInsets.all(12.0),
              child: new Column(
                children: <Widget>[
                  new Icon(Icons.contacts),
                  new Text('To Contacts'),
                ],
              ),
            ),
          ),
        ),
        new Card(
          child: InkWell(
            onTap: () {
              print("tapped");
            },
            child: new Container(
              padding: new EdgeInsets.all(10.0),
              child: new Column(
                children: <Widget>[
                  new Icon(Icons.attach_money),
                  new Text('Check Balance'),
                ],
              ),
            ),
          ),
        ),
        new Card(
          child: InkWell(
            onTap: () {
              print("tapped");
            },
            child: new Container(
              padding: new EdgeInsets.all(10.0),
              child: new Column(
                children: <Widget>[
                  new Icon(Icons.scanner),
                  new Text('Scan UPI QR'),
                ],
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget _rowoffourButtons1() {
  return Container(
    child: new Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        new Expanded(
          child: new Card(
            child: new InkWell(
              onTap: () {
                print("tapped");
              },
              child: new Container(
                width: 70.0,
                height: 60.0,
                padding: new EdgeInsets.all(0.0),
                child: new Column(
                  children: <Widget>[
                    new Icon(Icons.collections),
                    new Text('Gold', textAlign: TextAlign.center),
                  ],
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: new Card(
            child: new InkWell(
              onTap: () {
                print("tapped");
              },
              child: Container(
                width: 70.0,
                height: 60.0,
                padding: new EdgeInsets.all(0.0),
                child: new Column(
                  children: <Widget>[
                    new Icon(Icons.shopping_basket),
                    new Text('Shopping', textAlign: TextAlign.center),
                  ],
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: new Card(
            child: InkWell(
              onTap: () {
                print("tapped");
              },
              child: new Container(
                width: 70.0,
                height: 60.0,
                padding: new EdgeInsets.all(0.0),
                child: new Column(
                  children: <Widget>[
                    new Icon(Icons.tag_faces),
                    new Text(
                      'FastTag &\t Toll',
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: new Card(
            child: InkWell(
              onTap: () {
                print("tapped");
              },
              child: new Container(
                width: 70.0,
                height: 60.0,
                padding: new EdgeInsets.all(0.0),
                child: new Column(
                  children: <Widget>[
                    new Icon(Icons.more),
                    new Text('More', textAlign: TextAlign.center),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget _tagthree() => new Container(
      width: 1000.0,
      color: Colors.white,
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          new Text('Shop on Mall',
              style: TextStyle(color: Colors.black, fontSize: 15.0)),
        ],
      ),
    );

Widget _itemScrollDown() => new Column(
      children: <Widget>[
        new Container(
            height: 90,
            color: Colors.white,
            child: ListView.builder(
                padding: EdgeInsets.only(left: 20.0),
                scrollDirection: Axis.horizontal,
                itemCount: shop1.length,
                itemBuilder: (BuildContext context, int index) {
                  return new GestureDetector(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: <Widget>[
                          new Image.asset(
                            shop1[index].imgurl,
                            height: 50.0,
                          ),
                          new Text(
                            shop1[index].name,
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      print('tapped');
                    },
                  );
                }))
      ],
    );
