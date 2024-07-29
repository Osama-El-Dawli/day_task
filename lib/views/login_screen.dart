import 'package:day_task/utils/app_colors.dart';
import 'package:day_task/utils/images_string.dart';
import 'package:day_task/views/widgets/continue_with.dart';
import 'package:day_task/views/widgets/fields_entery.dart';
import 'package:day_task/views/widgets/main_buton.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

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
                    emailController: _emailController,
                    passwordController: _passwordController,
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
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _auth
                            .signInWithEmailAndPassword(
                              email: _emailController.text,
                              password: _passwordController.text,
                            )
                            .then((user) {});

                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Center(
                                child: Text(
                              'Login successfull',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(color: Colors.white),
                            )),
                            behavior: SnackBarBehavior.floating,
                            margin: const EdgeInsets.all(24),
                            duration: const Duration(seconds: 2),
                            backgroundColor: AppColors.textFormColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24),
                            ),
                          ),
                        );
                      }
                    },
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
