// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_fidget/Constants/theme.dart';

//Square button for variouse actions and animations
class SquareButton extends StatefulWidget {
  SquareButton({
    super.key,
    this.onTap,
    this.colorScheme,
    required this.id,
    required this.toggle,
  });

  //id to identify the button
  final double id;

  final ButtonColorScheme? colorScheme;

  //custom onTap function for various actions and animations
  final VoidCallback? onTap;

  //determains if button is toggle type
  final bool toggle;

  //if (toggle == true)state to determin of on or not
  bool state = false;

  //set dimensions
  double buttonDimensions = 100;

  //current color on button
  late Color activeColor;

  //button elevation
  List<BoxShadow>? boxShadow = [
    const BoxShadow(
      color: Colors.black,
      blurRadius: 10,
      spreadRadius: 1,
      offset: Offset(0, 5),
    ),
  ];

  @override
  State<SquareButton> createState() => _SquareButtonState();
}

class _SquareButtonState extends State<SquareButton> {
  @override
  void initState() {
    if (widget.colorScheme != null) {
      widget.activeColor = widget.colorScheme!.primaryColor;
    } else {
      widget.activeColor = primaryColor!;
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.buttonDimensions,
      height: widget.buttonDimensions,
      child: GestureDetector(
        onTap: widget.onTap ?? () => widget.toggle ? pressToggle() : press(),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeInOut,
          decoration: BoxDecoration(
            boxShadow: widget.boxShadow,
            borderRadius: BorderRadius.circular(20),
            color: widget.activeColor,
          ),
        ),
      ),
    );
  }

  press() {
    setState(() {
      widget.boxShadow = null;
      widget.activeColor = primaryColorToggled!;
      Future.delayed(
        const Duration(milliseconds: 300),
        () {
          widget.boxShadow = [
            const BoxShadow(
              color: Colors.black,
              blurRadius: 10,
              spreadRadius: 1,
              offset: Offset(0, 5),
            ),
          ];
          widget.activeColor = primaryColor!;
          setState(() {});
        },
      );
    });
  }

  pressToggle() {
    if (widget.state) {
      //button is off
      widget.boxShadow = [
        const BoxShadow(
          color: Colors.black,
          blurRadius: 10,
          spreadRadius: 1,
          offset: Offset(0, 5),
        ),
      ];
      widget.state = false;
      if (widget.colorScheme != null) {
        widget.activeColor = widget.colorScheme!.primaryColor;
      } else {
        widget.activeColor = primaryColor!;
      }
    } else {
      //button is on
      widget.boxShadow = null;
      widget.state = true;
      if (widget.colorScheme != null) {
        widget.activeColor = widget.colorScheme!.toggledColor;
      } else {
        widget.activeColor = primaryColorToggled!;
      }
    }
    setState(() {});
  }
}

class ButtonColorScheme {
  ButtonColorScheme({
    required this.primaryColor,
    required this.toggledColor,
  });

  final Color primaryColor;
  final Color toggledColor;
}
