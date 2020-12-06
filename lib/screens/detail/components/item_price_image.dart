import 'package:flutter/material.dart';
import 'package:ui_ecommerce/constants.dart';
import 'package:ui_ecommerce/models/Product.dart';

class ItemPriceImage extends StatelessWidget {
  const ItemPriceImage({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(text: "Price\n"),
              TextSpan(
                text: "\$${product.price}",
                style: Theme.of(context).textTheme.headline4.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ],
          ),
        ),
        SizedBox(width: PADDING * 4),
        Expanded(
          child: Image.asset(
            product.image,
            fit: BoxFit.fill,
          ),
        )
      ],
    );
  }
}
