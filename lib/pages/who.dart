import 'package:ditto/data/latest_workout.dart';
import 'package:ditto/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class TodayTargetDetailPage extends StatefulWidget {
  const TodayTargetDetailPage({ Key? key }) : super(key: key);

  @override
  _TodayTargetDetailPageState createState() => _TodayTargetDetailPageState();
}

class _TodayTargetDetailPageState extends State<TodayTargetDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: white,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(onPressed: (){
              Navigator.pop(context);
            }, icon: Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                color: black.withOpacity(0.03),
                borderRadius: BorderRadius.circular(5)
              ),
              child: Center(
                child: Icon(Ionicons.ios_arrow_back,
                size: 22,
                color: black.withOpacity(0.3),),
              ),
            )),
            const Text("World Health Organigation",style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
              color:black
            ),),
            IconButton(onPressed: (){
             
            }, icon: Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                color: black.withOpacity(0.03),
                borderRadius: BorderRadius.circular(5)
              ),
              child: Center(
                child: Icon(Entypo.dots_two_horizontal,
                size: 22,
                color: black.withOpacity(0.3),),
              ),
            ))
          ],
        ),
      ),
      body: getBody(),
    );
  }
  Widget getBody(){
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [



            const SizedBox(height: 10,),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "WHO Support",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: black),
                  ),
                   Text(
                          "See more",
                          style: TextStyle(fontSize: 15, color: black.withOpacity(0.5)),
                        ),
                ],
              ),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: List.generate(latestActivityJson.length, (index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: white,
                  boxShadow: [
                    BoxShadow(
                      color: black.withOpacity(0.01),
                      spreadRadius: 20,
                      blurRadius: 10,
                      offset: const Offset(0, 1)
                    ),
                  ],
                  borderRadius: BorderRadius.circular(12)
              ),
              child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Row(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage(latestActivityJson[index]['img']))
                          ),
                        ),
                          const SizedBox(width: 15,),
                    SizedBox(
                      height: 55,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(latestActivityJson[index]['title'],style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold
                          ),),
                          Text(latestActivityJson[index]['time_ago'],style: TextStyle(
                            fontSize: 13,
                            color: black.withOpacity(0.5)
                          ),),
                        ],
                      ),
                    ),
                      ],
                    ),

                        const SizedBox(width: 15,),
                        Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: black
                            )
                          ),
                          child: const Center(
                            child: Icon(Icons.arrow_forward_ios,size:11,color:black),
                          ),
                        ),                    
                  ],),
              ),
            ),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}