import 'package:ditto/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';



class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Welcome Back",
                        style: TextStyle(fontSize: 14, color: black),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "Pratyush.x",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: black),
                      ),
                    ],
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        color: black.withOpacity(0.03),
                        borderRadius: BorderRadius.circular(12)),
                    child: const Center(
                      child: Icon(LineIcons.bell),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),

//------------------------------------steps----------------------------

              Container(
                width: double.infinity,
                height: 145,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: const LinearGradient(colors: [secondary, primary]),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Flexible(
                        child: Container(
                          width: (size.width),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const Text(
                                "Steps",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: white),
                              ),
                              const Text(
                                "Distance 3.67 km",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: white),
                              ),
                              const Text(
                                "Calories 111 kcal",
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
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          colors: [
                                            fourthColor,
                                            thirdColor.withOpacity(0.5)
                                          ]),
                                      shape: BoxShape.circle),
                                  child: Center(
                                      child: Container(
                                    width: 70,
                                    height: 70,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle, color: primary),
                                    child: const Center(
                                      child: Text(
                                        "5466",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                             color: white),
                                      ),
                                    ),
                                  )),
                                )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),

//-------------------------------sleep---------------------------------

              Container(
                width: double.infinity,
                height: 145,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: const LinearGradient(colors: [secondary, primary]),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Flexible(
                        child: Container(
                          width: (size.width),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const Text(
                                "Sleep",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: white),
                              ),
                              const Text(
                                "Fall Asleep 1:06 am",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: white),
                              ),
                              const Text(
                                "Get Up 8:43 am",
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
                                height: 50,
                                decoration: BoxDecoration(
                                    gradient: const LinearGradient(
                                        colors: [fourthColor, thirdColor]),
                                    borderRadius: BorderRadius.circular(20)),
                                child: const Center(
                                  child: Text(
                                    "7hr37min",
                                    style:
                                        TextStyle(fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: white),
                                  ),
                                ),
                              )

                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),

//-------------------------------heart rate---------------------------------

              Container(
                width: double.infinity,
                height: 145,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: const LinearGradient(colors: [secondary, primary]),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Flexible(
                        child: Container(
                          width: (size.width),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const Text(
                                "Heart Rate",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: white),
                              ),
                              const Text(
                                "Average all day heart rate 97 BPM",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: white),
                              ),
                              const Text(
                                "Relaxed",
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
                                height: 50,
                                decoration: BoxDecoration(
                                    gradient: const LinearGradient(
                                        colors: [fourthColor, thirdColor]),
                                    borderRadius: BorderRadius.circular(20)),
                                child: const Center(
                                  child: Text(
                                    "77BPM",
                                    style:
                                        TextStyle(fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: white),
                                  ),
                                ),
                              )

                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),

//----------------------------------WHO-----------------------------

              Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                    color: secondary.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "WHO Support",
                        style: TextStyle(
                            fontSize: 17,
                            color: black,
                            fontWeight: FontWeight.w600),
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.pushNamed(context, "/today_target_detail");
                        },
                        child: Container(
                          width: 70,
                          height: 35,
                          decoration: BoxDecoration(
                              gradient:
                                  const LinearGradient(colors: [secondary, primary]),
                              borderRadius: BorderRadius.circular(20)),
                          child: const Center(
                            child: Text(
                              "Check",
                              style: TextStyle(fontSize: 13, color: white),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),


              const SizedBox(
                height: 30,
              ),

//-------------------------------workout history---------------------------------

                      Container(
                          width: double.infinity,
                          height: 250,
                          decoration: BoxDecoration(
                              color: white,
                              boxShadow: [
                                BoxShadow(
                                    color: black.withOpacity(0.01),
                                    spreadRadius: 20,
                                    blurRadius: 10,
                                    offset: const Offset(0, 10))
                              ],
                              borderRadius: BorderRadius.circular(30)),
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Workout History",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),

                              const Text(
                                "no exercise data available",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: black),
                              ),
                              ],
                            ),
                          )),

              const SizedBox(
                height: 30,
              ),
             
            ],
          ),
        ),
      ),
    );
  }
}
