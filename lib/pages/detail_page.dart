import 'package:bwa_cozy/pages/error_page.dart';
import 'package:bwa_cozy/theme.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    openLauncher(String url) async {
      final Uri launchUri = Uri.parse(url);

      if (await canLaunchUrl(launchUri)) {
        launchUrl(launchUri);
      } else {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ErrorPage(),
            ));
      }
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(children: [
          Image.asset(
            'assets/city3.png',
            height: 350,
            fit: BoxFit.cover,
          ),
          ListView(
            children: [
              SizedBox(
                height: 328,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(20))),
                child: Column(children: [
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text('Kuretakeso Hott'),
                            SizedBox(
                              height: 2,
                            ),
                            RichText(
                                text: TextSpan(
                                    style: mediumText.copyWith(
                                        fontSize: 16, color: puprleColor),
                                    text: '\$52',
                                    children: [
                                  TextSpan(
                                      text: ' / month',
                                      style: lightText.copyWith(
                                        fontSize: 16,
                                      ))
                                ]))
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Color(0xffFF9376),
                            ),
                            SizedBox(
                              width: 4.51,
                            ),
                            Icon(
                              Icons.star,
                              color: Color(0xffFF9376),
                            ),
                            SizedBox(
                              width: 4.51,
                            ),
                            Icon(
                              Icons.star,
                              color: Color(0xffFF9376),
                            ),
                            SizedBox(
                              width: 4.51,
                            ),
                            Icon(
                              Icons.star,
                              color: Color(0xffFF9376),
                            ),
                            SizedBox(
                              width: 4.51,
                            ),
                            Icon(
                              Icons.star,
                              color: Color(0xff989BA1),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Main Facilities'),
                        SizedBox(
                          height: 12,
                        ),
                        Row(
                          children: [
                            Facility_Card(
                              image: 'assets/facility1.png',
                              items_name: 'kitchen',
                              total_items: 2,
                            ),
                            SizedBox(
                              width: 35,
                            ),
                            Facility_Card(
                              image: 'assets/facility2.png',
                              items_name: 'bedroom',
                              total_items: 3,
                            ),
                            SizedBox(
                              width: 35,
                            ),
                            Facility_Card(
                              image: 'assets/facility3.png',
                              items_name: 'Big Lemari',
                              total_items: 4,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: Text('Photos'),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Container(
                        height: 88,
                        child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              SizedBox(
                                width: 24,
                              ),
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset(
                                    'assets/photos3.png',
                                    width: 110,
                                    height: 88,
                                    fit: BoxFit.cover,
                                  )),
                              SizedBox(
                                width: 18,
                              ),
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset(
                                    'assets/photos2.png',
                                    width: 110,
                                    height: 88,
                                    fit: BoxFit.cover,
                                  )),
                              SizedBox(
                                width: 18,
                              ),
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset(
                                    'assets/photos1.png',
                                    width: 110,
                                    height: 88,
                                    fit: BoxFit.cover,
                                  )),
                            ]),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Location',
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Row(
                          children: [
                            Text(
                              'Jln. Kappan Sukses No. 20\nPalembang',
                              style: regularText.copyWith(color: gray3Color),
                            ),
                            Spacer(),
                            ElevatedButton(
                              onPressed: () {},
                              child: Icon(
                                Icons.location_on,
                                color: Color(0xff989BA1),
                                size: 22,
                              ),
                              style: ElevatedButton.styleFrom(
                                  shape: CircleBorder(),
                                  shadowColor: Colors.transparent,
                                  backgroundColor: gray2Color,
                                  minimumSize: Size(40, 40)),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - (2 * 24),
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        // openLauncher('https://goo.gl/maps/VzfjuKydwQeoeefr6');
                        openLauncher('https://go');
                      },
                      child: Text(
                        'Book Now',
                        style: mediumText.copyWith(
                            fontSize: 18, color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(17))),
                          backgroundColor: puprleColor),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  )
                ]),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 24, right: 24, top: 30),
            child: Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.turn_left,
                    size: 20,
                    color: Color(0xff3A3379),
                  ),
                  style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      backgroundColor: Colors.white,
                      minimumSize: Size(40, 40)),
                ),
                Spacer(),
                ElevatedButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.heart_broken,
                    size: 20,
                    color: Color(0xff3A3379),
                  ),
                  style: ElevatedButton.styleFrom(
                      shape: CircleBorder(), backgroundColor: Colors.white),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

class Facility_Card extends StatelessWidget {
  final int? total_items;
  final String? items_name;
  final String? image;

  const Facility_Card({this.image, this.items_name, this.total_items});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          '${this.image}',
          width: 32,
          height: 32,
        ),
        SizedBox(
          height: 8,
        ),
        RichText(
          text: TextSpan(
              text: '${this.total_items}',
              style: mediumText.copyWith(fontSize: 14, color: puprleColor),
              children: [
                TextSpan(
                    text: ' ${this.items_name}',
                    style: mediumText.copyWith(color: gray3Color))
              ]),
        ),
      ],
    );
  }
}
