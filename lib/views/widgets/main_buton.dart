import 'package:day_task/utils/app_colors.dart';
import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  const MainButton({
    super.key,
    required this.textButton,
    required this.onPressed,
    this.backColor = AppColors.mainColor,
    this.border,
    this.textColor = Colors.black,
    this.icon,
  });
  final String textButton;
  final VoidCallback onPressed;
  final Color backColor;
  final Color textColor;
  final BorderSide? border;
  final Icon? icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backColor,
          foregroundColor: textColor,
          side: border,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon ??
                const SizedBox(
                  width: 0,
                ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                textButton,
                style: const TextStyle(
                  fontSize: 24,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
