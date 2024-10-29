//import 'dart:nativewrappers/_internal/vm/lib/async_patch.dart';
import 'dart:async';
import 'package:flutter/material.dart';

class LogoAnimation extends StatefulWidget {
  const LogoAnimation({super.key});

  @override
  State<LogoAnimation> createState() => _LogoAnimationState();
}

class _LogoAnimationState extends State<LogoAnimation> {

  Timer timer = Timer(Duration.zero,(){});

  bool shouldAnimate = false;
  bool shoulShowText = false;

  Future<void> initAnimate() async{
    timer = Timer(const Duration(seconds: 1),(){
      setState(() {
        shouldAnimate = true;
        shoulShowText = true;
      });

    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initAnimate();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    timer.cancel();
  }

  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width,
      height: size.height,

      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            SizedBox(
              width: size.width*.55,
              height: size.width*.55,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 777),
                    curve: Curves.decelerate,
                    width: shouldAnimate?size.width*.55:size.width*.41,
                    height: shouldAnimate?size.width*.55:size.width*.41,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(1000),
                    ),
                  ),

                  AnimatedContainer(
                    duration: const Duration(milliseconds: 555),
                    curve: Curves.decelerate,
                    width: shouldAnimate?size.width*.48:size.width*.41,
                    height: shouldAnimate?size.width*.48:size.width*.41,
                    decoration: BoxDecoration(
                      color: Color(0xff4b4b4b),
                      borderRadius: BorderRadius.circular(1000),
                    ),
                  ),

                  Container(
                    width: size.width*.41,
                    height: size.width*.41,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(1000),
                    ),
                  ),
                ],
              ),
            ),
            AnimatedOpacity(opacity: shoulShowText?1:0, duration: const Duration(milliseconds: 999),
            child: Text("RIPPLES",
            style: TextStyle(
              fontSize: 31,
              fontWeight: FontWeight.w900,
              letterSpacing: 2,

            ),
            ),
            ),
          ],

        ),
      ),
    );
  }
}
