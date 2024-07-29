import 'package:day_task/utils/app_colors.dart';
import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  const TextInput(
      {super.key,
      required this.hintText,
      required this.prefixIcon,
      this.isPassword = false,
      required this.continueValidate});
  final String hintText;
  final IconData prefixIcon;
  final bool isPassword;
  final String? Function(String) continueValidate;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Colors.white,
      obscureText: isPassword,
      style: Theme.of(context)
          .textTheme
          .titleMedium!
          .copyWith(color: Colors.white),
      validator: (value) {
        if (value!.isEmpty) {
          return 'Field is required';
        }
        return continueValidate(value);
      },
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(18),
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.white),
        border: const OutlineInputBorder(),
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.textFormColor)),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.textFormColor)),
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
