import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../main_screens/toture.dart';
import 'data_serch.dart';
class serch extends StatefulWidget {
  const serch({Key? key}) : super(key: key);

  @override
  _serchState createState() => _serchState();
}

class _serchState extends State<serch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,

title: Text("Serch for any thing ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),),
leading: Icon(Icons.search,color:Colors.black,),

      ),
      body: Center(
        child: Expanded(
          child: ListView(scrollDirection: Axis.vertical,

            children: [
              Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
            color: Colors.teal,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Image.asset("img/delivery.png",width: 50,height: 50,),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Text("Order any thing !",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),),
                     SizedBox(height: 10),
                      Text("New on Toters! If it fits on a",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                      Text("motorbike we can delivery" ,style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),

                    ],),

                  ),
                RaisedButton(
                  color: Colors.teal,
                  onPressed:(){
                  Navigator.of(context).pop();

                },
                 child:Icon(Icons.arrow_forward_ios_outlined,size: 20,color: Colors.white,),

                ),

                  ],
                )

              ),

                          ),
            Container(width: 500,height: 500,
                child: explorl()
            )

            ],



          ),

        ),


      ),
    );
  }
}
