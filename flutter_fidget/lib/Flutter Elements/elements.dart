import 'package:flutter/material.dart';
import 'package:flutter_fidget/Constants/functions.dart';
import 'package:flutter_fidget/Constants/theme.dart';

class MyElevatedButton extends StatefulWidget {
  const MyElevatedButton({
    super.key,
  });

  @override
  State<MyElevatedButton> createState() => _MyElevatedButtonState();
}

class _MyElevatedButtonState extends State<MyElevatedButton> {
  Color activeColor = primaryColor!;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        activeColor = shuffleColor();
        setState(() {});
      },
      style: ElevatedButton.styleFrom(
          fixedSize: const Size(150, 40), backgroundColor: activeColor),
      child: const Text("Elevated Button"),
    );
  }
}
