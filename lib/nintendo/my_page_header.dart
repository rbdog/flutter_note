import 'package:flutter/material.dart';
import 'package:banana/nintendo/button_holder.dart';
import 'package:banana/nintendo/colors.dart';
import 'package:banana/nintendo/fixtures.dart';
import 'package:banana/nintendo/gap.dart';
import 'package:banana/nintendo/sizes.dart';
import 'package:banana/nintendo/text_styles.dart';

class MyPageHeader extends StatelessWidget {
  const MyPageHeader({
    super.key,
    required this.onPressedSettingButton,
  });

  final void Function() onPressedSettingButton;

  @override
  Widget build(BuildContext context) {
    final settingButton = IconButton(
      onPressed: onPressedSettingButton,
      icon: const Icon(Icons.settings_outlined),
    );

    final userIcon = ClipOval(
      child: Image.asset(Fixtures.userIconUri),
    );

    const userNameText = Text(
      Fixtures.userName,
      textAlign: TextAlign.left,
      style: MyTextStyles.xlBold,
    );

    final userDeatilButtonHolder = ButtonHolder(
      children: [
        IconButton(
          onPressed: onPressedSettingButton,
          icon: const Icon(
            Icons.qr_code_rounded,
            size: Sizes.p18,
          ),
        ),
        IconButton(
          onPressed: onPressedSettingButton,
          icon: const Icon(
            Icons.location_on_outlined,
            size: Sizes.p18,
          ),
        ),
      ],
    );

    return Container(
      padding: const EdgeInsets.all(Sizes.p20),
      color: MyColors.white,
      child: Column(
        children: [
          Row(
            children: [
              const Spacer(),
              settingButton,
            ],
          ),
          SizedBox(
            height: Sizes.p80,
            child: Row(
              children: [
                userIcon,
                Gap.w10,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: userNameText,
                        ),
                      ),
                      SizedBox(
                        height: Sizes.p30,
                        child: userDeatilButtonHolder,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
