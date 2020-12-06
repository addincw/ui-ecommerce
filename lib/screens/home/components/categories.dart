import 'package:flutter/material.dart';
import 'package:ui_ecommerce/constants.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> _categories = ['Hand bag', 'Jewelery', 'Footwear', 'Dresses'];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: PADDING / 2),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: _categories.length,
          itemBuilder: (context, index) => Category(
              category: _categories[index],
              selected: selectedIndex == index,
              tap: () => setState(() => selectedIndex = index)),
        ),
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String category;
  final Function tap;
  final bool selected;

  const Category({this.category, this.selected, this.tap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: PADDING),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              category,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: selected ? TEXT_COLOR : TEXT_COLOR_LIGHT,
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: PADDING / 4),
                height: 2,
                width: 30,
                color: selected ? TEXT_COLOR : Colors.transparent)
          ],
        ),
      ),
    );
  }
}
