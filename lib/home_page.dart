// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
//
// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);
//
//   @override
//   _HomePageState createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage>  with TickerProviderStateMixin {
//   late AnimationController animcontroller;
//
//
//   void initState() {
//     super.initState();
//     animcontroller = AnimationController(
//       duration: const Duration(seconds: 5),
//       vsync: this,
//
//     )..repeat();
//
//
//   }
//
//    Animatable sizeDuration = Tween<double>(begin: 1, end: 3 );
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: SingleChildScrollView(
//       child: Column(
//         children: [
//           Container(
//             height: MediaQuery.of(context).size.height,
//             width: MediaQuery.of(context).size.width,
//             child: Center(
//               child:  Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 20 , vertical: 5),
//                     child: Row(
//
//                       children: [
//                         Transform.scale(
//                           scale: sizeDuration.evaluate(
//                         AlwaysStoppedAnimation(animcontroller.value)),
//                           child: Container(
//                             // alignment:  FractionalOffset(0.5, 0.5),
//                             height: 100,
//                             width: 100,
//                             color: Colors.yellowAccent,
//
//
//                           ),
//                         ),
//
//                         SizedBox(
//                           width: 10,
//                         ),
//
//                         Transform.scale(
//                           scale: 1,
//                           child: Container(
//                             // alignment:  FractionalOffset(0.5, 0.5),
//                             height: 100,
//                             width: 100,
//                             color: Colors.lightGreenAccent,
//
//
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//
//
//
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 20 , vertical: 5),
//                     child: Row(
//                       // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         Transform.scale(
//                           scale: 1,
//                           child: Container(
//                             // alignment:  FractionalOffset(0.5, 0.5),
//                             height: 100,
//                             width: 100,
//                             color: Colors.redAccent,
//
//
//                           ),
//                         ),
//
//                         SizedBox(
//                           width: 10,
//                         ),
//
//                         Transform.scale(
//                           scale: 1,
//                           child: Container(
//                             // alignment:  FractionalOffset(0.5, 0.5),
//                             height: 100,
//                             width: 100,
//                             color: Colors.lightBlueAccent,
//
//
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     ));
//   }
// }
