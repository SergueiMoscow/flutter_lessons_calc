import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_calc/components/expression_widget.dart';
import 'package:flutter_calc/components/keyboard_widget.dart';
import 'package:flutter_calc/components/result_widget.dart';
import 'package:flutter_calc/components/space_widget.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String equation = '0';
  String result = '0';
  String expression = '';
  double equationFontSize = 38.0;
  double resultFontSize = 48.0;

  String doesContainDecimal(dynamic result){
    if (result.toString().contains('.')){
      List<String>splitDecimal = result.toString().split('.');
      if (!(int.parse(splitDecimal[1]) > 0)){
        return result = splitDecimal[0].toString();
      }
    }
    return result;
  }
  buttonPressed(String buttonText){
    buttonText = buttonText.toUpperCase();
    setState(() {
      if(buttonText == 'AC'){
        equation = '0';
        result = '0';
      }else if(buttonText == 'DELETE'){
        equation = equation.substring(0, equation.length - 1);
        if (equation == '') equation = '0';
      }else if(buttonText == '+/-'){
        if (equation[0] != '-'){
          equation = '-$equation';
        }else{
          equation = equation.substring(1);
        }
      }else if (buttonText == '=') {
        expression = equation;
        expression = expression.replaceAll(':', '/');
        try {
          Parser p = Parser();
          Expression exp = p.parse(expression);
          ContextModel cm = ContextModel();
          result = '${exp.evaluate(EvaluationType.REAL, cm)}';
          if (expression.contains('%')){
            result = doesContainDecimal(result);
          }
        }catch (e){
          result = 'Error';
        }
      }else{
        if (equation == '0'){
          equation = buttonText;
        }else{
          equation += buttonText;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        color: const Color.fromRGBO(247, 248, 251, 1),
        child: SizedBox(
          width: 308,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ExpressionWidget(text: equation),
              const SpaceWidget.result(),
              ResultWidget(text: result, callback: buttonPressed,),
              const SpaceWidget.calc(),
              KeyboardWidget(callback: buttonPressed,),
            ],
          ),
        ),
      ),
    );
  }
}
