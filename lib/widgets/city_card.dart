import 'package:bwa_cozy/models/city.dart';
import 'package:bwa_cozy/theme.dart';
import 'package:flutter/material.dart';

class CityCard extends StatelessWidget {
  final City city;

  const CityCard(this.city);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(17)),
      child: Container(
        width: 120,
        height: 150,
        color: gray2Color,
        child: Column(
          children: [
            Stack(children: [
              Image.asset(city.imageUrl!),
              Align(
                alignment: Alignment.topRight,
                child: city.star ?? true
                    ? Container(
                        width: 50,
                        height: 30,
                        decoration: BoxDecoration(
                            color: puprleColor,
                            borderRadius: BorderRadiusDirectional.only(
                                bottomStart: Radius.circular(30))),
                        child: Center(
                          child: Image.asset(
                            'assets/star.png',
                            width: 17,
                            height: 17,
                          ),
                        ),
                      )
                    : Container(),
              )
            ]),
            SizedBox(
              height: 11,
            ),
            Text(
              city.name!,
              style: mediumText.copyWith(fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}
