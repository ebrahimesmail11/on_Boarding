import 'package:flutter/material.dart';

class DoIndocartion extends StatelessWidget {
  const DoIndocartion({super.key,required this.isActive});
final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
        duration: const Duration(milliseconds: 300),
      width: isActive? 14 : 4,
      height: 4,
     decoration: BoxDecoration(
       color:isActive? Colors.deepPurple: Colors.grey,
       borderRadius: BorderRadius.circular(30),
     ),
    );
  }
}

