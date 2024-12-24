import 'package:flutter/material.dart';
import 'package:flutter_calc/commons/types.dart';

class ResultWidget extends StatelessWidget {
  const ResultWidget({super.key, required this.text, required this.callback});

  final String text;
  final ButtonEvent callback;

  @override
  Widget build(BuildContext context) {

    final btnStyle = ElevatedButton.styleFrom(
      fixedSize: const Size(62, 62),
      alignment: Alignment.center,
      backgroundColor: const Color.fromRGBO(247, 248, 251, 1),
      elevation: 0.0,
      padding: EdgeInsets.symmetric(horizontal: 4, vertical: 6),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      )
    );
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(text,
          textAlign: TextAlign.left,
          style: const TextStyle(
            color: Color.fromRGBO(66, 66, 66, 1),
            fontWeight: FontWeight.w600,
            fontSize: 48,
            letterSpacing: 0,
            height: 1,
          ),
        ),
        ElevatedButton(
            onPressed: (){callback('DELETE');},
            style: btnStyle,
            child: Icon(
              Icons.backspace_outlined,
              color: Color.fromRGBO(133, 133, 133, 1),
            ),
        ),
      ],
    );
  }
}
