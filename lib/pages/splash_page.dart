import 'package:bwa_cozy/pages/home_page.dart';
import 'package:bwa_cozy/theme.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false, //untuk iphone agar tidak ada space dibawah
        child: Stack(
          children: [
            //align di awal karena agar align berada dibawah, dan column berada diatas align nya.
            Align(
              alignment: Alignment.bottomCenter,
              child: Transform.translate(
                offset: Offset(0, 110),
                child: Image.asset('assets/splash_hero.png'),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 30, top: 50),
                  child: Image.asset(
                    'assets/logo.png',
                    width: 50,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Text(
                    'Find Cozy House to\nStay and Happy',
                    style: mediumText.copyWith(fontSize: 24),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Text(
                    'Stop membuang banyak waktu\npada tempat yang tidak habitable',
                    style: lightText.copyWith(fontSize: 16),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomePage()));
                      },
                      child: Text(
                        'Explore Now',
                        style: mediumText.copyWith(
                            fontSize: 18, color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              vertical: 17, horizontal: 50),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(17)),
                          backgroundColor: puprleColor),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
