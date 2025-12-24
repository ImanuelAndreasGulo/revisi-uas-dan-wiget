import 'package:flutter/material.dart';

class ChipDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chip Demo'),
      ),
      body: Center(
        child: Chip(
          avatar: CircleAvatar(
            backgroundColor: Colors.grey.shade800,
            child: Text('A'),
          ),
          label: Text('Chip Example'),
          onDeleted: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Chip deleted')),
            );
          },
        ),
      ),
    );
  }
}
