import 'package:flutter/material.dart';

class RealHomePage extends StatefulWidget {
  const RealHomePage({Key? key}) : super(key: key);

  @override
  _RealHomePageState createState() => _RealHomePageState();
}

class _RealHomePageState extends State<RealHomePage>   with TickerProviderStateMixin {

  late AnimationController yellowAnimController;
  late AnimationController greenAnimController;
  late AnimationController redAnimController;
  late AnimationController blueAnimController;


  void initState() {
    super.initState();
    yellowAnimController = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,

    )..repeat();

    greenAnimController = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,

    )..repeat();

    redAnimController = AnimationController(
      duration: const Duration(seconds: 7),
      vsync: this,

    )..repeat();

    blueAnimController = AnimationController(
      duration: const Duration(seconds: 10),
      vsync: this,

    )..repeat();


  }
  // Animatable sizDuration = Tween<double>(begin: 1, end: 3 );
  Tween sizDuration = Tween<double>(begin: 1, end: 1.5 );
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
                      tween: sizDuration,
                      duration: Duration(seconds: 3),
                      builder:
                          (BuildContext context, Object? value, Widget? child) {
                        return Transform.scale(
                          scale: sizDuration.evaluate(
                              AlwaysStoppedAnimation(yellowAnimController.value)),
                          child: Container(
                            // alignment:  FractionalOffset(0.5, 0.5),
                            width: 100,
                            height: 100,
                            color: Colors.yellowAccent,
                          ),
                        );
                      },
                    ),

                    SizedBox(
                      width: 10,
                    ),
                    TweenAnimationBuilder(
                      tween: sizDuration,
                      duration: Duration(seconds: 5),
                      builder:
                          (BuildContext context, Object? value, Widget? child) {
                        return Transform.scale(
                          scale: sizDuration.evaluate(
                              AlwaysStoppedAnimation(greenAnimController.value)),
                          child: Container(
                            // alignment:  FractionalOffset(0.5, 0.5),
                            width: 100,
                            height: 100,
                            color: Colors.lightGreenAccent,
                          ),
                        );
                      },

                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TweenAnimationBuilder(
                      tween: sizDuration,
                      duration: Duration(seconds: 7),
                      builder:
                          (BuildContext context, Object? value, Widget? child) {
                        return Transform.scale(
                          scale: sizDuration.evaluate(
                              AlwaysStoppedAnimation(redAnimController.value)),
                          child: Container(
                            // alignment:  FractionalOffset(0.5, 0.5),
                            width: 100,
                            height: 100,
                            color: Colors.redAccent,
                          ),
                        );
                      },

                    ),
                    SizedBox(
                      width: 10,
                    ),
                    TweenAnimationBuilder(
                      tween: sizDuration,
                      duration: Duration(seconds: 10),
                      builder:
                          (BuildContext context, Object? value, Widget? child) {
                        return Transform.scale(
                          scale: sizDuration.evaluate(
                              AlwaysStoppedAnimation(blueAnimController.value)),
                          child: Container(
                            // alignment:  FractionalOffset(0.5, 0.5),
                            width: 100,
                            height: 100,
                            color: Colors.lightBlueAccent,
                          ),
                        );
                      },

                    ),
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
