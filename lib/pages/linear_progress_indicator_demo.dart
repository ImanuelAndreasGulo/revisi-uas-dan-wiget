import 'package:flutter/material.dart';

class LinearProgressIndicatorDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LinearProgressIndicator Demo'),
      ),
      body: Center(
        child: LinearProgressIndicator(),
      ),
    );
  }
}
