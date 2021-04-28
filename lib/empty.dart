import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'navigation_service.dart';

class Empty extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: TextButton(
          onPressed: () {
            NavigationService().state.pop();
          },
          child: Text(
            "Try yo get out",
            style: TextStyle(color: Colors.red),
          ),
        ),
      ),
      body: Placeholder(),
    );
  }
}
