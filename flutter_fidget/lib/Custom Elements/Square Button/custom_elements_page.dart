import 'package:flutter/material.dart';
import 'package:flutter_fidget/Custom%20Elements/Square%20Button/square_button.dart';

class CustomButtonsPage extends StatelessWidget {
  const CustomButtonsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SquareButton(
          id: 1,
          toggle: false,
        ),
      ),
    );
  }
}
