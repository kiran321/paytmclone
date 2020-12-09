import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class User {
  final String name;
  final String imgurl;

  User({this.name, this.imgurl});
}

List<User> top = [pay, upi, passbook, postpaid, addMoney, linkAccount];

final User pay = User(
  name: 'Pay',
  imgurl: "assets/paytm/send_money.png",
);

final User upi = User(
  name: 'Upi',
  imgurl: "assets/paytm/money_transfer.png",
);

final User passbook = User(
  name: 'Passbook',
  imgurl: "assets/paytm/ic_passbook_header.png",
);

final User postpaid = User(
  name: 'Postpaid',
  imgurl: "assets/paytm/calendar_blue.png",
);

final User addMoney = User(
  name: 'Add Money',
  imgurl: "assets/paytm/add_money_passbook.png",
);

final User linkAccount = User(
  name: 'Link Account',
  imgurl: "assets/paytm/book.png",
);

class Bottom {
  final String name;
  final IconData icon;

  Bottom({this.name, this.icon});
}

final Bottom home = Bottom(
  name: 'Mobile Prepaid',
  icon: Icons.mobile_screen_share,
);

final Bottom shop = Bottom(
  name: 'Movie Tickets',
  icon: Icons.movie,
);

final Bottom scan = Bottom(
  name: 'Electricity',
  icon: Icons.lightbulb_outline,
);

final Bottom bank = Bottom(
  name: 'Flight Tickets',
  icon: Icons.airplay,
);

final Bottom inbox = Bottom(
  name: 'Gold',
  icon: Icons.wallpaper,
);

final Bottom shopping = Bottom(
  name: 'Shopping',
  icon: Icons.shopping_basket,
);

final Bottom tag = Bottom(
  name: 'Fasttag & Toll',
  icon: Icons.block,
);
final Bottom more = Bottom(
  name: 'More',
  icon: Icons.more,
);

List<Bottom> bot = [home, shop, scan, bank, inbox, shopping, tag, more];

class ScrollImage {
  final String image;
//  int index;

  ScrollImage({this.image});
}

final ScrollImage scroll = ScrollImage(image: 'assets/paytm_logo.png');
final ScrollImage scroll1 = ScrollImage(image: 'assets/satellite-dish.png');
final ScrollImage scroll2 = ScrollImage(image: 'assets/paytm_logo.png');
final ScrollImage scroll3 = ScrollImage(image: 'assets/paytm_logo.png');
final ScrollImage scroll4 = ScrollImage(image: 'assets/paytm_logo.png');

List<ScrollImage> listname = [scroll, scroll1, scroll2, scroll3, scroll4];

class DownList {
  final String name;

  DownList({
    this.name,
  });
}

List<DownList> down = [sell, business, blog, help];

final DownList sell = DownList(
  name: 'Sell on Paytm',
);

final DownList business = DownList(
  name: 'Business with Paytm',
);

final DownList blog = DownList(
  name: ' Our Blog',
);

final DownList help = DownList(
  name: '22 x 7 Help',
);

class Shop {
  final String name;
  final String imgurl;

  Shop({this.name, this.imgurl});
}

List<Shop> shop1 = [aa1, aa2, aa3, aa4, aa5, aa6, aa7];

final Shop aa1 = Shop(
  name: 'shop',
  imgurl: "assets/shop/a1.jpg",
);

final Shop aa2 = Shop(
  name: 'shop',
  imgurl: "assets/shop/a2.png",
);

final Shop aa3 = Shop(
  name: 'shop',
  imgurl: "assets/shop/a3.jpg",
);

final Shop aa4 = Shop(
  name: 'Shop',
  imgurl: "assets/shop/a4.jpg",
);

final Shop aa5 = Shop(
  name: 'Shop',
  imgurl: "assets/shop/a5.jpg",
);

final Shop aa6 = Shop(
  name: 'Shop',
  imgurl: "assets/shop/a6.jpg",
);
final Shop aa7 = Shop(
  name: 'Shop',
  imgurl: "assets/shop/a7.jpg",
);
