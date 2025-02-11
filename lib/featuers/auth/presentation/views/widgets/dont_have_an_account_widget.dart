import 'package:ecommerce/core/utils/app_color.dart';
import 'package:ecommerce/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class DontHaveAnAccountWidget extends StatelessWidget {
  const DontHaveAnAccountWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: 'لا تملك حساب؟',
            style: TextStyles.semiBold16.copyWith(
              color: Color(0xFF949D9E),
              height: 1.40,
            ),
          ),
          TextSpan(
            text: ' قم بإنشاء حساب ',
            style: TextStyles.semiBold16.copyWith(
              color: AppColor.primaryColor,
              height: 1.40,
            ),
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
