import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class More_Page extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          PopupMenuButton(
              elevation: 15,
              itemBuilder: (context) => [
            PopupMenuItem(
                value: 1,
                child: Text("Report")),

                PopupMenuItem(
                    value: 2,
                    child: Text("Block")),

                PopupMenuItem(
                    value: 3,
                    child: Text("Clear chat")),

                PopupMenuItem(
                    value: 4,
                    child: Text("Export chat")),

                PopupMenuItem(
                    value: 5,
                    child: Text("Add shortcut")),
          ])
        ],
      ),
    );
  }
}
