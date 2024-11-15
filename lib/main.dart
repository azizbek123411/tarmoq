import 'package:flutter/material.dart';
import 'package:tarmoq/ui/pages/register_pages/sign_in_up.dart';
import 'package:tarmoq/ui/theme/light_mode.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
theme: lightMode,
      home: SignInUp(),
    );
  }
}

