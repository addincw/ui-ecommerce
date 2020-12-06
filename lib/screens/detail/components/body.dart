import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_ecommerce/constants.dart';
import 'package:ui_ecommerce/models/Product.dart';
import 'package:ui_ecommerce/screens/detail/components/item_action.dart';
import 'package:ui_ecommerce/screens/detail/components/item_color_size.dart';
import 'package:ui_ecommerce/screens/detail/components/item_price_image.dart';
import 'package:ui_ecommerce/screens/detail/components/item_qty_favorite.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: PADDING,
                    right: PADDING,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      ItemColorSize(product: product),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: PADDING),
                        child: Text(product.description),
                      ),
                      ItemQtyFavorite(),
                      Padding(
                        padding: const EdgeInsets.only(top: PADDING * 3),
                        child: ItemAction(product: product),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: PADDING),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Aristocratic Hand Bag',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        product.title,
                        style: Theme.of(context).textTheme.headline4.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      ItemPriceImage(product: product),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
