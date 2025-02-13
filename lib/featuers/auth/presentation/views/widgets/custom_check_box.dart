import 'package:ecommerce/core/utils/app_color.dart';
import 'package:ecommerce/core/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomCheckBox extends StatelessWidget {
  const CustomCheckBox(
      {super.key, required this.isChecked, required this.onChanged});
  final bool isChecked;
  final ValueChanged<bool> onChanged;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onChanged(!isChecked);
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 100),
        width: 24,
        height: 24,
        decoration: ShapeDecoration(
          color: isChecked ? AppColor.primaryColor : Colors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(
                width: 1.50,
                color: isChecked ? Colors.transparent : Color(0xFFDCDEDE)),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: isChecked
            ? Padding(
                padding: const EdgeInsets.all(2),
                child: SvgPicture.asset(Assets.imagesCheck),
              )
            : SizedBox(),
      ),
    );
  }
}
