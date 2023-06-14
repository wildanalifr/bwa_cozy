import 'package:bwa_cozy/models/tips.dart';
import 'package:bwa_cozy/theme.dart';
import 'package:flutter/material.dart';

class TipsCard extends StatelessWidget {
  final Tips tips;

  const TipsCard(this.tips);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Image.asset(
            'assets/${tips.image}',
            width: 80,
          ),
          SizedBox(
            width: 16,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${tips.title}',
                style: mediumText.copyWith(fontSize: 18),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                '${tips.updated}',
                style: lightText.copyWith(fontSize: 14),
              ),
            ],
          ),
          Spacer(),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.chevron_right),
            color: Color(0xffC9C9C9),
          )
        ],
      ),
    );
  }
}
