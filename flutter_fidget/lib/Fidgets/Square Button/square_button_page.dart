import 'package:flutter/material.dart';
import 'package:flutter_fidget/Fidgets/Square%20Button/square_button.dart';

class ToggleButtonsPage extends StatelessWidget {
  const ToggleButtonsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SquareButton(
          id: 1,
          toggle: true,
        ),
      ),
    );
  }
}
