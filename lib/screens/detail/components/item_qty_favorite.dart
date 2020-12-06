import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_ecommerce/constants.dart';

class ItemQtyFavorite extends StatefulWidget {
  @override
  _ItemQtyFavoriteState createState() => _ItemQtyFavoriteState();
}

class _ItemQtyFavoriteState extends State<ItemQtyFavorite> {
  int qty = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: [
                  OutlineIconButton(
                    icon: Icons.remove,
                    press: () => setState(() => qty > 1 ? qty-- : null),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: PADDING / 2),
                    child: Text(
                      qty.toString().padLeft(2, "0"),
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                  OutlineIconButton(
                    icon: Icons.add,
                    press: () => setState(() => qty++),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(PADDING / 2),
          height: 32,
          width: 32,
          decoration: BoxDecoration(
            color: Color(0xFFFF6464),
            shape: BoxShape.circle,
          ),
          child: SvgPicture.asset('assets/icons/heart.svg'),
        ),
      ],
    );
  }
}

class OutlineIconButton extends StatelessWidget {
  final IconData icon;

  final Function press;

  const OutlineIconButton({
    Key key,
    this.icon,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 40,
      height: 32,
      child: OutlineButton(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(13),
        ),
        child: Icon(icon),
        onPressed: press,
      ),
    );
  }
}
