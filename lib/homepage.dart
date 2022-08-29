import 'package:flutter/material.dart';
import 'package:flutter_calculator/widgets/custom_buttons.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> buttons = [
    "C",
    "Del",
    "%",
    "/",
    "9",
    "8",
    "7",
    "X",
    "6",
    "5",
    "4",
    "-",
    "3",
    "2",
    "1",
    "+",
    "0",
    ".",
    "Ans",
    "="
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurple[100],
        body: Column(
          children: [
            Expanded(child: Container()),
            Expanded(
              flex: 2,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4),
                    itemCount: buttons.length,
                    itemBuilder: (BuildContext context, int index) {
                      if (index == 0) {
                        return CustomButton(
                            buttonText: buttons[index],
                            color: Colors.green,
                            textColor: Colors.white);
                      } else if (index == 1) {
                        return CustomButton(
                            buttonText: buttons[index],
                            color: Colors.red,
                            textColor: Colors.white);
                      } else {
                        return CustomButton(
                            buttonText: buttons[index],
                            color: isOperand(buttons[index])
                                ? Colors.deepPurple
                                : Colors.deepPurple[50],
                            textColor: isOperand(buttons[index])
                                ? Colors.white
                                : Colors.deepPurple);
                      }
                    },
                  ),
                ),
              ),
            )
          ],
        ));
  }
}

bool isOperand(String x) {
  if (x == "%" || x == "/" || x == "+" || x == "-" || x == "=" || x == "X") {
    return true;
  }
  return false;
}
