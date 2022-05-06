import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/orange.jpg"),
            SizedBox(
              height: 20,
            ),
            Image.asset("assets/images/red.jpg"),
            Image.asset("assets/images/orange.jpg"),
            Image.asset("assets/images/orange.jpg"),
          ],
        ),
      ),
    );
  }
}
