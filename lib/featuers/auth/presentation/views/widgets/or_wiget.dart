import 'package:ecommerce/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class OrWiget extends StatelessWidget {
  const OrWiget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            color: Color(0xFFDCDEDE),
            thickness: 1,
            endIndent: 20, // Adjust spacing
          ),
        ),
        Text(
          'أو', // Example text
          style: TextStyles.semiBold16.copyWith(
            color: Color(0xFF0C0D0D),
          ),
        ),
        Expanded(
          child: Divider(
            color: Color(0xFFDCDEDE),
            thickness: 1,
            indent: 20, // Adjust spacing
          ),
        ),
      ],
    );
  }
}
