import 'package:flutter/material.dart';

class RawChipDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RawChip Demo'),
      ),
      body: Center(
        child: RawChip(
          avatar: CircleAvatar(
            backgroundColor: Colors.grey.shade800,
            child: Text('R'),
          ),
          label: Text('RawChip Example'),
          onDeleted: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('RawChip deleted')),
            );
          },
        ),
      ),
    );
  }
}
