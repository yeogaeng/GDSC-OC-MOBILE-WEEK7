import 'package:flutter/material.dart';
import 'package:week7/common/const/text.dart';

class KeywordSelectBox extends StatelessWidget {
  const KeywordSelectBox({
    super.key,
    required this.isSelected,
    required this.keywords,
    required this.index,
  });

  final List<bool> isSelected;
  final List<String> keywords;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: isSelected[index] ? const Color(0xFF313131) : Colors.grey,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          keywords[index],
          style: TextStyle(
            fontSize: 16,
            fontWeight: W900,
            color: isSelected[index] ? const Color(0xFF313131) : Colors.grey,
          ),
        ),
      ),
    );
  }
}
