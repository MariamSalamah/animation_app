import 'package:flutter/material.dart';

class RealHomePage extends StatefulWidget {
  const RealHomePage({Key? key}) : super(key: key);

  @override
  _RealHomePageState createState() => _RealHomePageState();
}

class _RealHomePageState extends State<RealHomePage>   with TickerProviderStateMixin {

  late AnimationController animcontroller;


  void initState() {
    super.initState();
    animcontroller = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,

    )..repeat();


  }
  // Animatable sizDuration = Tween<double>(begin: 1, end: 3 );
  Tween sizDuration = Tween<double>(begin: 1, end: 3 );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Row(
                  children: [
                    TweenAnimationBuilder(
                      builder:
                          (BuildContext context, Object? value, Widget? child) {
                        return Transform.scale(
                          scale: sizDuration.evaluate(
                              AlwaysStoppedAnimation(animcontroller.value)),
                          child: Container(
                            // alignment:  FractionalOffset(0.5, 0.5),
                            width: 100,
                            height: 100,
                            color: Colors.yellowAccent,
                          ),
                        );
                      },
                      tween: sizDuration,
                      duration: Duration(seconds: 5),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Transform.scale(
                      scale: 1,
                      child: Container(
                        // alignment:  FractionalOffset(0.5, 0.5),
                        height: 100,
                        width: 100,
                        color: Colors.lightGreenAccent,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Transform.scale(
                      scale: 1,
                      child: Container(
                        // alignment:  FractionalOffset(0.5, 0.5),
                        height: 100,
                        width: 100,
                        color: Colors.redAccent,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Transform.scale(
                      scale: 1,
                      child: Container(
                        // alignment:  FractionalOffset(0.5, 0.5),
                        height: 100,
                        width: 100,
                        color: Colors.lightBlueAccent,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
