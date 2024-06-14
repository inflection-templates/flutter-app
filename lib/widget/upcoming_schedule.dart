import 'package:flutter/material.dart';

class UpcomingSchedule extends StatelessWidget {
  const UpcomingSchedule({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "About Doctor",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500
            ),
          ),
          SizedBox(height: 15),
          Container(
            padding: EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 4,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column( 
                children: [
                  ListTile(
                    title: Text("Dr.Govind Shah",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    subtitle: Text("Therapiest"),
                    trailing: CircleAvatar(
                      radius: 25,
                      backgroundImage:AssetImage("assets/images/D2.jpg"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Divider(
                      thickness: 1,
                      height: 20,
                    ),
                  ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.calendar_month,
                        color:Colors.black,
                        ),
                        SizedBox(width: 5),
                        Text(
                          "10/05/2024",
                          style: TextStyle(
                            color: Colors.black,
                          ),

                        )
                      ],
                  
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.access_time_filled,
                          color:Colors.black,
                        ),
                        SizedBox(width: 5),
                        Text(
                          "09:00PM",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.green,
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          "Confirmed",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: (){},
                           child: Container(
                            width: 50,
                            padding: EdgeInsetsDirectional.symmetric(vertical: 12),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5)
                            ),
                            child: Center(
                              child: Text (
                                "Cancle",
                              style:TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              )
                              ) ,
                              ),
                        ),
                        ),
                      ],
                    )
                    
                  ],
                ) 
                ],
              ),
            ),

          ),
        ],
      ),
    );
  }
}
