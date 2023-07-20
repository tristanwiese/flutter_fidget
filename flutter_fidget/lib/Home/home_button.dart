import 'package:flutter/material.dart';
import 'package:flutter_fidget/Constants/theme.dart';

class HomePageButton extends StatelessWidget {
  const HomePageButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  final String text;

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton(
              onPressed: onPressed,
              style: ElevatedButton.styleFrom(
                  elevation: 5,
                  backgroundColor: primaryColor,
                  fixedSize: const Size.fromHeight(80),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  )),
              child: Text(text),
            ),
          ),
        ],
      ),
    );
  }
}
