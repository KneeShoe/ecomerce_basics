import 'package:flutter/material.dart';
import 'package:ecomerce_basics/data.dart';

import 'adDetails.dart';



class allAds extends StatefulWidget {
  @override
  _allAdsState createState() => _allAdsState();
}

class _allAdsState extends State<allAds> {


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
      "name": "Gitendra Choudhary",
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
      "name": "Pitendra Choudharian",
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
      "name": "Ditendra Choudharies",
      "number": "9623876635",
      "email": "Jitendra932661@gmail.com",
    },
  ];

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
        height: 1200,
        width:600,
        child: GridView.builder(
          itemCount: 4,
          itemBuilder: (BuildContext context, int index){
            return Stack(
                children: [
                  InkWell(
                    onTap:(){
                      var obj= Ads(ads[index]["image"],ads[index]["title"],ads[index]["description"],ads[index]["category"],ads[index]["subcategory"],ads[index]["type/maker"],ads[index]["datePosted"],ads[index]["omr"],ads[index]["status"],ads[index]["loc"],ads[index]["name"],ads[index]["email"],ads[index]["number"]);
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
                  if(ads[index]["status"]=="Pending")
                    Positioned(
                      top: 0,
                      right: 0,
                      child: Container(
                        color: Colors.blue,
                        child: Text(ads[index]["status"],style: TextStyle(color: Colors.white,fontSize: 20),),
                      )),
                  if(ads[index]["status"]=="Accepted")
                    Positioned(
                        top: 0,
                        right: 0,
                        child: Container(
                          color: Colors.green,
                          child: Text(ads[index]["status"],style: TextStyle(color: Colors.white,fontSize: 20),),
                        )),
                  if(ads[index]["status"]=="Rejected")
                    Positioned(
                        top: 0,
                        right: 0,
                        child: Container(
                          color: Colors.red,
                          child: Text(ads[index]["status"],style: TextStyle(color: Colors.white,fontSize: 20),),
                        )),
                ]);
            return null;
          }, gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: .8)
          ,
        )
      )
    );
  }
}
