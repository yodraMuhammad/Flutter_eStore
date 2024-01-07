import 'package:ecommerce/common/widgets/login_signup/form_divider.dart';
import 'package:ecommerce/common/widgets/login_signup/social_button.dart';
import 'package:ecommerce/features/authetincation/screens/signup/widgets/signup_form.dart';
import 'package:ecommerce/utils/constans/sizes.dart';
import 'package:ecommerce/utils/constans/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Text(
                TTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: TSizes.spaceBtwSection),

              // Form
              const TSignupForm(),
              const SizedBox(height: TSizes.spaceBtwSection),

              // Divider
              TFormDivider(dividerText: TTexts.orSignUpWith.capitalize!),
              const SizedBox(height: TSizes.spaceBtwSection),

              // Social Button
              const TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
