import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ItemCard extends StatelessWidget {
  final String title, shopName, svgSrc;
  final Function press;
  const ItemCard({
    Key key,
    this.title,
    this.shopName,
    this.svgSrc,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(left: 20, right: 0, top: 20, bottom: 20),
      decoration: BoxDecoration(
        color: Colors.indigo[800],
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
              offset: Offset(0, 4),
              blurRadius: 20,
              color: Color(0xFFB0CCE1).withOpacity(0.32))
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: Container(
          child: InkWell(
            onTap: press,
            child: Padding(
              padding: const EdgeInsets.all(2),
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(bottom: 5, top: 5),
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                    child: SvgPicture.asset(
                      svgSrc,
                      width: size.width * 0.12,
                    ),
                  ),
                  Padding(padding: const EdgeInsets.all(5)),
                  Text(
                    title,
                    style: TextStyle(color: Colors.white),
                  ),
                  // SizedBox(
                  //   height: 5,
                  // ),
                  // Text(shopName, style: TextStyle(fontSize: 12))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
