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

  //button elevation
  double elevation = 10;

  late Color activeColor;

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
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          elevation: widget.elevation,
          shadowColor: Colors.black,
          color: widget.activeColor,
        ),
      ),
    );
  }

  press() {
    //TODO: Add non-toggle transition logic and animation
  }

  pressToggle() {
    if (widget.state) {
      //button is off
      widget.elevation = 10;
      widget.state = false;
      if (widget.colorScheme != null) {
        widget.activeColor = widget.colorScheme!.primaryColor;
      }
    } else {
      //button is on
      widget.elevation = 0;
      widget.state = true;
      if (widget.colorScheme != null) {
        widget.activeColor = widget.colorScheme!.toggledColor;
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
