import 'package:day_task/utils/app_colors.dart';
import 'package:day_task/views/widgets/text_input.dart';
import 'package:flutter/material.dart';

class FieldsEntery extends StatelessWidget {
  const FieldsEntery({super.key, this.isRegistered = false, required this.emailController, required this.passwordController});
  final bool isRegistered;
  final TextEditingController emailController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 24,
        ),
        Text(
          isRegistered ? 'Create Your Account' : 'Welcome Back!',
          style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
        ),
        const SizedBox(
          height: 18,
        ),
        if (isRegistered)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Full Name',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: AppColors.labelTextFormColor,
                    ),
              ),
              const SizedBox(
                height: 8,
              ),
              TextInput(
                hintText: 'Enter Your Full Name',
                prefixIcon: Icons.person_rounded,
                continueValidate: (text) {
                  if (text.length < 10) {
                    return 'At least 10 characters';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 16,
              ),
            ],
          ),
        Text(
          'Email Address',
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: AppColors.labelTextFormColor,
              ),
        ),
        const SizedBox(
          height: 8,
        ),
        TextInput(
          controller: emailController,
          hintText: 'Enter Your Email',
          prefixIcon: Icons.email,
          continueValidate: (emailText) {
            final regExp = RegExp(
                r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
            if (!regExp.hasMatch(emailText.trim())) {
              return 'Email isn\'t valid';
            }
            return null;
          },
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          'Password',
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: AppColors.labelTextFormColor,
              ),
        ),
        const SizedBox(
          height: 8,
        ),
        TextInput(
          controller: passwordController,
          continueValidate: (password) {
            if (password.length < 8) {
              return 'At least 8 characters';
            }
            return null;
          },
          hintText: 'Enter Your Password',
          prefixIcon: Icons.lock,
          isPassword: true,
        ),
      ],
    );
  }
}
