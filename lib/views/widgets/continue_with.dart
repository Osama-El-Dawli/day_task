import 'package:day_task/utils/app_colors.dart';
import 'package:day_task/utils/app_routs.dart';
import 'package:day_task/views/widgets/main_buton.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContinueWith extends StatelessWidget {
  const ContinueWith({super.key, this.isRegistered = false});
  final bool isRegistered;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
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
              isRegistered
                  ? 'Already have an account'
                  : 'Don\'t have an account',
              style: Theme.of(context).textTheme.labelLarge!.copyWith(
                    color: AppColors.labelTextFormColor,
                  ),
            ),
            TextButton(
              onPressed: () {
                isRegistered
                    ? Navigator.pop(context)
                    : Navigator.pushNamed(context, AppRouts.registerRout);
              },
              child: Text(
                isRegistered ? 'Login' : 'Sign Up',
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      color: AppColors.mainColor,
                    ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
