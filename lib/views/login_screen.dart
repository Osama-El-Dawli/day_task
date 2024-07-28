import 'package:day_task/utils/app_colors.dart';
import 'package:day_task/utils/images_string.dart';
import 'package:day_task/views/widgets/continue_with.dart';
import 'package:day_task/views/widgets/fields_entery.dart';
import 'package:day_task/views/widgets/main_buton.dart';
import 'package:flutter/material.dart';

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
                  const FieldsEntery(),
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
                  const ContinueWith(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
