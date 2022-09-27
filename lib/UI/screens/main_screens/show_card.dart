
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'restorant.dart';

class card1 extends StatefulWidget {
  final String photos;
  final String name_card;
  final String meal;
  final String tim_req;
  final int rate1;
  card1({
    required this.photos,
    required this.name_card,
    required this.meal,
    required this.tim_req,
    required this.rate1,
  });
var photos2;
var name_card2;
  var  meal2;
  var  tim_req2;
  var  rate12;

  @override
  _card1State createState() => _card1State();
}

class _card1State extends State<card1> {
  @override
  String radios = '';
bool hech=false;

  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView(

        children: [

          Container(
            width: MediaQuery.of(context).size.width,
            height: 250,
            child: Stack(
              clipBehavior: Clip.none,
              children: [

                Container(

                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(

                      image: NetworkImage(widget.photos),

                      fit: BoxFit.cover,
                    ),
                  ),


                ),
                Positioned(
                    right: 10,
                    bottom: -20,
                    child: Container(
                      width: 100,
                      height: 50,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            widget.tim_req,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "mins",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 10,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade300,
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset: Offset(0, 1),
                            )
                          ]),
                    )),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 250),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      widget.name_card,
                      style: TextStyle(fontSize: 30, color: Colors.black),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [Text('\$\$  '), Text(widget.meal)],
                ),
                Row(
                  children: [
                    Container(
                      width: 100,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.green.shade100,
                          borderRadius: BorderRadius.circular(12)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("اكسب النقاط",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.teal)),
                          Icon(
                            Icons.add_circle_outline,
                            color: Colors.teal,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            width: 130,
                            height: 40,
                            decoration: BoxDecoration(
                                color: Colors.deepOrangeAccent.shade100,
                                borderRadius: BorderRadius.circular(12)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "%10استعاده النقود",
                                  style: TextStyle(color: Colors.red),
                                ),
                                Icon(
                                  Icons.monetization_on_outlined,
                                  color: Colors.red,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text("${widget.rate1}",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 40,
                                color: Colors.black)),
                        SizedBox(
                          width: 3,
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.teal,
                                  size: 30,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.teal,
                                  size: 30,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.teal,
                                  size: 30,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.teal,
                                  size: 30,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.grey.shade100,
                                  size: 30,
                                ),
                              ],
                            ),
                            // Text("نقطة",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black)),
                            Text("استناد الى 1200 تقيم ")
//Icon(Icons.arrow_back_outlined,size: 30,color: Colors.black,)
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [

                        Column(
                          children: [


                            GestureDetector(
                                onTap:(){

                                  Navigator.of(context).pop();
                                }  , child:Icon(

    Icons.arrow_forward_ios,



    size: 30,
    color: Colors.teal,
    )),


                          ],
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 3,
          ),
          Container(
            width: 400,
            height: 1,
            color: Colors.grey,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(
                Icons.star,
                color: Colors.teal,
                size: 20,
              ),
              Icon(
                Icons.star,
                color: Colors.teal,
                size: 20,
              ),
              Icon(
                Icons.star,
                color: Colors.teal,
                size: 20,
              ),
              Icon(
                Icons.star,
                color: Colors.teal,
                size: 20,
              ),
              Icon(
                Icons.star,
                color: Colors.grey.shade100,
                size: 20,
              ),
              Text("عدنان",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.black)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text("الطعم رهيب حبيته كلش والتوصيل هم انشالله مو اخر مره ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.black)),
              Text("اread moore ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.teal)),
            ],
          ),

        ],
      )
    );
  }
}
