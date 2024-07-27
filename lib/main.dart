import 'package:day_task/utils/app_colors.dart';
import 'package:day_task/utils/app_routs.dart';
import 'package:day_task/utils/text_string.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: TextString.appName,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.backgroundColor,
        useMaterial3: false,
      ),
      initialRoute: AppRouts.splashRout,
      onGenerateRoute: AppRouts.generateRouts,
    );
  }
}
