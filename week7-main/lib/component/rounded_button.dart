import 'package:flutter/material.dart';
import 'package:week7/common/const/colors.dart';
import 'package:week7/common/const/text.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    super.key,
    required this.onTap,
    this.isNeedIcon = false,
    this.icon,
    required this.text,
  });

  final VoidCallback onTap;
  final bool isNeedIcon;
  final IconData? icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          vertical: 20,
        ),
        decoration: BoxDecoration(
          color: GREY900,
          borderRadius: BorderRadius.circular(28),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (isNeedIcon)
              Icon(
                icon,
                size: 16,
                color: WHITE,
              ),
            if (isNeedIcon) const SizedBox(width: 8),
            Text(
              text,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: W900,
                color: WHITE,
                fontFamily: SUITE,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
