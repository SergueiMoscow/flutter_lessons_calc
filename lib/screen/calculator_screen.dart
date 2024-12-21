import 'package:flutter/material.dart';
import 'package:flutter_calc/components/expression_widget.dart';
import 'package:flutter_calc/components/keyboard_widget.dart';
import 'package:flutter_calc/components/result_widget.dart';
import 'package:flutter_calc/components/space_widget.dart';

class CalculatorScreen extends StatelessWidget {
  const CalculatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        color: const Color.fromRGBO(247, 248, 251, 1),
        child: const SizedBox(
          width: 308,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ExpressionWidget(text: 'asdf'),
              SpaceWidget.result(),
              ResultWidget(text: '=123'),
              SpaceWidget.calc(),
              KeyboardWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
