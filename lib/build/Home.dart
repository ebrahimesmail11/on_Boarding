import 'package:flutter/material.dart';
import 'package:on_boarding_setup/Model/ItemModel.dart';
import 'package:on_boarding_setup/Widget/Refactor_Animated.dart';
import 'package:on_boarding_setup/Widget/Refactor_Done.dart';
import 'package:on_boarding_setup/build/OnBoarding_Screen.dart';


class Home extends StatelessWidget {
  final List<Item> articles;
  const Home({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                    itemCount: articles.length,
                    itemBuilder: (context, index) {
                      return OnBoardingScreen(artiItem: articles[index]);
                    }),
              ),
              Row(
                children: [
                  const Spacer(),
                  const SizedBox(width: 50,),
                 RefactorAnimated(articles: articles),
                  const Spacer(),
                  const RefactorDone(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
