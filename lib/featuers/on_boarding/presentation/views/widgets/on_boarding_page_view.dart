import 'package:ecommerce/core/utils/app_color.dart';
import 'package:ecommerce/core/utils/app_images.dart';
import 'package:ecommerce/core/utils/app_text_styles.dart';
import 'package:ecommerce/featuers/on_boarding/presentation/views/widgets/page_view_item.dart';
import 'package:flutter/material.dart';

class OnboardingPageView extends StatelessWidget {
  const OnboardingPageView({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        PageViewItem(
          image: Assets.imagesPageViewItem1Image,
          backgroundImage: Assets.imagesPageViewItem1BackgroundImage,
          subTitle:
              'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'مرحبًا بك في ',
                style: TextStyles.bold23,
              ),
              Text('HUB',
                  style: TextStyles.bold23.copyWith(
                    color: Color(0xFFF4A91F),
                  )),
              Text('Fruit',
                  style: TextStyles.bold23.copyWith(
                    color: AppColor.primaryColor,
                  )),
            ],
          ),
          isVisable: true,
        ),
        PageViewItem(
          image: Assets.imagesPageViewItem2Image,
          backgroundImage: Assets.imagesPageViewItem2BackgroundImage,
          subTitle:
              'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية',
          title: Text(
            'ابحث وتسوق',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF0C0D0D),
              fontSize: 23,
              fontFamily: 'Cairo',
              fontWeight: FontWeight.w700,
            ),
          ),
          isVisable: false,
        ),
      ],
    );
  }
}
