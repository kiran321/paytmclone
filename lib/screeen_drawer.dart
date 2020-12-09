import 'package:flutter/material.dart';

/*class Drawer1 extends StatefulWidget {
  @override
  _Drawer1State createState() => _Drawer1State();
}
*/
class Drawer1 extends StatelessWidget
// State<Drawer1>
{
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          new DrawerHeader(
              child: new Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            // decoration: BoxDecoration(color: Colors.red),
            children: <Widget>[
              Expanded(
                flex: 1,
                child: InkWell(
                  onTap: () {
                    print("tapped");
                  },
                  child: Image.asset(
                    'assets/profile.png',
                    height: 60.0,
                    width: 60.0,
                    alignment: Alignment.topLeft,
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: InkWell(
                  onTap: () {
                    print("tapped");
                  },
                  child: Text('kiran yadav\n 9019619535'),
                ),
              ),
              Expanded(
                flex: 1,
                child: InkWell(
                  onTap: () {
                    print("tapped");
                  },
                  child: new Icon(Icons.check),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    print("tapped");
                  },
                  child: Image.asset(
                    'assets/qr.png',
                    height: 40.0,
                    width: 40.0,
                    alignment: Alignment.center,
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    print("tapped");
                  },
                  child: new Icon(Icons.navigate_next),
                ),
              ),
            ],
          )),
          ListTile(
            leading: CircleAvatar(
              //backgroundColor: Colors.red,
              backgroundImage: AssetImage('assets/starc.jpg'),
            ),
            //new  Icon( Icons.star_border),

            title: new Text('Paytm First'),
            subtitle: Text('Say hello to the Good Life'),
            trailing: new Icon(Icons.navigate_next),
            //   selected: true,
            onTap: () {},
          ),
          new Divider(),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/qr.png'),
            ),
            //  Icon( Icons.person),
            title: new Text('Accept Payment'),
            subtitle: Text('Show/Share QR code or share paymnet link'),
            trailing: new Icon(Icons.navigate_next),
            // selected: true,
            onTap: () {},
          ),
          new Divider(),
          ListTile(
            leading: new Icon(Icons.shopping_basket),
            title: new Text('Shop on Paytm'),
            subtitle: Text('Electronics, fashions, Groceries & More'),
            trailing: new Icon(Icons.navigate_next),
            onTap: () {},
          ),
          new Divider(),
          ListTile(
            leading: new Icon(Icons.view_list),
            title: new Text('My Orders'),
            subtitle: Text('Shopping movie tickets, utility bills'),
            trailing: new Icon(Icons.navigate_next),
            onTap: () {},
          ),
          new Divider(),
          ListTile(
            leading: new Icon(Icons.book),
            title: new Text('My Passbook'),
            subtitle: Text('Wallets Paytm Payment Bank balance'),
            trailing: new Icon(Icons.navigate_next),
            onTap: () {},
          ),
          new Divider(),
          ListTile(
            leading: new Icon(Icons.add_alert),
            title: new Text('Payment Reminders'),
            subtitle: Text('Set reminders for your frequent paymnets'),
            trailing: new Icon(Icons.navigate_next),
            onTap: () {},
          ),
          new Divider(),
          ListTile(
            leading: new Icon(Icons.store),
            title: new Text('My Favourite Store'),
            subtitle: Text('Pay using Paytm at nearby stores'),
            trailing: new Icon(Icons.navigate_next),
            onTap: () {},
          ),
          new Divider(),
          ListTile(
            leading: new Icon(Icons.card_membership),
            title: new Text('Paytm First Card'),
            subtitle: Text('Credit Card with great offers'),
            trailing: new Icon(Icons.navigate_next),
            onTap: () {},
          ),
          new Divider(),
          ListTile(
            leading: new Icon(Icons.card_giftcard),
            title: new Text('My Vouchers'),
            subtitle: Text('Get Paytm CashBack'),
            trailing: new Icon(Icons.navigate_next),
            onTap: () {},
          ),
          new Divider(),
          ListTile(
            leading: new Icon(Icons.language),
            title: new Text('Choose Language'),
            subtitle: Text('Use Paytm in your preferred lanuage'),
            trailing: new Icon(Icons.navigate_next),
            onTap: () {},
          ),
          new Divider(),
          ListTile(
            leading: new Icon(Icons.live_help),
            title: new Text('24x7 Help\n Open Queries , help Topics, Forms'),
            subtitle: ButtonTheme.bar(
              child: new ButtonBar(
                mainAxisSize: MainAxisSize.max,
                buttonPadding: EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 5.0),
                children: <Widget>[
                  RaisedButton(
                    color: Colors.white,
                    child: const Text(
                      'Open Queries',
                      style: TextStyle(color: Colors.blue),
                      textAlign: TextAlign.start,
                    ),
                    onPressed: () {},
                  ),
                  RaisedButton(
                    color: Colors.white,
                    child: const Text(
                      'raise a query',
                      style: TextStyle(color: Colors.blue),
                      textAlign: TextAlign.end,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
          new Divider(),
          ListTile(
            leading: new Icon(Icons.attach_money),
            title: new Text('My Payment Settings'),
            subtitle: Text('Saved Automatic and other payment details'),
            trailing: new Icon(Icons.navigate_next),
            onTap: () {},
          ),
          new Divider(),
          ListTile(
            leading: new Icon(Icons.security),
            title: new Text('My Security Settings'),
            subtitle: Text('App Lock'),
            trailing: new Icon(Icons.navigate_next),
            onTap: () {},
          ),
          new Divider(),
          ListTile(
            leading: new Icon(Icons.person_pin_circle),
            title: new Text('My Profile Settings'),
            subtitle: Text('Change Profile Photo, update personal Info'),
            trailing: new Icon(Icons.navigate_next),
            onTap: () {},
          ),
          new Divider(
            //  color:  Colors.black,
            indent: 50.0,
            height: 10.0,
          ),
          new Container(
            height: 100.0,
            child: InkWell(
              onTap: () {
                print("tapped");
              },

              //height: 100.0,

              child: Image.asset('assets/cashbackoffer.jpg', fit: BoxFit.cover),
            ),
          ),
          new Divider(),
          new Container(
            height: 100.0,
            child: InkWell(
              onTap: () {
                print("tapped");
              },
              child: Image.asset('assets/cashback.png', fit: BoxFit.cover),
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(100.0, 10.0, 100.0, 10),
            title: Text('V 8.4.2'),
            //  onTap: () {},
          ),
        ],
      ),
    );
  }
}
