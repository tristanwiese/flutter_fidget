import 'package:flutter/material.dart';
import 'package:flutter_fidget/Custom%20Elements/Square%20Button/custom_elements_page.dart';
import 'package:flutter_fidget/Flutter%20Elements/flutter_elements_page.dart';
import 'package:flutter_fidget/Home/home_button.dart';
import 'package:flutter_fidget/Navigation/nav.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        HomePageButton(
          text: "Custom Buttons",
          onPressed: () {
            navPush(context, const CustomButtonsPage());
          },
        ),
        HomePageButton(
          text: "Flutter Buttons",
          onPressed: () {
            navPush(context, const FlutterElementsPage());
          },
        ),
        HomePageButton(
          text: "Dynamic Layout",
          onPressed: () {},
        )
      ],
    ));
  }
}
