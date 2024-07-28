import 'package:day_task/utils/app_colors.dart';
import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  const TextInput(
      {super.key,
      required this.hintText,
      required this.prefixIcon,
      this.isPassword = false});
  final String hintText;
  final IconData prefixIcon;
  final bool isPassword;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isPassword,
      style: Theme.of(context)
          .textTheme
          .titleMedium!
          .copyWith(color: Colors.white),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.white),
        border: const OutlineInputBorder(),
        fillColor: AppColors.textFormColor,
        filled: true,
        prefixIcon: Icon(
          prefixIcon,
          color: Colors.white,
        ),
        suffixIcon: isPassword
            ? IconButton(
                icon: const Icon(Icons.visibility_off),
                color: Colors.white,
                onPressed: () {},
              )
            : null,
      ),
    );
  }
}
