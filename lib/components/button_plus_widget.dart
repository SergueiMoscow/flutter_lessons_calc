import 'package:flutter/material.dart';
import 'package:flutter_calc/commons/types.dart';

class ButtonPlusWidget extends StatelessWidget {
  const ButtonPlusWidget({super.key, required this.callback});

  final ButtonEvent callback;

  @override
  Widget build(BuildContext context) {
    final btnStyle = ElevatedButton.styleFrom(
      fixedSize: const Size(62, 146),
      alignment: Alignment.center,
      backgroundColor: const Color.fromRGBO(173, 226, 255, 1),
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 6),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    );

    final textStyle = TextStyle(
      color: const Color.fromRGBO(16, 157, 255, 1),
      fontSize: 32,
      letterSpacing: 0,
      fontWeight: FontWeight.normal,
      height: 1,
    );

    return ElevatedButton(
      onPressed: (){callback('+');},
      style: btnStyle,
      child: Text(
        '+',
        textAlign: TextAlign.left,
        style: textStyle,
      ),
    );
  }
}
