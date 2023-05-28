import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardIconCategory extends StatelessWidget {
  const CardIconCategory({
    super.key,
    required this.listColor,
    required this.keyMapCategory,
    required this.index
  });

  final List<Color> listColor;
  final SvgPicture keyMapCategory;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 45,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: listColor[index].withOpacity(0.7),
      ),
      child: keyMapCategory,
    );
  }
}