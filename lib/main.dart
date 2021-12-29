// ignore: unused_import
import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFFADCCE0),
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          title: const Text(
            'Ask me',
            style: TextStyle(
              fontSize: 30.0,
            ),
          ),
          backgroundColor: const Color(0xFFADCCE0),
        ),
        body: const BallPagex(),
      ),
    ),
  );
}

class BallPagex extends StatefulWidget {
  const BallPagex({Key? key}) : super(key: key);

  @override
  _BallPagexState createState() => _BallPagexState();
}

class _BallPagexState extends State<BallPagex> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  ballNumber = Random().nextInt(5) + 1;
                  // ignore: avoid_print
                  print(
                      "Hey Janosita, this is the value of ballNumber: $ballNumber");
                });
              },
              child: Image.asset('images/ball$ballNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}


// class BallPage extends StatefulWidget {
//   const BallPage({Key? key}) : super(key: key);

//   @override
//   State<StatefulWidget> createState() {
//     // TODO: implement createState
//     throw UnimplementedError();
//   }
// }
// class _BallPageState extends State<BallPage> {


  
//   @override
//   noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
// }

//   Widget build(BuildContext context) {
      
//     return Center(
//       child: Row(
//         children: <Widget>[
//           Expanded(
//             child: TextButton(
//               onPressed: () {
//                 setState(() {
//                   ballNumber = Random().nextInt(5) + 1;
//                 });
//               },
//               child: Image.asset('images/ball$ballNumber.png'),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   void setState(Null Function() param0) {}
//  }

