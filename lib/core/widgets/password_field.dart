import 'package:ecommerce/featuers/auth/presentation/views/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({
    super.key,
    this.onSaved,
  });
  final void Function(String?)? onSaved;

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      onSaved: (value) {},
      obscureText: obscureText,
      hintText: 'كلمة المرور',
      textInputType: TextInputType.visiblePassword,
      icon: GestureDetector(
        onTap: () {
          setState(() {
            obscureText = !obscureText;
          });
        },
        child: obscureText
            ? Icon(
                Icons.visibility,
                color: Color(0xFFc9cecf),
              )
            : Icon(
                Icons.visibility_off,
                color: Color(0xFFc9cecf),
              ),
      ),
    );
  }
}
