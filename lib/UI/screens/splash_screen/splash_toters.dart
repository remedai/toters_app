import 'dart:html';
import 'package:flutter/material.dart';

import '../../../profile_toters.dart';
import '../main_screens/toture.dart';
class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  _splashState createState() => _splashState();
}

class _splashState extends State<splash> {
  Future Delay() async{
    await new Future.delayed(const Duration(seconds: 1));
    Navigator.push(context,MaterialPageRoute(builder: (context)=>men_bar()),);
  }
  void initState(){
    super.initState();
    Delay();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,

        decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage("https://mir-s3-cdn-cf.behance.net/projects/404/a769ce130102359.Y3JvcCwxMDgwLDg0NCwwLDU4OA.jpeg"),
              fit: BoxFit.cover,
            )

        ),
      ),



    );
  }
}
