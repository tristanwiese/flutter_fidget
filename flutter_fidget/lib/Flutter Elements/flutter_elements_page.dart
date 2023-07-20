import 'package:flutter/material.dart';

import 'elements.dart';

class FlutterElementsPage extends StatelessWidget {
  const FlutterElementsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          children: [MyElevatedButton()],
        ),
      ),
    );
  }
}
