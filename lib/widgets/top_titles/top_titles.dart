// ignore_for_file: unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopTitles extends StatelessWidget {
  final String title, subtitle;
  const TopTitles(
    {super.key, required this.subtitle, required this.title}
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:[
        const SizedBox(
          height: kToolbarHeight + 12,
        ),

        if(title == "Login" || title == "Create Account")  
        GestureDetector(
          onTap: (){
            Navigator.of(context).pop();
          },
          child: const Icon(
            Icons.arrow_back, 
            size: 35,
          ),
        ),
        const SizedBox(height: 12.0,),
        // CupertinoButton(
        //   padding: EdgeInsets.zero,
        //   onPressed: (){},
        //   child: const Icon(
        //       Icons.arrow_back, 
        //       size: 35,
        //     ),
        // ),
        // Padding(
        //   padding: const EdgeInsets.only(left: 8.0),
        //   child: const BackButton(),
        // ),



        Text(
          title,
          style: const TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox( 
          height: 12,
        ),
        Text(
          subtitle,
          style: const TextStyle(
            fontSize: 18.9,
          ),
        ),
      ],
    );
  }
}
