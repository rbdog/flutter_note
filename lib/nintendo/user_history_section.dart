import 'package:flutter/material.dart';
import 'package:banana/nintendo/checkin_history_item.dart';
import 'package:banana/nintendo/colors.dart';
import 'package:banana/nintendo/gap.dart';
import 'package:banana/nintendo/messages.dart';
import 'package:banana/nintendo/play_history_item.dart';
import 'package:banana/nintendo/sizes.dart';
import 'package:banana/nintendo/text_styles.dart';

class UserHistorySection extends StatelessWidget {
  const UserHistorySection({
    super.key,
    required this.exampleGameTilte,
    required this.examplePlayHistory,
    required this.exampleEventTilte,
  });

  final String exampleGameTilte;
  final String examplePlayHistory;
  final String exampleEventTilte;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: MyColors.white,
        borderRadius: BorderRadius.circular(Sizes.p16),
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(Sizes.p20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: Sizes.p30,
                  child: Row(
                    children: [
                      const Text(
                        Messages.recentHistories,
                        style: MyTextStyles.mBold,
                      ),
                      const Spacer(),
                      Icon(
                        Icons.info_outline,
                        size: Sizes.p20,
                        color: MyColors.darkGrey,
                      ),
                    ],
                  ),
                ),
                Gap.h5,
                const Text(
                  Messages.today,
                  style: MyTextStyles.lBold,
                ),
                Gap.h10,
                SizedBox(
                  height: Sizes.p80,
                  child: PlayHistoryItem(
                    gameTitle: exampleGameTilte,
                    value: examplePlayHistory,
                  ),
                ),
                Gap.h20,
                SizedBox(
                  height: Sizes.p80,
                  child: CheckinHistoryItem(
                    eventTitle: exampleEventTilte,
                  ),
                ),
              ],
            ),
          ),
          Divider(
            thickness: Sizes.p1point5,
            height: Sizes.p1point5,
            color: MyColors.lightGrey,
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(
              Sizes.p20,
              Sizes.p14,
              Sizes.p20,
              Sizes.p14,
            ),
            child: Row(
              children: [
                const Spacer(),
                Text(
                  Messages.seeMore,
                  style: MyTextStyles.mGrey,
                ),
                Gap.w5,
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: Sizes.p14,
                  color: MyColors.darkGrey,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
