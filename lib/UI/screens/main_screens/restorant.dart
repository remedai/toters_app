import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'dart:convert';
import 'dart:html';
import 'show_card.dart';
//some veriable to card
var img_card;
var name_card1;
var coent;
var requaiedrd_card;
var rate_card;
////////////////
//veriable for data base
var img_rest=[''];
var name_rest=[""];
var description=[""];
var time_made=[""];
var rate=[""];
var comment=[""];
var taq_res=[""];
var menu=[""];
var ratesss=[];
class restorent_liflet extends StatefulWidget {
  const restorent_liflet({Key? key}) : super(key: key);

  @override
  _restorent_lifletState createState() => _restorent_lifletState();

}
class _restorent_lifletState extends State<restorent_liflet> {
  @override
  late final ScrollController _scrollController;
  Future getData() async{
    var url=Uri.parse("http://localhost:4000/restorant_liflet_toters");
    Response response= await get(url);
    String body =response.body;
    img_rest.clear();
    name_rest.clear();
    description.clear();
    time_made.clear();
    rate.clear();
    comment.clear();
    taq_res.clear();
    menu.clear();
    List<dynamic> list1=json.decode(body);
    for (int i=0; i<list1.length; i++){
      setState(() {
        img_rest.add("${list1[i]["img_restorant"]}");
        name_rest.add("${list1[i]["name_restorant"]}");
        description.add("${list1[i]["descreption"]}");
        time_made.add("${list1[i]["time_require_for_made"]}");
        rate.add("${list1[i]["rate"]}");
        comment.add("${list1[i]["commant"]}");
        taq_res.add("${list1[i]["	taq_restorent"]}");
        menu.add("${list1[i]["taq_menu_restorant"]}");
        var a = int.parse('${rate[i]}');
        ratesss.add(a);
      });
      print(list1);
    }

  }

  @override
  void initState() {
    //TODO: implement initState
    super.initState();
    _scrollController = ScrollController();
    getData();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _scrollController.dispose();

  }


  Widget build(BuildContext context) {

     return Scaffold(
         body: ListView.builder(
         scrollDirection: Axis.vertical,
         controller: _scrollController,
         itemCount: img_rest.length,
         itemBuilder: (BuildContext c, int indx) {

           return

             cards(img_rest[indx],
               name_rest[indx],
               description[indx],
               time_made[indx],
               ratesss[indx],
             );
         }
     )
     );
  }
  Column cards(String name_photo, String mall, String kaind_mall,String time,int rate)
  {
  img_card=name_photo;
  name_card1=mall;
  coent=kaind_mall;
  requaiedrd_card=time;
  rate_card=rate;
  GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context )=>card1(
            photos: img_card,
            name_card: name_card1,
            meal:coent,
            tim_req:requaiedrd_card,
            rate1:rate_card
        )
        )
        );
      }
  );

  return
    Column(

        children: [

        Container(
        width: 450,
        height: 200,
        child: Stack(
            clipBehavior: Clip.none,
            children: [



            Container(


                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    image: DecorationImage(

                        image: NetworkImage(name_photo), fit: BoxFit.cover



    ),
                  ),

           child:   GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>card1(
                        photos: img_card,
                        name_card: name_card1,
                        meal:coent,
                        tim_req:requaiedrd_card,
                        rate1:rate_card
                    )
                    )
                    );
                  }
              ),
            ),
                Positioned(
                  left: 10,
                  top: 10,
                  child: Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                  ),
                ),
                Positioned(
                    left: 10,
                    bottom: -20,
                    child: Container(
                      width: 50,
                      height: 50,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "$time",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "M",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 8,
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
            )),

        Padding(
          padding: const EdgeInsets.only(left: 250),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    mall,
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [Text('\$\$ $kaind_mall ',style: TextStyle(),)],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
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
                                color: Colors.green)),
                        Icon(
                          Icons.add_circle_outline,
                          color: Colors.green,
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
                          width: 60,
                          height: 40,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade100,
                              borderRadius: BorderRadius.circular(12)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("$rate"),
                              Icon(
                                Icons.star,
                                color: Colors.green,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),



        SizedBox(height: 20,),

      ],
    );
  }
}


