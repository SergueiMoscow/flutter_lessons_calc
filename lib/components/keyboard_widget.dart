import 'package:flutter/material.dart';
import 'package:flutter_calc/commons/types.dart';
import 'package:flutter_calc/components/button_plus_widget.dart';
import 'package:flutter_calc/components/button_widget.dart';
import 'package:flutter_calc/components/space_widget.dart';

class KeyboardWidget extends StatelessWidget {
  const KeyboardWidget({super.key, required this.callback});

  final ButtonEvent callback;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Row(
        children: [
          Column(
            children: [
              ButtonWidget(
                text: 'Ac',
                callback: callback,
              ),
              SpaceWidget.digits(),
              ButtonWidget(
                text: '7',
                callback: callback,
              ),
              SpaceWidget.digits(),
              ButtonWidget(
                text: '4',
                callback: callback,
              ),
              SpaceWidget.digits(),
              ButtonWidget(
                text: '1',
                callback: callback,
              ),
              SpaceWidget.digits(),
              ButtonWidget(
                text: '+/-',
                callback: callback,
              ),
              SpaceWidget.digits(),
            ],
          ),
          SpaceWidget.digits(),
          Column(
            children: [
              ButtonWidget(
                text: '%',
                filled: true,
                callback: callback,
              ),
              SpaceWidget.digits(),
              ButtonWidget(
                text: '8',
                callback: callback,
              ),
              SpaceWidget.digits(),
              ButtonWidget(
                text: '5',
                callback: callback,
              ),
              SpaceWidget.digits(),
              ButtonWidget(
                text: '2',
                callback: callback,
              ),
              SpaceWidget.digits(),
              ButtonWidget(
                text: '0',
                callback: callback,
              ),
              SpaceWidget.digits(),
            ],
          ),
          SpaceWidget.digits(),
          Column(
            children: [
              ButtonWidget(
                text: ':',
                filled: true,
                callback: callback,
              ),
              SpaceWidget.digits(),
              ButtonWidget(
                text: '9',
                callback: callback,
              ),
              SpaceWidget.digits(),
              ButtonWidget(
                text: '6',
                callback: callback,
              ),
              SpaceWidget.digits(),
              ButtonWidget(
                text: '3',
                callback: callback,
              ),
              SpaceWidget.digits(),
              ButtonWidget(
                text: '.',
                callback: callback,
              ),
              SpaceWidget.digits(),
            ],
          ),
          SpaceWidget.digits(),
          Column(
            children: [
              ButtonWidget(
                text: '*',
                filled: true,
                callback: callback,
              ),
              SpaceWidget.digits(),
              ButtonWidget(
                text: '-',
                filled: true,
                callback: callback,
              ),
              SpaceWidget.digits(),
              ButtonPlusWidget(
                callback: callback,
              ),
              SpaceWidget.digits(),
              ButtonWidget(
                text: '=',
                filled: true,
                callback: callback,
              ),
              SpaceWidget.digits(),
            ],
          ),
        ],
      ),
    );
  }
}
