import 'package:bwa_cozy/models/city.dart';
import 'package:bwa_cozy/models/space.dart';
import 'package:bwa_cozy/models/tips.dart';
import 'package:bwa_cozy/theme.dart';
import 'package:bwa_cozy/widgets/city_card.dart';
import 'package:bwa_cozy/widgets/space_card.dart';
import 'package:bwa_cozy/widgets/tips_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              // NOTE: TITLE/HEADER
              Padding(
                padding: EdgeInsets.only(top: 24, left: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Explore Now',
                      style: mediumText.copyWith(fontSize: 24),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      'Mencari kosan yang cozy',
                      style: lightText.copyWith(fontSize: 16),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              // NOTE: POPULAR CITIES
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 24),
                    child: Text('Popular Cities'),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    height: 150,
                    child:
                        ListView(scrollDirection: Axis.horizontal, children: [
                      SizedBox(
                        width: 24,
                      ),
                      CityCard(
                          City(name: 'Jakarta', imageUrl: 'assets/city1.png')),
                      SizedBox(
                        width: 20,
                      ),
                      CityCard(City(
                          name: 'Bandung',
                          imageUrl: 'assets/city2.png',
                          star: true)),
                      SizedBox(
                        width: 20,
                      ),
                      CityCard(
                          City(name: 'Surabaya', imageUrl: 'assets/city3.png')),
                      SizedBox(
                        width: 20,
                      ),
                    ]),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.only(left: 24),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Recommended Space'),
                      SizedBox(
                        height: 16,
                      ),
                      SpaceCard(Space(
                          title: 'Kuretakeso Hott',
                          rating: '4/5',
                          imageUrl: 'assets/space1.png',
                          price: 52,
                          address: 'Bandung, Germany')),
                      SizedBox(
                        height: 30,
                      ),
                      SpaceCard(Space(
                          title: 'Roemah Nenek',
                          rating: '5/5',
                          imageUrl: 'assets/space2.png',
                          price: 11,
                          address: 'Seattle, Bogor')),
                      SizedBox(
                        height: 30,
                      ),
                      SpaceCard(Space(
                          title: 'Darrling How',
                          rating: '3/5',
                          imageUrl: 'assets/space3.png',
                          price: 20,
                          address: 'Jakarta, Indonesia')),
                      SizedBox(
                        height: 30,
                      ),
                    ]),
              ),
              Padding(
                padding: EdgeInsets.only(left: 24, right: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Tips & Guidance'),
                    SizedBox(
                      height: 16,
                    ),
                    TipsCard(Tips(
                        title: "City Guidelines",
                        image: 'tips1.png',
                        updated: "Updated 20 Apr")),
                    SizedBox(
                      height: 20,
                    ),
                    TipsCard(Tips(
                        title: "Jakarta Fairship",
                        image: 'tips2.png',
                        updated: "Updated 11 Dec")),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              )
            ]),
            SizedBox(
              height: 70,
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 65,
        width: MediaQuery.of(context).size.width - 2 * 24,
        margin: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
        decoration: BoxDecoration(
            color: gray2Color, borderRadius: BorderRadius.circular(23)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconCard(),
            IconCard(),
            IconCard(),
            IconCard(),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class IconCard extends StatelessWidget {
  const IconCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Spacer(),
          Icon(Icons.abc),
          Spacer(),
          Container(
            width: 30,
            height: 4,
            decoration: BoxDecoration(
                color: puprleColor,
                borderRadius:
                    BorderRadius.vertical(top: Radius.circular(1000))),
          )
        ],
      ),
    );
  }
}
