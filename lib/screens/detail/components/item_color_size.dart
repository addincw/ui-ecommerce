import 'package:flutter/material.dart';
import 'package:ui_ecommerce/constants.dart';
import 'package:ui_ecommerce/models/Product.dart';
import 'package:ui_ecommerce/screens/detail/components/color_checkbox.dart';

class ItemColorSize extends StatelessWidget {
  const ItemColorSize({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Color'),
              Row(
                children: [
                  ColorCheckbox(
                    color: product.color,
                    selected: true,
                  ),
                  ColorCheckbox(color: Color(0xFFF8C078)),
                  ColorCheckbox(color: Color(0xFFA29B9B)),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
              style: TextStyle(color: TEXT_COLOR),
              children: [
                TextSpan(text: "Size\n"),
                TextSpan(
                  text: "12 cm",
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
