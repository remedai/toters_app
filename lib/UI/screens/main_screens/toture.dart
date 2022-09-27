import 'package:carousel_images/carousel_images.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:toters_app/UI/screens/main_screens/restorant.dart';

var img_slide_liflet2=[''];
var img_offer2=[""];
var name_offer2=[""];
var tag_restorant2=[""];
class toturs_home extends StatefulWidget {
  const toturs_home({Key? key}) : super(key: key);

  @override
  _toturs_homeState createState() => _toturs_homeState();
}
class _toturs_homeState extends State<toturs_home> {

  Future getData() async{
    var url=Uri.parse("http://localhost:4000/");
    Response response= await get(url);

    String body =response.body;
    img_slide_liflet2.clear();
    img_offer2.clear();
    name_offer2.clear();
    tag_restorant2.clear();

    List<dynamic> list1=json.decode(body);

    for (int i=0; i<list1.length; i++){
      setState(() {
        img_slide_liflet2.add("${list1[i]["img_restorant"]}");
        img_offer2.add("${list1[i]["name_restorant"]}");
        name_offer2.add("${list1[i]["descreption"]}");
        tag_restorant2.add("${list1[i]["time_require_for_made"]}");

      });
      print(list1);
    }

  }
  var size;
  var width_line;

  final List<String> listImages = [

    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDCVmpTOaY4n50QGUgDSwXsRhxMffrfXf1Zg&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDCVmpTOaY4n50QGUgDSwXsRhxMffrfXf1Zg&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDCVmpTOaY4n50QGUgDSwXsRhxMffrfXf1Zg&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDCVmpTOaY4n50QGUgDSwXsRhxMffrfXf1Zg&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDCVmpTOaY4n50QGUgDSwXsRhxMffrfXf1Zg&usqp=CAU',
  ];
  @override
  void initState(){
    super.initState();
    getData();

  }
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 1,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    "img/fillter.png",
                    width: 50,
                    height: 50,
                  ),
                  Icon(
                    Icons.notifications_none,
                    size: 30,
                    color: Colors.grey,
                  )
                ],
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Text(
                        "توصيل الى ",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.keyboard_arrow_down_outlined,
                            size: 30,
                            color: Colors.black,
                          ),
                          Text("المنزل  ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.black)),
                        ],
                      )
                    ],
                  )
                ],
              )
            ],
          )),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            Text("نقطة",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.black)),
                            Image.asset(
                              "img/arrow_back.png",
                              width: 30,
                              height: 20,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text("3.8K",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 40,
                                color: Colors.black)),
                      ],
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.info_outline_rounded,
                                  size: 30,
                                  color: Colors.green,
                                ),
                                Text("الفئة الخضراء",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 40,
                                        color: Colors.green)),
                              ],
                            ),
                            Row(
                              children: [
                                line(),
                                SizedBox(
                                  width: 2,
                                ),
                                line(),
                                SizedBox(
                                  width: 2,
                                ),
                                line(),
                                SizedBox(
                                  width: 2,
                                ),
                                line(),
                                SizedBox(
                                  width: 2,
                                ),
                                line(),
                                SizedBox(
                                  width: 2,
                                ),
                                line(),
                                SizedBox(
                                  width: 2,
                                ),
                                line(),
                                SizedBox(
                                  width: 2,
                                ),
                                line(),
                                SizedBox(
                                  width: 2,
                                ),
                                line(),
                                SizedBox(
                                  width: 2,
                                ),
                                line(),
                                SizedBox(
                                  width: 2,
                                ),
                                line(),
                                SizedBox(
                                  width: 2,
                                ),
                                Container(
                                  width: 20,
                                  height: 3,
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("تبقى 9 طلبات اضافية لغاية اغسطس 31 للترقية الى",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.grey)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(" الفئة الذهبية ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.grey)),
                  ],
                ),
                Container(
                  width: 500,
                  height: 300.0,
                  decoration: BoxDecoration(
                    color: Colors.teal,

                  ),

                  child: CarouselImages(
                    scaleFactor: 0.6,

                    listImages: listImages,
                    height: 300.0,
                    borderRadius: 30.0,
                    cachedNetworkImage: true,
                    verticalAlignment: Alignment.topCenter,

                  ),),
                SizedBox(
                  height: 30,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    card_kind("img/grocery shop.jpg", "البقالة"),
                    card_kind("img/fresh.png", "توترز فريش"),
                    card_kind("img/burger.png", "المطاعم"),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    card_kind("img/wallet.png", "اضف رصيد"),
                    card_kind("img/delevery_man.jpg", "عامل توصيل"),
                    card_kind("img/shop.png", "متجر "),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  width: 600,
                  height: 10,
                  color: Colors.grey,
                ),
                SizedBox(height: 20),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.arrow_back_ios,
                          size: 30,
                          color: Colors.green,
                        ),
                        Text(
                          "خصومات  اسبوعية ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ],
                    ),
                    Text(
                      "احصل على خصم 50% على مطتعم هذا الاسبوع ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.grey),
                    ),
                  ],
                ),
                Text(
                  "!جرب المطاعم المميزة مع مجموعة وجبات رائعة",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.grey),
                ),

                Container(
                    width: 1000,            height: 500,
                    padding: const EdgeInsets.only(top:5),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: restorent_liflet(),
                          )]
                    )),

                 SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
        ),
      ),

    );
  }

  Row card_kind(String img_photo, String kind_img) {
    return Row(
      children: [
        Container(
          width: 130,
          height: 130,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 10,
                  offset: Offset(0, 4),
                )
              ]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                img_photo,
                width: 60,
                height: 60,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                kind_img,
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        )
      ],
    );
  }

  Container line() {
    return Container(
      width: 25,
      height: 3,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }

}
