import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key, required this.text, this.filled = false});

  final String text;
  final bool filled;

  @override
  Widget build(BuildContext context) {
    final btnStyle = ElevatedButton.styleFrom(
      fixedSize: const Size(62, 62),
      alignment: Alignment.center,
      backgroundColor: filled ? const Color.fromRGBO(173, 226, 255, 1) : Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 6),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    );

    final textStyle = TextStyle(
      color: filled ? Color.fromRGBO(16, 157, 255, 1) : Color.fromRGBO(56, 185, 255, 1),
      fontSize: 32,
      letterSpacing: 0,
      fontWeight: FontWeight.normal,
      height: 1,
    );
    return ElevatedButton(
        onPressed: (){},
        style: btnStyle,
        child: Text(
          text,
          textAlign: TextAlign.left,
          style: textStyle,
        ),
    );
  }
}
