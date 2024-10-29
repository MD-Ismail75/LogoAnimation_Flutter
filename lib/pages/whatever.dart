import 'dart:async';

import 'package:flutter/material.dart';

class Whatever extends StatefulWidget {
  const Whatever({super.key});

  @override
  State<Whatever> createState() => _WhateverState();
}

class _WhateverState extends State<Whatever> {

  bool flag = false;
  Timer timer = Timer(Duration.zero,(){});

  Future<void> x() async{
    // await Future.delayed(const Duration(seconds: 3),(){
    //   setState(() {
    //     flag = true;
    //   });
    // });
    
     timer = Timer(const Duration(seconds: 3), (){
       setState(() {
         flag = true;
       });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    timer.cancel();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    x();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: size.width,
          height: size.height,

          child: Padding(
            padding: const EdgeInsets.all(21.0),
            child: Stack(

              children: [
                Wrap(
                  spacing: 7,
                  runSpacing: 7,
                  alignment: WrapAlignment.start,
                  runAlignment: WrapAlignment.start,
                  direction: Axis.horizontal,
                  children: [
                    Container(
                      // width: size.width*.25,
                      //  height: size.width*.065,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("MD.Ismail",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    ),

                    Container(
                      // width: size.width*.25,
                      // height: size.width*.065,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Farhan",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    ),

                    Container(
                      // width: size.width*.25,
                      //  height: size.width*.065,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Kuddus Ali",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    ),

                    Container(
                      // width: size.width*.25,
                      // height: size.width*.065,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Iskander Alom",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    ),

                    Container(
                      // width: size.width*.25,
                      //  height: size.width*.065,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Anam Uddin",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    ),

                    Container(
                      // width: size.width*.25,
                      // height: size.width*.065,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Arif Rahman Shikder",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
                Center(child: Text(flag?"something":"nothing",
                style: TextStyle(
                  fontSize: 31,
                ),
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}



