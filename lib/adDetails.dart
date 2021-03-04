import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class adDetails extends StatefulWidget {
  @override
  _adDetailsState createState() => _adDetailsState();
}

class _adDetailsState extends State<adDetails> {

  var ads = [
    {
      "image": "Assets/car.jpg",
      "title": "Car for sale",
      "description": "This is a car, that is for sale, buy it please? k thenks",
      "category": "Cars",
      "subcategory": "Sports",
      "type/maker": "God?",
      "omr": "225",
      "datePosted": "03-02-21",
      "status": "Pending",
      "loc": "sr no. 2313, west road, south city, north state",
      "name": "Jitendra Choudhary",
      "number": "9623876634",
      "email": "Jitendra93266@gmail.com",
    },
    {
      "image": "Assets/macbook.jpg",
      "title": "MacBook for Sale",
      "description":
      "Latest laptop from the apple industries, best in the market, buy soon",
      "category": "Electronics",
      "subcategory": "Laptops",
      "type/maker": "Apple",
      "omr": "2125",
      "datePosted": "03-02-21",
      "status": "Pending",
      "loc": "sr no. 2313, east road, south city, north state",
      "name": "Jitendra Choudharies",
      "number": "9623876635",
      "email": "Jitendra932661@gmail.com",
    },
    {
      "image": "Assets/iphone.jpg",
      "title": "iPhone great condition for sale",
      "description": "Great condition, version 10, good phone",
      "category": "Electronics",
      "subcategory": "Phone",
      "type/maker": "Apple",
      "omr": "1221",
      "datePosted": "03-02-21",
      "status": "Rejected",
      "loc": "sr no. 2313, south road, west city, north state",
      "name": "Jitendra Choudharian",
      "number": "9623876636",
      "email": "Jitendra932662@gmail.com",
    },
  ];
  List<Widget> items;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Column(
      //   children: [
      //     CarouselSlider(
      //         items: ,
      //         options: CarouselOptions(
      //           height: 400,
      //           aspectRatio: 16/9,
      //           viewportFraction: 0.8,
      //           initialPage: 0,
      //           enableInfiniteScroll: true,
      //           reverse: false,
      //           autoPlay: true,
      //           autoPlayInterval: Duration(seconds: 3),
      //           autoPlayAnimationDuration: Duration(milliseconds: 800),
      //           autoPlayCurve: Curves.fastOutSlowIn,
      //           enlargeCenterPage: true,
      //           scrollDirection: Axis.horizontal,
      //         )
      //     )
      //   ],
      // ),
    );
  }
}
