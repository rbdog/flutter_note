import 'package:flutter/material.dart';
import 'package:banana/nintendo/checkin_history_section.dart';
import 'package:banana/nintendo/colors.dart';
import 'package:banana/nintendo/fixtures.dart';
import 'package:banana/nintendo/gap.dart';
import 'package:banana/nintendo/play_history_section.dart';
import 'package:banana/nintendo/point_section.dart';
import 'package:banana/nintendo/sizes.dart';
import 'package:banana/nintendo/user_history_section.dart';

class MyPageBody extends StatelessWidget {
  const MyPageBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Sizes.p20),
      color: MyColors.lightGrey,
      child: const Column(
        children: [
          PointSection(
            silverPoints: Fixtures.slverPoints,
            goldPoints: Fixtures.goldPoints,
          ),
          Gap.h14,
          UserHistorySection(
            exampleGameTilte: Fixtures.exampleGameTilte,
            examplePlayHistory: Fixtures.examplePlayHistory,
            exampleEventTilte: Fixtures.exampleEventTilte,
          ),
          Gap.h14,
          PlayHistorySection(),
          Gap.h14,
          CheckinHistorySection(),
        ],
      ),
    );
  }
}
