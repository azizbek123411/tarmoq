import 'package:flutter/material.dart';
import 'package:tarmoq/ui/utils/screen_utils.dart';

import '../../utils/app_padding.dart';
import '../../widgets/buttons.dart';
import '../../widgets/textfields.dart';


class LoginPage extends StatefulWidget {
void Function() onTap;
   LoginPage({super.key,required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Padding(
        padding: Dis.all(10),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.login_rounded,
                color: Theme.of(context).colorScheme.secondary,
                size: 60,
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                "Welcome back!!",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              TextFields(
                hintText: 'Enter your email',
                controller: emailController,
              ),
              SizedBox(
                height: 10.h,
              ),
              TextFields(
                hintText: 'Enter your password',
                controller: passwordController,
              ),
              SizedBox(
                height: 30.h,
              ),
              Buttons(
                color: Theme.of(context).colorScheme.secondary,
                h: 50.h,
                w: 200.w,
                title: 'Log In',
                r: 20,
                onTap: () {},
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'New user?',
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 15,
                    ),
                  ),
                  TextButton(
                    onPressed: widget.onTap,
                    child:  Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
