import 'package:flutter/material.dart';
import 'package:on_boarding_setup/Model/ItemModel.dart';
import 'package:on_boarding_setup/build/Do_Indocartion.dart';

class RefactorAnimated extends StatelessWidget {
  const RefactorAnimated({super.key,required this.articles});
final List<Item> articles;
final int _pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...List.generate(
          articles.length,
              (index) => Padding(
            padding: const EdgeInsets.only(right: 10,bottom: 20),
            child: DoIndocartion(isActive: index -2 == _pageIndex),
          ),
        ),
      ],
    );
  }
}
