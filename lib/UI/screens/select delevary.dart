import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class delevary extends StatefulWidget {
  const delevary({Key? key}) : super(key: key);

  @override
  _delevaryState createState() => _delevaryState();
}

class _delevaryState extends State<delevary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        toolbarHeight: 90,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
          Text("We delever anything that fits on a\n motorbike !",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)

        ],),
      ),
body: Center(
    child:Column(children: [
       Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Request a butler to: ",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(20.0),
            child:   Container(
              width: 450,
              height: 140,
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [BoxShadow(
                      color: Colors.grey.shade100,
                      offset: Offset(0,3),
                      spreadRadius: 3,
                      blurRadius: 4
                  )]
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Deliver Your stuff ",style: TextStyle(color: Colors.teal,fontSize: 20,fontWeight: FontWeight.bold),),
                      SizedBox(height: 10,),
                      Text("e.g You forget your keys at home \n and need to getthem delivered to\n the office ",style: TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
                  Image.asset("img/delivery.png",width: 70,height: 70,),
                  Icon(Icons.arrow_forward_ios_rounded,color: Colors.teal,size: 30,)
                ],),
            ),
          )
        ],),
      ),


          Padding(
            padding: const EdgeInsets.all(20.0),
            child:   Container(
              width: 450,
              height: 140,
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [BoxShadow(
                      color: Colors.grey.shade100,
                      offset: Offset(0,3),
                      spreadRadius: 3,
                      blurRadius: 4
                  )]
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Buy something ",style: TextStyle(color: Colors.teal,fontSize: 20,fontWeight: FontWeight.bold),),
                      SizedBox(height: 10,),
                      Text("Dont find what you where looking  \n for  at our stores ? Our butlers can\n  buy whatever you need from your \nstore of choice ",style: TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
                  Image.asset("img/delivery.png",width: 70,height: 70,),
                  Icon(Icons.arrow_forward_ios_rounded,color: Colors.teal,size: 30,)
                ],),
            ),
          )
        ],),
      ),






    );
  }
}
