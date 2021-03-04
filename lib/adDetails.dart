import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ecomerce_basics/data.dart';
import 'package:ecomerce_basics/Dialogs.dart';

class adDetails extends StatefulWidget {
  @override
  _adDetailsState createState() => _adDetailsState();
}

class _adDetailsState extends State<adDetails> {
  var ad = data.getad();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        iconTheme: IconThemeData.fallback(),
      ),
      body: Column(
        children: [
          CarouselSlider(
              items: [Image.asset(ad.image)],
              options: CarouselOptions(
                height: 200,
                aspectRatio: 16 / 9,
                viewportFraction: 0.8,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                scrollDirection: Axis.horizontal,
              )),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    if(ad.status=="Rejected")
                    Container(
                      color: Colors.red,
                      child: Text(
                        ad.status,
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                    if(ad.status=="Accepted")
                      Container(
                        color: Colors.green,
                        child: Text(
                          ad.status,
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    if(ad.status=="Pending")
                      Container(
                        color: Colors.blue,
                        child: Text(
                          ad.status,
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    Row(
                      children: [
                        Text(
                          "OMR: ",
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          ad.OMR,
                          style: TextStyle(fontSize: 25),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 15,),
                Text(
                  ad.title,
                  style: TextStyle(fontSize: 30),
                ),
                SizedBox(height: 15,),
                Text(
                  "Description",
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),
                ),
                Text(ad.description),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text("Category",
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15)),
                        Container(
                            width: 100,
                            decoration: BoxDecoration(
                                color: Colors.deepOrange,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0))),
                            child: Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Text(
                                ad.category,
                                style:
                                    TextStyle(color: Colors.white, fontSize: 15),
                              ),
                            )),
                      ],
                    ),
                    Column(
                      children: [
                        Text("Subcategory",
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15)),
                        Container(
                            width: 100,
                            decoration: BoxDecoration(
                                color: Colors.deepOrange,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0))),
                            child: Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Text(
                                ad.subcategory,
                                style:
                                    TextStyle(color: Colors.white, fontSize: 15),
                              ),
                            )),
                      ],
                    ),
                    Column(
                      children: [
                        Text("Type/Maker",
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15)),
                        Container(
                            width: 100,
                            decoration: BoxDecoration(
                                color: Colors.deepOrange,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0))),
                            child: Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Text(
                                ad.typemaker,
                                style:
                                    TextStyle(color: Colors.white, fontSize: 15),
                              ),
                            )),
                      ],
                    ),
                  ],
                ),
                Divider(),
                Text("Ad location",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                Row(
                  children: [
                    Icon(Icons.location_on_outlined),
                    Text(ad.location,style: TextStyle(fontSize: 15),)
                  ],
                ),
                Divider(),
                Text(ad.name,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
                Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(ad.number,style: TextStyle(fontSize: 15)),
                    Icon(Icons.mail),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(ad.email,style: TextStyle(fontSize: 15)),
                    Icon(Icons.call),
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      child: Container(
                        padding: EdgeInsets.all(8),
                        width: 80,
                        height: 30,
                        child: Text(
                          "Approve",
                          style: new TextStyle(fontSize: 15, color: Colors.white, ),
                          textAlign: TextAlign.center,
                        ),
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius:
                            BorderRadius.all(Radius.circular(10.0))),
                      ),
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return Accepted();
                            });
                      },
                    ),InkWell(
                      child: Container(
                        padding: EdgeInsets.all(8),
                        width: 80,
                        height: 30,
                        child: Text(
                          "Reject",
                          style: new TextStyle(fontSize: 15, color: Colors.white, ),
                          textAlign: TextAlign.center,
                        ),
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius:
                            BorderRadius.all(Radius.circular(10.0))),
                      ),
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return Rejected();
                            });
                      },
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
