import 'package:ditto/data/latest_workout.dart';
import 'package:ditto/theme/colors.dart';
import 'package:flutter/material.dart';

class HealthPage extends StatefulWidget {
  const HealthPage({Key? key}) : super(key: key);
  @override
  _HealthPageState createState() => _HealthPageState();
}

class _HealthPageState extends State<HealthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

//------------------- workout-------------

               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Health",
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
                children: List.generate(latestWorkoutJson.length, (index) {
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
                        offset:const Offset(0, 10)
                      )
                    ],
                    borderRadius: BorderRadius.circular(12)
                ),
                child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage(latestWorkoutJson[index]['img']))
                          ),
                        ),
                        const SizedBox(width: 15,),
                        Flexible(
                          child: SizedBox(
                            height: 55,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(latestWorkoutJson[index]['title'],style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight:FontWeight.bold
                                ),),
                                Text(latestWorkoutJson[index]['description'],style: TextStyle(
                                  fontSize: 13,
                                  color: black.withOpacity(0.5)
                                ),),
                                Stack(
                                  children:[
                                    Container(
                                      width: size.width,
                                      height: 10,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color: bgTextField
                                      ),
                                    ),
                                    Container(
                                      width: size.width*(latestWorkoutJson[index]['progressBar']),
                                      height: 10,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        gradient: const LinearGradient(colors: [
                                          primary, secondary
                                        ])
                                      ),
                                    )
                                  ]
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 15,),
                        Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: primary
                            )
                          ),
                          child: const Center(
                            child: Icon(Icons.arrow_forward_ios,size:11,color:primary),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
               );
               }),
              ),

//------------------------------------target settings----------------------------

              const SizedBox(
                height: 10,
              ),

              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: const LinearGradient(colors: [secondary, primary]),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Flexible(
                        child: SizedBox(
                          width: (size.width),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Target Setting",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: white),
                              ),
                              const Text(
                                "Steps                  8000 steps",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: white),
                              ),
                              const Text(
                                "Weight                          56 kg",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: white),
                              ),
                              const Text(
                                "Burned                     300 kcal",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: white),
                              ),
                              const Text(
                                "Sleep                                8 hr",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: white),
                              ),

                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          gradient:
                              LinearGradient(colors: [fourthColor, thirdColor]),
                        ),
                        child: const Center(
                          child: Text(
                            "Edit Card",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: white),
                          ),
                        ),
                      )
                      
                    ],
                  ),
                ),
              ),
             
            ],
          ),
        ),
      ),
    );
  }
}