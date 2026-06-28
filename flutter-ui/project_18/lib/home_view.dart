import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:project_18/components/my_button.dart';
import 'package:project_18/costants.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  var userinput = '';
  var answer = '';

  void equalpress() {
    String finalInput = userinput.replaceAll("x", "*");
    // Parser p = Parser(); //depreciated

    // GrammarParser p = GrammarParser(); // or
    ExpressionParser p = GrammarParser();
    Expression expression = p.parse(finalInput);
    ContextModel contextModel = ContextModel();

    // evaluate is deprecated
    // double eval = expression.evaluate(EvaluationType.REAL, contextModel);

    //new
    RealEvaluator evaluator = RealEvaluator(contextModel);
    num result = evaluator.evaluate(expression);
    answer = result.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Align(
                  alignment: Alignment.bottomRight,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    reverse: true,
                    child: Text(
                      userinput.toString(),
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentGeometry.bottomRight,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    reverse: true,
                    child: Text(
                      answer.toString(),
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(height: 15),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                Row(
                  children: [
                    MyButton(
                      title: "AC",
                      onpress: () {
                        userinput = '';
                        answer = '';
                        setState(() {});
                      },
                    ),
                    MyButton(
                      title: "+/-",
                      onpress: () {
                        userinput += "+/-";
                        setState(() {});
                      },
                    ),
                    MyButton(
                      title: "%",
                      onpress: () {
                        userinput += "%";
                        setState(() {});
                      },
                    ),
                    MyButton(
                      title: "/",
                      onpress: () {
                        userinput += "/";
                        setState(() {});
                      },
                      color: orangeColor,
                    ),
                  ],
                ),
                Row(
                  children: [
                    MyButton(
                      title: "9",
                      onpress: () {
                        userinput += '9';
                        setState(() {});
                      },
                    ),
                    MyButton(
                      title: "8",
                      onpress: () {
                        userinput += '8';
                        setState(() {});
                      },
                    ),
                    MyButton(
                      title: "7",
                      onpress: () {
                        userinput += '7';
                        setState(() {});
                      },
                    ),
                    MyButton(
                      title: "x",
                      onpress: () {
                        userinput += 'x';
                        setState(() {});
                      },
                      color: orangeColor,
                    ),
                  ],
                ),
                Row(
                  children: [
                    MyButton(
                      title: "6",
                      onpress: () {
                        userinput += '6';
                        setState(() {});
                      },
                    ),
                    MyButton(
                      title: "5",
                      onpress: () {
                        userinput += '5';
                        setState(() {});
                      },
                    ),
                    MyButton(
                      title: "4",
                      onpress: () {
                        userinput += '4';
                        setState(() {});
                      },
                    ),
                    MyButton(
                      title: "-",
                      onpress: () {
                        userinput += '-';
                        setState(() {});
                      },
                      color: orangeColor,
                    ),
                  ],
                ),
                Row(
                  children: [
                    MyButton(
                      title: "3",
                      onpress: () {
                        userinput += '3';
                        setState(() {});
                      },
                    ),
                    MyButton(
                      title: "2",
                      onpress: () {
                        userinput += '2';
                        setState(() {});
                      },
                    ),
                    MyButton(
                      title: "1",
                      onpress: () {
                        userinput += '1';
                        setState(() {});
                      },
                    ),
                    MyButton(
                      title: "+",
                      onpress: () {
                        userinput += '+';
                        setState(() {});
                      },
                      color: orangeColor,
                    ),
                  ],
                ),
                Row(
                  children: [
                    MyButton(
                      title: "0",
                      onpress: () {
                        userinput += '0';
                        setState(() {});
                      },
                    ),
                    MyButton(
                      title: ".",
                      onpress: () {
                        userinput += ".";
                        setState(() {});
                      },
                    ),
                    MyButton(
                      title: "DEL",
                      onpress: () {
                        setState(() {
                          if (userinput.isNotEmpty) {
                            userinput = userinput.substring(
                              0,
                              userinput.length - 1,
                            );
                          }
                        });
                      },
                    ),
                    MyButton(
                      title: "=",
                      onpress: () {
                        setState(() {
                          equalpress();
                        });
                      },
                      color: orangeColor,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//practicing components
// class HomeView extends StatefulWidget {
//   const HomeView({super.key});

//   @override
//   State<HomeView> createState() => _HomeViewState();
// }

// class _HomeViewState extends State<HomeView> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: SafeArea(
//             child: Column(
//               children: [
//                 CustomButton(title: "Login"),
//                 CustomButton(title: "signup"),
//                 CustomButton(title: "don't Know"),
//                 SizedBox(height: 50),
//                 Divider(),
//                 Text("Zain Ul islam", style: TextStyle(color: pinkColor)),
//                 Text("Zain Ul islam", style: TextStyle(color: pinkColor)),
//                 Text("Zain Ul islam", style: TextStyle(color: pinkColor)),
//                 Text("Zain Ul islam", style: TextStyle(color: pinkColor)),

//                 Text("Zain Ul islam", style: tstyle),
//                 Text("Zain Ul islam", style: tstyle),
//                 Text("Zain Ul islam", style: tstyle),
//                 Text("Zain Ul islam", style: tstyle),
//                 Text(
//                   "Zain Ul Islam",
//                   style: TextStyle(
//                     color: whiteColor,
//                     fontWeight: FontWeight.bold,
//                     fontSize: 30,
//                   ),
//                 ),
//                 Text(
//                   "Zain Ul Islam",
//                   style: TextStyle(
//                     color: whiteColor,
//                     fontWeight: FontWeight.bold,
//                     fontSize: 30,
//                   ),
//                 ),
//                 Text(
//                   "Zain Ul Islam",
//                   style: TextStyle(
//                     color: whiteColor,
//                     fontWeight: FontWeight.bold,
//                     fontSize: 30,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class CustomButton extends StatelessWidget {
//   final String title;
//   const CustomButton({super.key, required this.title});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 10),
//       child: Container(
//         margin: EdgeInsets.symmetric(horizontal: 20),
//         height: 50,
//         decoration: BoxDecoration(
//           color: pinkColor,
//           borderRadius: BorderRadius.circular(10),
//         ),
//         child: Center(child: Text(title, style: tstyle)),
//       ),
//     );
//   }
// }
