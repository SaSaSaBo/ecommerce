// ignore_for_file: use_build_context_synchronously, unused_import

import 'package:ecommapp/constants/constants.dart'; 
import 'package:ecommapp/firebase_helper/firebase_auth_helper/firebase_auth_helper.dart';
import 'package:ecommapp/screens/custom_bottom_bar/custom_bottom_bar.dart';
import 'package:ecommapp/screens/home/home.dart';
import 'package:ecommapp/widgets/primary_button/primary_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ecommapp/widgets/top_titles/top_titles.dart'; 
import 'package:ecommapp/constants/routes.dart';
import 'package:ecommapp/screens/auth_ui/sign_up/sign_up.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  bool isShowPassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TopTitles(subtitle: "If you have an account", title: "Login"),
            const SizedBox(
              height: 45.0,
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: "E-Mail",
                prefixIcon: Icon(
                  Icons.email_outlined,
                ),
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            TextFormField(
              obscureText: isShowPassword,
              decoration: InputDecoration(
                hintText: "Password",
                prefixIcon: const Icon(
                  Icons.key_outlined,
                ),
                suffixIcon: CupertinoButton(
                  onPressed: () {
                    setState(() {
                      isShowPassword = !isShowPassword;
                    });
                  },
                  padding: EdgeInsets.zero,
                  child: const Icon(
                    Icons.visibility_outlined,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40.0,
            ),
            PrimaryButton(
              title: "Login",
              onPressed: () async {
                bool isValidated = loginVaildation(email.text, password.text);
                if (isValidated) {
                  bool isLogined = await FirebaseAuthHelper.instance
                      .login(email.text, password.text, context);
                  if (isLogined) {
                    Routes.instance.pushAndRemoveUntil(
                        widget: const CustomBottomBar(), context: context);
                  }
                }
              },
            ),
            const SizedBox(
              height: 25.0,
            ),
            const Center(
              child: Text("Don't have any account?"),
            ),
            const SizedBox(
              height: 2.0,
            ),
            Center(
              child: CupertinoButton(
                onPressed: () {
                  Routes.instance
                      .push(widget: const SignUp(), context: context);
                },
                child: Text(
                  "Create an account",
                  style: TextStyle(color: Theme.of(context).primaryColor),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
