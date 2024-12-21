import 'package:flutter/material.dart';

class ExpressionWidget extends StatelessWidget {
  const ExpressionWidget({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      padding: EdgeInsets.only(right: 22),
      child: Text(
        text,
        textAlign: TextAlign.left,
        style: const TextStyle(
          color: Color.fromRGBO(129, 129, 129, 1),
          fontSize: 24,
          letterSpacing: 0,
          fontWeight: FontWeight.normal,
          height: 1,
        ),
      ),
    );
  }
}
