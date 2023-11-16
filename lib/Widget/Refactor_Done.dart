import 'package:flutter/material.dart';
import 'package:on_boarding_setup/build/Page.dart';

class RefactorDone extends StatelessWidget {
  const RefactorDone({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20, right: 20),

      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) {
              return const PageOnParding();
            }),
          );
        },
        child: Text(
          'Done',
          style: Theme.of(context)
              .textTheme
              .headline5!
              .copyWith(color: Colors.deepPurple),
        ),
      ),
    );
  }
}
