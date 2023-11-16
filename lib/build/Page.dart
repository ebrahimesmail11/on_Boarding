import 'package:flutter/material.dart';

class PageOnParding extends StatelessWidget {
  const PageOnParding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Home Page',
          style: Theme.of(context).textTheme.headline5!.copyWith(color: Colors.deepPurple),
        ),
      ),
    );
  }
}
