import 'package:flutter/material.dart';

class BottomInformation extends StatelessWidget {
  final String subTitle;
  final String title;
  final IconData icon;
  const BottomInformation({
    super.key,
    required this.subTitle,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          subTitle,
          style: const TextStyle(
            color: Color(0xFFA3A1A4),
            fontSize: 16,
            fontWeight: FontWeight.w900,
          ),
        ),
        Text(
          title,
          style: const TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.w900,
            color: Color(0xFF45454C),
          ),
        ),
        const SizedBox(
          height: 1,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Icon(
              icon,
              size: 55,
            ),
          ],
        ),
      ],
    );
  }
}
