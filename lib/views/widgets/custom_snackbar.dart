import 'package:day_task/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomSnackBar extends StatelessWidget {
  const CustomSnackBar({
    super.key, required this.content,
  });
  final String content;

  @override
  Widget build(BuildContext context) {
    return SnackBar(
      content: Center(
          child: Text(
        content,
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
    );
  }
}
