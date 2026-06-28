import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 222, 222, 221),
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text(
          "My First App",
          style: TextStyle(color: Colors.teal, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        // color: Colors.blue.shade100,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.blue.shade100,
          borderRadius: BorderRadius.circular(40),
        ),
        child: Column(
          
          mainAxisSize: MainAxisSize.max, //default but you can change it.
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                SizedBox(width: 50),
                Container(width: 100, height: 100, color: Colors.brown),
                SizedBox(width: 50),
                Container(width: 100, height: 100, color: Colors.green),
              ],
            ),
            Container(width: 100, height: 100, color: Colors.teal),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                Container(width: 100, height: 100, color: Colors.brown),
                Container(width: 100, height: 100, color: Colors.green),
                Container(width: 100, height: 100, color: Colors.teal),
              ],
            ),
            Container(width: 100, height: 100, color: Colors.red),
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// class ProfileView extends StatelessWidget {
//   const ProfileView({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.amber,
//       appBar: AppBar(
//         leading: Icon(Icons.abc_rounded, size: 50),
//         title: Text(
//           "My First App",
//           style: TextStyle(color: Colors.teal, fontWeight: FontWeight.bold),
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Container(
//               height: 100,
//               width: 100,
//               color: const Color.fromARGB(255, 217, 151, 151),
//               child: Center(
//                 child: Text(
//                   "Zain",
//                   style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     fontSize: 10,
//                     letterSpacing: 10,
//                   ),
//                 ),
//               ),
//             ),
//             Container(
//               height: 100,
//               width: 100,
//               color: Colors.green,
//             ),
//                       Container(
//               height: 100,
//               width: 100,
//               color: const Color.fromARGB(255, 217, 151, 151),
//               child: Center(
//                 child: Text(
//                   "Zain",
//                   style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     fontSize: 10,
//                     letterSpacing: 10,
//                   ),
//                 ),
//               ),
//             ),
//             Container(
//               height: 100,
//               width: 100,
//               color: Colors.green,
//             ),
//             Container(
//               height: 100,
//               width: 100,
//               color: const Color.fromARGB(255, 217, 151, 151),
//               child: Center(
//                 child: Text(
//                   "Zain",
//                   style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     fontSize: 10,
//                     letterSpacing: 10,
//                   ),
//                 ),
//               ),
//             ),
//             Container(
//               height: 100,
//               width: 100,
//               color: Colors.green,
//             ),
//             Container(
//               height: 100,
//               width: 100,
//               color: const Color.fromARGB(255, 217, 151, 151),
//               child: Center(
//                 child: Text(
//                   "Zain",
//                   style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     fontSize: 10,
//                     letterSpacing: 10,
//                   ),
//                 ),
//               ),
//             ),
//             Container(
//               height: 100,
//               width: 100,
//               color: Colors.green,
//             ),

//           ],
//         ),
//       ),
//     );
//   }
// }
