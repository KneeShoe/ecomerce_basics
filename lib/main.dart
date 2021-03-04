import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ecomerce_basics/data.dart';

import 'adDetails.dart';
import 'allAds.dart';

void main() {
  runApp(MaterialApp(
    home: MyHomePage(),
  ));
}


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

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
      "status": "Accepted",
      "loc": "sr no. 2313, east road, south city, north state",
      "name": "Jitendra Choudharies",
      "number": "9623876635",
      "email": "Jitendra932661@gmail.com",
    },
  ];

  // int postingCalc(String date){
  //   return DateTime.parse(date).difference(DateTime.now()).inDays;
  // }

  Future navigateToAllAds(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => allAds()));
  }

  Future navigateToAd(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => adDetails()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Dashboard"),
      ),
      drawer: new Drawer(
        child: Column(
          children: [],
        ),
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: new BoxDecoration(color: Colors.white10),
                  width: 200,
                  child: TextFormField(
                    decoration: new InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      filled: true,
                      labelText: "Search Ads..",
                      fillColor: Colors.white10,
                      border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(25.0),
                        borderSide: new BorderSide(),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  child: Container(
                    padding: EdgeInsets.all(8),
                    width: 80,
                    height: 30,
                    child: Text(
                      "View All Ads",
                      style: new TextStyle(fontSize: 12, color: Colors.white, ),
                      textAlign: TextAlign.center,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.deepOrangeAccent,
                        borderRadius:
                        BorderRadius.all(Radius.circular(10.0))),
                  ),
                  onTap: () {
                    navigateToAllAds(context);
                  },
                ),

              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text("Total Ads",
                    textAlign: TextAlign.left, style: TextStyle(fontSize: 15)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Column(
                          children: [
                            Text("Approved Ads",
                                style: new TextStyle(
                                    fontSize: 20, color: Colors.white)),
                            SizedBox(height: 20),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    Icons.check,
                                    color: Colors.white,
                                  ),
                                  Text("4",
                                      style: TextStyle(
                                          fontSize: 30, color: Colors.white)),
                                ])
                          ],
                        ),
                      )),
                  Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Column(
                          children: [
                            Text("Rejected Ads",
                                style: new TextStyle(
                                    fontSize: 20, color: Colors.white)),
                            SizedBox(height: 20),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    Icons.close,
                                    color: Colors.white,
                                  ),
                                  Text("2",
                                      style: TextStyle(
                                          fontSize: 30, color: Colors.white)),
                                ])
                          ],
                        ),
                      )),
                  Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.deepOrangeAccent,
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Column(
                          children: [
                            Text("Pending Ads",
                                style: new TextStyle(
                                    fontSize: 20, color: Colors.white)),
                            SizedBox(height: 20),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    Icons.event_note,
                                    color: Colors.white,
                                  ),
                                  Text("3",
                                      style: TextStyle(
                                          fontSize: 30, color: Colors.white)),
                                ])
                          ],
                        ),
                      ))
                ],
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Pending By Categories"),
                  Text("See More", style: TextStyle(color: Colors.green)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 100,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                              width: 100,
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0))),
                              child: Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Text(
                                  "Cars",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                              )),
                          Container(
                              width: 100,
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0))),
                              child: Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Text(
                                  "Electronics",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                              )),
                          Container(
                              width: 100,
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0))),
                              child: Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Text(
                                  "Laptops",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                              )),
                        ]),
                  ),
                  Container(
                    height: 100,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                              width: 100,
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0))),
                              child: Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Text(
                                  "Properties",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                              )),
                          Container(
                              width: 100,
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0))),
                              child: Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Text(
                                  "Mobile",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                              )),
                          Container(
                              width: 100,
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0))),
                              child: Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Text(
                                  "Lands",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                              )),
                        ]),
                  ),
                  Container(
                    height: 100,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                              width: 100,
                              decoration: BoxDecoration(
                                  color: Colors.deepOrange,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0))),
                              child: Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Text(
                                  "Jobs",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                              )),
                          Container(
                              width: 100,
                              decoration: BoxDecoration(
                                  color: Colors.deepOrange,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0))),
                              child: Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Text(
                                  "Watches",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                              )),
                          Container(
                              width: 100,
                              decoration: BoxDecoration(
                                  color: Colors.deepOrange,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0))),
                              child: Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Text(
                                  "Apple",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                              )),
                        ]),
                  ),
                ],
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Pending Ads",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text("See more",
                        style: TextStyle(fontSize: 15, color: Colors.green)),
                  ]),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    width: 325,
                    height: 225,
                    child: ListView.builder(
                      itemCount: 3,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index){
                        if(ads[index]["status"]=="Pending")
                          return Stack(
                              children: [
                              InkWell(
                                onTap:(){
                                  Ads obj= Ads(ads[index]["image"],ads[index]["title"],ads[index]["description"],ads[index]["category"],ads[index]["subcategory"],ads[index]["type/maker"],ads[index]["datePosted"],ads[index]["omr"],ads[index]["status"],ads[index]["loc"],ads[index]["name"],ads[index]["email"],ads[index]["number"]);
                                  data.setad(obj);
                                  navigateToAd(context);
                                },
                                child: Card(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: 150,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: 200,
                                              height: 100,
                                              child: Image.asset(ads[index]["image"])),
                                          Text(ads[index]["title"],style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                                          Text("    "+ads[index]["description"],style: TextStyle(fontSize: 9),),
                                          Text("Category",style: TextStyle(fontSize: 9, fontWeight: FontWeight.bold)),
                                          Container(
                                              decoration: BoxDecoration(
                                                  color: Colors.deepOrange,
                                                  borderRadius:
                                                  BorderRadius.all(Radius.circular(2.0))),
                                              child: Padding(
                                                padding: const EdgeInsets.all(2.0),
                                                child: Text(
                                                  ads[index]["category"],
                                                  style: TextStyle(
                                                      color: Colors.white, fontSize: 10,),
                                                  textAlign: TextAlign.center,
                                                ),
                                              )),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.end,
                                            children: [
                                              Text("OMR: "),
                                              Text(ads[index]["omr"],style: TextStyle(fontSize: 25),)
                                            ],
                                          ),
                                          Text("Posted on: "+ads[index]["datePosted"]),
                                        ],
                                      ),
                                    ),
                                  )
                            ),
                              ),
                            Positioned(
                                top: 0,
                                right: 0,
                                child: Container(
                                  color: Colors.blue,
                                  child: Text(ads[index]["status"],style: TextStyle(color: Colors.white,fontSize: 20),),
                                ))
                          ]);
                        return null;
                      },
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
