import 'package:flutter/material.dart';

/// カスタマイズしたチェックボックス
class CustomCheckbox extends StatelessWidget {
  const CustomCheckbox({
    super.key,
    this.activeColor = Colors.blue,
    this.padding = const EdgeInsets.all(8),
    this.onTapTitle,
    this.onLongPressTitle,
    required this.title,
    required this.value,
    required this.onChanged,
  });

  final Color activeColor;
  final EdgeInsets padding;
  final Widget title;
  final bool value;
  final ValueChanged<bool> onChanged;
  final VoidCallback? onTapTitle;
  final VoidCallback? onLongPressTitle;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapTitle,
      onLongPress: onLongPressTitle,
      child: Padding(
        padding: padding,
        child: Row(
          children: [
            Expanded(
              child: title,
            ),
            InkWell(
              onTap: () => onChanged(!value),
              child: Checkbox(
                activeColor: activeColor,
                value: value,
                onChanged: (newValue) {
                  onChanged(newValue!);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
