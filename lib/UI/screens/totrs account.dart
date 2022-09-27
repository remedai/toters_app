import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class account extends StatefulWidget {
  const account({Key? key}) : super(key: key);

  @override
  _accountState createState() => _accountState();
}

class _accountState extends State<account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children:
          [Text("Kawthar Maher Ali",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
        ],)

      ),
body: ListView(
  scrollDirection: Axis.vertical,
  children: [

    Column(children: [
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(children: [
          Container(width: 200,height: 60,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30)

          ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                Row(children: [
                  Icon(Icons.wallet_giftcard,color: Colors.teal,size: 30,),
                  SizedBox(width: 5,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text("Green",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15)),
                    Text(" 0 Pts",style: TextStyle(color: Colors.grey.shade300,fontWeight: FontWeight.bold,fontSize: 15)),
                  ],)

                ],),
                Icon(Icons.arrow_forward_ios_outlined,color: Colors.teal,size: 30,),


              ],),
            ),
          )
        ],),
      ),
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(width: 500,height: 150,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),

      ),

        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(children: [
            app(Icon(Icons.person,color: Colors.grey,size: 30,),"Profile"),
            SizedBox(width: 20,),
            app(Icon(Icons.support_agent_outlined,color: Colors.grey), "Support"),
            SizedBox(width: 20,),

            app(Icon(Icons.payment_rounded,color: Colors.grey), "Payments"),
            SizedBox(width: 20,),
Stack(

  clipBehavior: Clip.none,
  children: [
    app(Icon(Icons.language_rounded,color: Colors.grey), "Language"),
Positioned(
  right: 1,
  child:  Container(
  width: 25,
  height: 25,
  decoration: BoxDecoration(
      color: Colors.teal,
      borderRadius: BorderRadius.circular(25)

  ),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text("En",style: TextStyle(color: Colors.white),),
    ],
  ),
) ,
    )

  ],

),

          ],),
        ),
      ),
    ),
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(width: 500,height: 220,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),

          ),

          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Toters Cash",style: TextStyle(fontSize: 18),),
                  SizedBox(width: 20,),
                  Icon(Icons.info_outline_rounded,color: Colors.teal,size: 30,),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.wallet_travel_rounded,color: Colors.grey,size: 30,),
    SizedBox(width: 20,),

    Text("Wallet",style: TextStyle(fontWeight:FontWeight.bold )),
                      ],
                    ),
                  ),
                  Text("IQD 0",style: TextStyle(color: Colors.teal,fontWeight:FontWeight.bold,fontSize: 15),),
                ],
              ),
              //SizedBox(height: 10,),
Container(
  width: 450,
  height: 1,
color: Colors.grey.shade100,
),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.add,color: Colors.grey,size: 30,),
                    SizedBox(width: 20,),

                    Text("Add Funds",style: TextStyle(fontWeight:FontWeight.bold ),),
                  ],
                ),
              ),
              //SizedBox(height: 10,),
              Container(
                width: 450,
                height: 1,
                color: Colors.grey.shade100,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(Icons.arrow_upward_sharp,color: Colors.grey,size: 30,),
                    SizedBox(width: 20,),
                    Text("Send Funds ",style: TextStyle(fontWeight:FontWeight.bold )),
                  ],
                ),
              ),

            ],),
          ),
        ),
      ),

      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(width: 500,height: 220,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),

          ),

          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(" Promotions",style: TextStyle(fontSize: 18),),
                  SizedBox(width: 20,),
                 // Icon(Icons.info_outline_rounded,color: Colors.teal,size: 30,),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(Icons.polymer_sharp,color: Colors.grey,size: 30,),
                        SizedBox(width: 20,),

                        Text("Credits",style: TextStyle(fontWeight:FontWeight.bold )),
                      ],
                    ),
                  ),
                  Text("IQD 0",style: TextStyle(color: Colors.teal,fontWeight:FontWeight.bold,fontSize: 15),),
                ],
              ),
              SizedBox(height: 20,),
              Container(
                width: 450,
                height: 1,
                color: Colors.grey.shade100,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(Icons.discount,color: Colors.grey,size: 30,),
                    SizedBox(width: 20,),

                    Text("Add Promo Code",style: TextStyle(fontWeight:FontWeight.bold ),),
                  ],
                ),
              ),
              SizedBox(height: 10,),


            ],),
          ),
        ),
      ),


      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(width: 500,height:350,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),

          ),

          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(" Accoun details",style: TextStyle(fontSize: 18),),
                  SizedBox(width: 20,),
                  // Icon(Icons.info_outline_rounded,color: Colors.teal,size: 30,),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(Icons.notifications_none,color: Colors.grey,size: 30,),
                        SizedBox(width: 20,),

                        Text("Notifications",style: TextStyle(fontWeight:FontWeight.bold )),
                      ],
                    ),
                  ),
                ],
              ),
            //  SizedBox(height: 10,),
              Container(
                width: 450,
                height: 1,
                color: Colors.grey.shade100,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,

                  children: [
                    Icon(Icons.location_on_outlined,color: Colors.grey,size: 30,),
                    SizedBox(width: 20,),

                    Text("Addresses",style: TextStyle(fontWeight:FontWeight.bold ),),
                  ],
                ),
              ),
             // SizedBox(height: 10,),
              Container(
                width: 450,
                height: 1,
                color: Colors.grey.shade100,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,

                  children: [
                    Icon(Icons.favorite_border,color: Colors.grey,size: 30,),
                    SizedBox(width: 20,),

                    Text("Favorites",style: TextStyle(fontWeight:FontWeight.bold ),),
                  ],
                ),
              ),
             // SizedBox(height: 10,),
              Container(
                width: 450,
                height: 1,
                color: Colors.grey.shade100,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,

                  children: [
                    Icon(Icons.room_preferences_outlined,color: Colors.grey,size: 30,),
                    SizedBox(width: 20,),

                    Text("Proferences",style: TextStyle(fontWeight:FontWeight.bold ),),
                  ],
                ),
              ),

             // SizedBox(height: 10,),
              Container(
                width: 450,
                height: 1,
                color: Colors.grey.shade100,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,

                  children: [
                    Icon(Icons.person_rounded,color: Colors.grey,size: 30,),
                    SizedBox(width: 20,),

                    Text("Refer a friend",style: TextStyle(fontWeight:FontWeight.bold ),),
                  ],
                ),
              ),
              SizedBox(height: 10,),

            ],),
          ),
        ),
      ),


      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(width: 500,height:350,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),

          ),

          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(" Help center",style: TextStyle(fontSize: 18),),
                    SizedBox(width: 20,),
                    // Icon(Icons.info_outline_rounded,color: Colors.teal,size: 30,),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(Icons.support_agent_outlined,color: Colors.grey,size: 30,),
                          SizedBox(width: 20,),

                          Text("Get Support",style: TextStyle(fontWeight:FontWeight.bold )),
                        ],
                      ),
                    ),
                  ],
                ),
                //  SizedBox(height: 10,),
                Container(
                  width: 450,
                  height: 1,
                  color: Colors.grey.shade100,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,

                    children: [
                      Icon(Icons.airplane_ticket,color: Colors.grey,size: 30,),
                      SizedBox(width: 20,),

                      Text("Supper Tickets",style: TextStyle(fontWeight:FontWeight.bold ),),
                    ],
                  ),
                ),
                // SizedBox(height: 10,),
                Container(
                  width: 450,
                  height: 1,
                  color: Colors.grey.shade100,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,

                    children: [
                      Icon(Icons.precision_manufacturing_outlined,color: Colors.grey,size: 30,),
                      SizedBox(width: 20,),

                      Text("Legal",style: TextStyle(fontWeight:FontWeight.bold ),),
                    ],
                  ),
                ),
                // SizedBox(height: 10,),
                Container(
                  width: 450,
                  height: 1,
                  color: Colors.grey.shade100,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,

                    children: [
                      Icon(Icons.wb_auto,color: Colors.grey,size: 30,),
                      SizedBox(width: 20,),

                      Text("FAQ",style: TextStyle(fontWeight:FontWeight.bold ),),
                    ],
                  ),
                ),
                // SizedBox(height: 10,),
                SizedBox(height: 10,),

              ],),
          ),
        ),
      ),

      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(width: 500,height:130,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),

          ),

          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(Icons.exit_to_app_sharp,color: Colors.red,size: 30,),
                          SizedBox(width: 20,),

                          Text("Sign out",style: TextStyle(fontWeight:FontWeight.bold,color: Colors.red,fontSize: 20 )),
                        ],
                      ),
                    ),
                  ],
                ),
                //  SizedBox(height: 10,),


                // SizedBox(height: 10,),
                SizedBox(height: 10,),

              ],),
          ),
        ),
      )


    ],
    )
  ],

),
    );
  }
  Column app(Icon iconslid,String nameIcon){
   return
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
        width: 80,
        height: 80,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.grey.shade100

        ),
            child:  iconslid
          )    ,
           SizedBox(height: 10,),
           Text(nameIcon,style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold),)

        ],);
  }
// Row iconText(String header,Icon phtoIcon,String nameIcon){
//     return Row(
//       children: [
//         Text("Toters Cash",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)
//
//       ],
//
//     )

}
