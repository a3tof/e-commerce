import 'package:ecommerce/core/utils/app_color.dart';
import 'package:ecommerce/core/utils/app_text_styles.dart';
import 'package:ecommerce/featuers/auth/presentation/views/widgets/custom_check_box.dart';
import 'package:flutter/material.dart';

class TermsAndConditionsWidget extends StatefulWidget {
  const TermsAndConditionsWidget({super.key});

  @override
  State<TermsAndConditionsWidget> createState() =>
      _TermsAndConditionsWidgetState();
}

class _TermsAndConditionsWidgetState extends State<TermsAndConditionsWidget> {
  bool isTermsAccepted = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCheckBox(
          onChanged: (value) {
            setState(() {
              isTermsAccepted = value;
            });
          },
          isChecked: isTermsAccepted,
        ),
        SizedBox(width: 16),
        Expanded(
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                    text: 'من خلال إنشاء حساب ، فإنك توافق على ',
                    style: TextStyles.semiBold13.copyWith(
                      color: Color(0xFF949D9E),
                    )),
                TextSpan(
                    text: 'الشروط والأحكام',
                    style: TextStyles.semiBold13.copyWith(
                      color: AppColor.ligthPrimaryColor,
                    )),
                TextSpan(
                    text: ' ',
                    style: TextStyles.semiBold13.copyWith(
                      color: Color(0xFF616A6B),
                    )),
                TextSpan(
                    text: 'الخاصة',
                    style: TextStyles.semiBold13.copyWith(
                      color: AppColor.ligthPrimaryColor,
                    )),
                TextSpan(
                    text: ' ',
                    style: TextStyles.semiBold13.copyWith(
                      color: Color(0xFF616A6B),
                    )),
                TextSpan(
                    text: 'بنا',
                    style: TextStyles.semiBold13.copyWith(
                      color: AppColor.ligthPrimaryColor,
                    )),
              ],
            ),
            textAlign: TextAlign.right,
          ),
        )
      ],
    );
  }
}
