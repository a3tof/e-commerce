import 'package:ecommerce/core/utils/app_color.dart';
import 'package:ecommerce/core/utils/app_text_styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class HaveAnAcoount extends StatelessWidget {
  const HaveAnAcoount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: 'تمتلك حساب بالفعل؟ ',
            style: TextStyles.semiBold16.copyWith(
              color: Color(0xFF949D9E),
              height: 1.40,
            ),
          ),
          TextSpan(
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                Navigator.pop(context);
              },
            text: 'تسجيل دخول',
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
