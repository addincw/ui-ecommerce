import 'package:flutter/material.dart';
import 'package:ui_ecommerce/constants.dart';

class ColorCheckbox extends StatelessWidget {
  final bool selected;

  const ColorCheckbox({
    Key key,
    @required this.color,
    this.selected = false,
  }) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      width: 24,
      margin: EdgeInsets.only(
        top: PADDING / 2,
        right: PADDING / 10,
      ),
      padding: EdgeInsets.all(PADDING / 10),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: selected ? color : Colors.transparent),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(shape: BoxShape.circle, color: color),
      ),
    );
  }
}
