import 'package:bwa_cozy/models/space.dart';
import 'package:bwa_cozy/pages/detail_page.dart';
import 'package:bwa_cozy/theme.dart';
import 'package:flutter/material.dart';

class SpaceCard extends StatelessWidget {
  final Space space;

  const SpaceCard(this.space);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => DetailPage()));
      },
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(17),
            child: Container(
                width: 130,
                height: 110,
                child: Stack(
                  children: [
                    Image.asset(space.imageUrl!),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        width: 70,
                        height: 30,
                        decoration: BoxDecoration(
                            color: puprleColor,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(18))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/star.png',
                              width: 18,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '4/5',
                              style: mediumText.copyWith(
                                  fontSize: 13, color: Color(0xffFFFFFF)),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                )),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(space.title!),
              SizedBox(
                height: 2,
              ),
              RichText(
                  text: TextSpan(
                      style:
                          mediumText.copyWith(fontSize: 16, color: puprleColor),
                      text: '\$${space.price}',
                      children: [
                    TextSpan(
                        text: ' / month',
                        style: lightText.copyWith(fontSize: 16))
                  ])),
              SizedBox(
                height: 16,
              ),
              Text(
                space.address!,
                style: lightText.copyWith(fontSize: 14),
              ),
            ],
          )
        ],
      ),
    );
  }
}
