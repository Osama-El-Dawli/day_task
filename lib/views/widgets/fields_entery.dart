import 'package:day_task/utils/app_colors.dart';
import 'package:day_task/views/widgets/text_input.dart';
import 'package:flutter/material.dart';

class FieldsEntery extends StatelessWidget {
  const FieldsEntery({super.key, this.isRegistered = false});
  final bool isRegistered;

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
              const TextInput(
                hintText: 'Enter Your Full Name',
                prefixIcon: Icons.person_rounded,
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
        const TextInput(
          hintText: 'Enter Your Email',
          prefixIcon: Icons.email,
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
        const TextInput(
          hintText: 'Enter Your Password',
          prefixIcon: Icons.lock,
          isPassword: true,
        ),
      ],
    );
  }
}
