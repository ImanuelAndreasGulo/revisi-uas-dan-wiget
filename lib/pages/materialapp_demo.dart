import 'package:flutter/material.dart';

class MaterialAppDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MaterialApp Demo'),
      ),
      body: Center(
        child: Text('MaterialApp is the root widget for Material Design apps.'),
      ),
    );
  }
}
