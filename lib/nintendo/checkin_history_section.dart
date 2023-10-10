import 'package:flutter/material.dart';
import 'package:banana/nintendo/colors.dart';
import 'package:banana/nintendo/images.dart';
import 'package:banana/nintendo/messages.dart';
import 'package:banana/nintendo/sizes.dart';
import 'package:banana/nintendo/text_styles.dart';

/// イベント参加の履歴 セクション
class CheckinHistorySection extends StatelessWidget {
  const CheckinHistorySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(
        Radius.circular(Sizes.p20),
      ),
      child: Container(
        color: MyColors.white,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(Images.map.path),
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
                  const Text(
                    Messages.historiesOfcheckin,
                    style: MyTextStyles.mBold,
                  ),
                  const Spacer(),
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
      ),
    );
  }
}
