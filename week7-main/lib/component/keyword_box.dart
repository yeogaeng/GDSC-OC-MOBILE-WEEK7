import 'package:flutter/material.dart';
import 'package:week7/common/const/colors.dart';
import 'package:week7/common/const/text.dart';

class KeywordBox extends StatelessWidget {
  const KeywordBox({
    super.key,
    required this.keyword,
  });

  final String keyword;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 8,
      ),
      decoration: BoxDecoration(
        color: WHITE,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: const Color(0xFF313131),
          width: 1.0,
        ),
      ),
      child: Text(
        "#$keyword",
        style: const TextStyle(
          fontSize: 13,
          fontWeight: W800,
          color: Color(0xFF313131),
        ),
      ),
    );
  }
}
