import 'package:day_task/utils/app_colors.dart';
import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  const MainButton(
      {super.key, required this.textButton, required this.onPressed});
  final String textButton;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.mainColor,
          foregroundColor: Colors.black,
        ),
        child: Text(
          textButton,
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
