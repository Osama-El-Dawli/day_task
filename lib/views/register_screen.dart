import 'package:day_task/utils/app_colors.dart';
import 'package:day_task/utils/functions/show_snackbar.dart';
import 'package:day_task/utils/images_string.dart';
import 'package:day_task/views/widgets/continue_with.dart';
import 'package:day_task/views/widgets/fields_entery.dart';
import 'package:day_task/views/widgets/main_buton.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Image.asset(ImagesString.logo),
                  FieldsEntery(
                    emailController: TextEditingController(),
                    passwordController: TextEditingController(),
                    isRegistered: true,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: true,
                        checkColor: AppColors.backgroundColor,
                        fillColor:
                            const WidgetStatePropertyAll(AppColors.mainColor),
                        onChanged: (value) {},
                      ),
                      Expanded(
                        child: Text(
                          'I have read & agree to DayTask Privacy Policy, Terms & Conditions',
                          maxLines: 2,
                          style:
                              Theme.of(context).textTheme.labelLarge!.copyWith(
                                    color: AppColors.labelTextFormColor,
                                  ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  MainButton(
                    textButton: 'Sign Up',
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        showSnackBar(context, 'Register successfull');
                      }
                    },
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  const ContinueWith(
                    isRegistered: true,
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
