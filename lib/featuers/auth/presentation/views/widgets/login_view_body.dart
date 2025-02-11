import 'package:ecommerce/constants.dart';
import 'package:ecommerce/core/utils/app_color.dart';
import 'package:ecommerce/core/utils/app_images.dart';
import 'package:ecommerce/core/utils/app_text_styles.dart';
import 'package:ecommerce/core/widgets/custom_button.dart';
import 'package:ecommerce/featuers/auth/presentation/views/widgets/custom_text_form_field.dart';
import 'package:ecommerce/featuers/auth/presentation/views/widgets/dont_have_an_account_widget.dart';
import 'package:ecommerce/featuers/auth/presentation/views/widgets/or_wiget.dart';
import 'package:ecommerce/featuers/auth/presentation/views/widgets/social_login_button.dart';
import 'package:flutter/material.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 24),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'نسيت كلمة المرور؟',
                    style: TextStyles.semiBold13.copyWith(
                      color: AppColor.ligthPrimaryColor,
                      height: 1.70,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 33),
              CustomButton(onPressed: () {}, text: 'تسجيل دخول'),
              SizedBox(height: 33),
              DontHaveAnAccountWidget(),
              SizedBox(height: 33),
              OrWiget(),
              SizedBox(height: 25),
              SocialLoginButton(
                title: 'تسجيل بواسطة جوجل',
                image: Assets.imagesGoogleIcon,
                onPressed: () {},
              ),
              SizedBox(height: 16),
              SocialLoginButton(
                title: 'تسجيل بواسطة أبل',
                image: Assets.imagesApplIcon,
                onPressed: () {},
              ),
              SizedBox(height: 16),
              SocialLoginButton(
                title: 'تسجيل بواسطة فيسبوك',
                image: Assets.imagesFacebookIcon,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
