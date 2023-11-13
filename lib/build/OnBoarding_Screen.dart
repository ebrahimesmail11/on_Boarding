import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:on_boarding_setup/Model/ItemModel.dart';
import 'package:on_boarding_setup/Widget/Refactor_Home.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key,required this.artiItem});
final Item artiItem;
  @override
  Widget build(BuildContext context) {
    return RefactorHome(
        image: artiItem.image,
        title: artiItem.title,
        subTitle: artiItem.subTitle,
    );
  }
}
