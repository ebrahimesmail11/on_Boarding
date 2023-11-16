import 'package:flutter/material.dart';

class RefactorHome  extends StatelessWidget {
  const RefactorHome ({super.key, required this.image, required this.title, required this.subTitle});
final String image,title,subTitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Image.asset(image),
        const Spacer(),
        Text(
          title,
          textAlign:TextAlign.center,
          style: Theme.of(context).textTheme.headline5!.copyWith(fontWeight: FontWeight.w500,),
        ),
        const SizedBox(height: 10,),
        Text(
          subTitle,
          textAlign: TextAlign.center,
        ),
        const Spacer(),
      ],
    );
  }
}
