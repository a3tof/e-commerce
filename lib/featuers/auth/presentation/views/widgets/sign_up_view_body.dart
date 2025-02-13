import 'package:ecommerce/constants.dart';
import 'package:ecommerce/core/widgets/custom_button.dart';
import 'package:ecommerce/featuers/auth/presentation/views/widgets/custom_text_form_field.dart';
import 'package:ecommerce/featuers/auth/presentation/views/widgets/have_an_account.dart';
import 'package:ecommerce/featuers/auth/presentation/views/widgets/terms_and_conditions.dart';
import 'package:flutter/material.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 24),
            CustomTextFormField(
              hintText: 'الاسم كامل',
              textInputType: TextInputType.name,
            ),
            SizedBox(height: 16),
            CustomTextFormField(
              hintText: 'البريد الإلكتروني',
              textInputType: TextInputType.emailAddress,
            ),
            SizedBox(height: 16),
            CustomTextFormField(
              hintText: 'كلمة المرور',
              textInputType: TextInputType.visiblePassword,
              icon: Icon(
                Icons.visibility,
                color: Color(0xFFc9cecf),
              ),
            ),
            SizedBox(height: 16),
            TermsAndConditionsWidget(),
            SizedBox(height: 30),
            CustomButton(onPressed: () {}, text: 'إنشاء حساب جديد'),
            SizedBox(height: 26),
            HaveAnAcoount()
          ],
        ),
      ),
    );
  }
}
