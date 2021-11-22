import 'package:flutter/material.dart';
import 'package:sanggraloka_ta/model/city.dart';
import '../theme.dart';

class CityCard extends StatelessWidget {
  final City city;

  CityCard(this.city);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: Container(
        height: 150,
        width: 120,
        color: yellowColor,//Color(0xffF6F7F8),
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  city.imageURL,
                  width: 120,
                  height: 102,
                  fit: BoxFit.cover,
                ),
                city.isPopular ? Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: 50,
                    height: 30,
                    decoration: BoxDecoration(
                        color: Color(0xff000000).withOpacity(0.7),
                        borderRadius:
                            BorderRadius.only(bottomLeft: Radius.circular(36))),
                    child: Center(
                        child: Image.asset(
                      'assets/icon_star.png',
                      width: 22,
                      height: 22,
                    )),
                  ),
                ) : Container(),
              ],
            ),
            SizedBox(
              height: 11,
            ),
            Text(
              city.name,
              style: blackTextStyle.copyWith(fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}
