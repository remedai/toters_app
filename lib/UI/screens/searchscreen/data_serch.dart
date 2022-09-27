import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import '../main_screens/restorant.dart';
var img=[""];
var name=[''];
var caption=[''];
var count_shops=[""];
var taq=[''];
class explorl extends StatefulWidget {
  const explorl({Key? key}) : super(key: key);
  @override
  _explorlState createState() => _explorlState();
}
class _explorlState extends State<explorl> {
  @override
  late final ScrollController _scrollController;
  Future getData() async{
    var url=Uri.parse("http://localhost:4000/search_toters");
    Response response= await get(url);
    String body =response.body;
    img.clear();
    name.clear();
    caption.clear();
    count_shops.clear();
    List<dynamic> list1=json.decode(body);
    for (int i=0; i<list1.length; i++){
      setState(() {
        img.add("${list1[i]["img"]}");
        name.add("${list1[i]["name"]}");
        count_shops.add("${list1[i]["count_marcer"] }");
        caption.add("${list1[i]["caption"]}");
        taq.add("${list1[i]["tag_restorant"]}");

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
    return ListView.builder(
        scrollDirection: Axis.vertical,
        controller: _scrollController,
        itemCount: img.length,itemBuilder: (BuildContext c,int indx){
      return
      leflet(
          img[indx],
          name[indx],
          caption[indx],
          count_shops[indx]);
    }

    );
  }

  Row leflet(String img,String name,String caption,String stors){
    return    Row(children: [
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(width: 200,height: 100,
          decoration:BoxDecoration (
            color: Colors.green,

          ),
          child: Image.asset(img),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(children: [
              Text(name,style: TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.bold),),
            ],),
            Padding(
              padding: const EdgeInsets.only(top: 5,bottom: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [ Text(caption,style: TextStyle(fontSize: 15,color: Colors.grey,fontWeight: FontWeight.bold),),
                  // Text("Off from selected stores  ",style: TextStyle(fontSize: 15,color: Colors.grey,fontWeight: FontWeight.bold),),
                ],),
            ),

            Row(
              children: [
               Text(stors,style: TextStyle(fontSize: 20,color: Colors.teal,fontWeight: FontWeight.bold),),

                Text("  Stores ",style: TextStyle(fontSize: 20,color: Colors.teal,fontWeight: FontWeight.bold),),
              ],
            ),

          ],),
      )

    ],);


  }

  }


