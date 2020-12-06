import 'package:flutter/material.dart';
import 'package:ui_ecommerce/constants.dart';
import 'package:ui_ecommerce/models/Product.dart';
import 'package:ui_ecommerce/screens/home/components/categories.dart';
import 'package:ui_ecommerce/screens/home/components/item_card.dart';
import 'package:ui_ecommerce/screens/detail/detail_screen.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: PADDING),
          child: Text(
            'Women',
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Categories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: PADDING),
            child: GridView.builder(
              itemCount: products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.75,
                mainAxisSpacing: PADDING,
                crossAxisSpacing: PADDING,
              ),
              itemBuilder: (context, index) => ItemCard(
                  product: products[index],
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen(
                          product: products[index],
                        ),
                      ),
                    );
                  }),
            ),
          ),
        ),
      ],
    );
  }
}
