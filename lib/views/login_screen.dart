import 'package:day_task/utils/app_colors.dart';
import 'package:day_task/utils/images_string.dart';
import 'package:day_task/views/widgets/main_buton.dart';
import 'package:day_task/views/widgets/text_input.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Form(
              child: Column(
                children: [
                  Image.asset(ImagesString.logo),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 24,
                      ),
                      Text(
                        'Welcome Back!',
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      Text(
                        'Email Address',
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                              color: AppColors.labelTextFormColor,
                            ),
                      ),
                      const SizedBox(
                        height: 10,
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
                        height: 10,
                      ),
                      const TextInput(
                        hintText: 'Enter Your Password',
                        prefixIcon: Icons.lock,
                        isPassword: true,
                      ),
                    ],
                  ),
                  Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: TextButton(
                      child: Text(
                        'Forgot Password',
                        style: Theme.of(context).textTheme.labelLarge!.copyWith(
                              color: AppColors.labelTextFormColor,
                            ),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  MainButton(
                    textButton: 'Login',
                    onPressed: () {},
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Row(
                    children: [
                      const Expanded(
                          child: Divider(
                        color: AppColors.labelTextFormColor,
                        height: 1,
                        thickness: 1,
                      )),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Text(
                          'Or Continue With',
                          style:
                              Theme.of(context).textTheme.labelLarge!.copyWith(
                                    color: AppColors.labelTextFormColor,
                                  ),
                        ),
                      ),
                      const Expanded(
                          child: Divider(
                        color: AppColors.labelTextFormColor,
                        height: 1,
                        thickness: 1,
                      ))
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  MainButton(
                    icon: const Icon(
                      FontAwesomeIcons.google,
                      color: Colors.white,
                    ),
                    textButton: 'Google',
                    textColor: Colors.white,
                    onPressed: () {},
                    backColor: AppColors.backgroundColor,
                    border: const BorderSide(color: Colors.white, width: 2),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t have an account',
                        style: Theme.of(context).textTheme.labelLarge!.copyWith(
                              color: AppColors.labelTextFormColor,
                            ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Sign Up',
                          style:
                              Theme.of(context).textTheme.labelLarge!.copyWith(
                                    color: AppColors.mainColor,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
