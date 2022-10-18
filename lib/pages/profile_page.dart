import 'package:ditto/theme/colors.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> { 


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: PreferredSize(
          child: getAppBar(), preferredSize: const Size.fromHeight(180)),
      body: getBody(),
    );
  }

  Widget getAppBar() {
    return AppBar(
        elevation: 0,
        backgroundColor: primary,
        flexibleSpace: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 75,
              height: 75,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28),
                  border: Border.all(color: black)),
              child: Center(
                child: Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: const DecorationImage(
                          image: NetworkImage(
                              "https://firebasestorage.googleapis.com/v0/b/ditto-19df2.appspot.com/o/user.jpg?alt=media&token=6df9432e-1812-48ec-9a55-125d03b76b76"),
                          fit: BoxFit.cover)),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Pratyush X",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "@pratyush.x",
              style: TextStyle(fontSize: 15),
            ),
          ],
        )));
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  const Text(
                    "Steps",
                    style: TextStyle(fontSize: 15, color: black),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                    "5466",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Column(
                children: [
                  const Text(
                    "Sleep",
                    style: TextStyle(fontSize: 15, color: black),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                    "7hr 37min",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Column(
                children: [
                  const Text(
                    "Heart Rate",
                    style: TextStyle(fontSize: 15, color: black),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                    "97 BPM",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          ),


          const SizedBox(
            height: 30,
          ),

              Container(
                width: 370,
                height: 100,
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "My Devices",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: white),
                              ),

                              const Text(
                                "Apple Watch SE",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: white),
                              ),

                            ],
                          ),
                        ),
                      ),
                      Flexible(
                        child: Container(
                          width: (size.width),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "+ Add",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: white),
                              ),
                        const SizedBox(width: 15,),
                        Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: white
                            )
                          ),
                          child: const Center(
                            child: Icon(Icons.arrow_forward_ios,size:11,color:white),
                          ),
                        ),

                            ],
                          ),
                        ),
                      ),

                      
                      const SizedBox(
                        width: 20,
                      ),

                      
                    ],
                  ),
                ),
              ),

          const SizedBox(
            height: 30,
          ),
              Container(
                width: 370,
                height: 335,
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "More",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: white),
                              ),
                              const Text(
                                "My Goals",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: white),
                              ),
                              const Text(
                                "My Route",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: white),
                              ),
                              const Text(
                                "My Records",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: white),
                              ),
                              const Text(
                                "User Feedback",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: white),
                              ),
                              const Text(
                                "Smart Analysis",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: white),
                              ),
                              const Text(
                                "Settings",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: white),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Flexible(
                        child: Container(
                          width: (size.width),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                ".",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: primary),
                              ),
                        const SizedBox(width: 15,),
                        Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: white
                            )
                          ),
                          child: const Center(
                            child: Icon(Icons.arrow_forward_ios,size:11,color:white),
                          ),
                        ),



                        const SizedBox(width: 15,),
                        Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: white
                            )
                          ),
                          child: const Center(
                            child: Icon(Icons.arrow_forward_ios,size:11,color:white),
                          ),
                        ),



                        const SizedBox(width: 15,),
                        Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: white
                            )
                          ),
                          child: const Center(
                            child: Icon(Icons.arrow_forward_ios,size:11,color:white),
                          ),
                        ),


                        const SizedBox(width: 15,),
                        Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: white
                            )
                          ),
                          child: const Center(
                            child: Icon(Icons.arrow_forward_ios,size:11,color:white),
                          ),
                        ),



                        const SizedBox(width: 15,),
                        Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: white
                            )
                          ),
                          child: const Center(
                            child: Icon(Icons.arrow_forward_ios,size:11,color:white),
                          ),
                        ),



                        const SizedBox(width: 15,),
                        Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: white
                            )
                          ),
                          child: const Center(
                            child: Icon(Icons.arrow_forward_ios,size:11,color:white),
                          ),
                        ),

                            ],
                          ),
                        ),
                      ),
                      
                      const SizedBox(
                        width: 20,
                      ),
                      
                    ],
                  ),
                ),
              ),

        ],
      ),
    );
  }

}
