import 'package:flutter/material.dart';
import 'package:on_boarding_setup/Model/ItemModel.dart';
import 'package:on_boarding_setup/Widget/Refactor_Home.dart';
import 'package:on_boarding_setup/build/OnBoarding_Screen.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});
final List<Item> article=const [
  Item(
      image: "assets/image.png",
      title: 'Write Title of Page',
      subTitle:  'Write the more description of the page, Write the more description of the page. Write the more description of the page.',
  ),
  Item(
    image: "assets/image.png",
    title: 'Write Title of Page',
    subTitle:  'Write the more description of the page, Write the more description of the page. Write the more description of the page.',
  ),
  Item(
    image: "assets/image.png",
    title: 'Write Title of Page',
    subTitle:  'Write the more description of the page, Write the more description of the page. Write the more description of the page.',
  ),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 14,right: 14,top: 50),
          child: Column(
            children: [
              Expanded(
                child:PageView.builder(
                    itemCount:article.length,
                    itemBuilder: (context,index){
                  return OnBoardingScreen(artiItem: article[index],);
                }) ,

              ),
            ],
          ),
        ),
      ),
    );
  }
}
