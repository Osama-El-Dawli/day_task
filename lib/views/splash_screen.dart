import 'package:day_task/utils/app_colors.dart';
import 'package:day_task/utils/app_routs.dart';
import 'package:day_task/utils/images_string.dart';
import 'package:day_task/utils/text_string.dart';
import 'package:day_task/views/widgets/main_buton.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                ImagesString.logo,
                height: 70,
              ),
              DecoratedBox(
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Image.asset(
                  ImagesString.splash,
                  height: 320,
                ),
              ),
              Text(
                TextString.splashText,
                style: Theme.of(context).textTheme.displayMedium!.copyWith(
                      color: Colors.white,
                    ),
              ),
              Text(
                TextString.appName,
                style: Theme.of(context).textTheme.displayMedium!.copyWith(
                      color: AppColors.mainColor,
                    ),
              ),
              MainButton(
                  textButton: TextString.splashButtonText,
                  onPressed: () {
                    Navigator.pushNamed(context, AppRouts.loginRout);
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
