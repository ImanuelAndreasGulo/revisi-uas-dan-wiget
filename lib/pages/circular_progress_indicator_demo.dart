import 'package:flutter/material.dart';

class CircularProgressIndicatorDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CircularProgressIndicator Demo'),
      ),
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
