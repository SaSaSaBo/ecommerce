// ignore_for_file: unused_import

import 'package:ecommapp/screens/auth_ui/sign_up/sign_up.dart';
import 'package:ecommapp/widgets/primary_button/primary_button.dart';
import 'package:ecommapp/widgets/top_titles/top_titles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ecommapp/constants/asset_images.dart';
import 'package:ecommapp/constants/theme.dart';
import 'package:ecommapp/constants/routes.dart';
import 'package:ecommapp/screens/auth_ui/login/login.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TopTitles(
                  subtitle:
                      "This application gives you the opportunity to shop from home.",
                  title: "Welcome!"),
              const SizedBox(
                height: kToolbarHeight + 12,
              ),

              // const Text(
              //   "Welcome!",
              //   style: TextStyle(
              //     fontSize: 18.0,
              //     fontWeight: FontWeight.bold,
              //   ),
              // ),
              // const SizedBox(
              //   height: 12,
              // ),
              // const Text(
              //   "This application gives you the opportunity to shop from home.",
              //   style: TextStyle(
              //     fontSize: 18.0,
              //   ),
              // ),

              // Center(
              //   child: Image.asset(
              //     AssetsImages.instance.welcomeImage,
              //   ),
              // ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: kToolbarHeight + 40,
                  ),
                  CupertinoButton(
                    onPressed: () {},
                    padding: EdgeInsets.zero,
                    child: const Icon(
                      Icons.facebook,
                      size: 35,
                      color: Colors.blue,
                    ),
                  ), // icon
                  CupertinoButton(
                    onPressed: () {},
                    padding: EdgeInsets.zero,
                    child: const Icon(
                      Icons.mail,
                      size: 35,
                      color: Colors.redAccent,
                    ),
                  ),
                ],
              ),

              const SizedBox(
                height: 30.0,
              ),
              PrimaryButton(
                title: "Login",
                onPressed: () {
                  Routes.instance.push(widget: const SignUp(), context: context);
                },
              ),
              const SizedBox(
                height: 18.0,
              ),
              PrimaryButton(
                title: "Sign Up",
                onPressed: () {},
              ),
            ],
          ), // Column
        ),
      ),
    );
  }
}
