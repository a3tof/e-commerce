import 'package:ecommerce/core/helper_function/build_error_bar.dart';
import 'package:ecommerce/featuers/auth/presentation/signup_cubits/cubit/signup_cubit.dart';
import 'package:ecommerce/featuers/auth/presentation/views/widgets/sign_up_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class SignupViewBodyBlocConsumer extends StatelessWidget {
  const SignupViewBodyBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignupCubit, SignupState>(
      listener: (context, state) {
        if (state is SignupSuccess) {}
        if (state is SignupFailure) {
          buildErrorBar(context, state.message);
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: state is SignupLoading ? true : false,
          child: SignUpViewBody(),
        );
      },
    );
  }
}
