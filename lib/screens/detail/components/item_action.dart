import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_ecommerce/constants.dart';
import 'package:ui_ecommerce/models/Product.dart';

class ItemAction extends StatelessWidget {
  const ItemAction({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 50,
          width: 58,
          margin: EdgeInsets.only(right: PADDING / 2),
          decoration: BoxDecoration(
            border: Border.all(color: product.color),
            borderRadius: BorderRadius.circular(16),
          ),
          child: IconButton(
              icon: SvgPicture.asset(
                'assets/icons/add_to_cart.svg',
                color: product.color,
              ),
              onPressed: null),
        ),
        Expanded(
          child: SizedBox(
            height: 50,
            child: FlatButton(
              color: product.color,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
              ),
              child: Text(
                'buy now',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () {},
            ),
          ),
        )
      ],
    );
  }
}
