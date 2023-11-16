import 'package:flutter/material.dart';
import 'package:on_boarding_setup/Model/ItemModel.dart';
import 'package:on_boarding_setup/build/Do_Indocartion.dart';
import 'package:on_boarding_setup/build/Home.dart';
import 'package:on_boarding_setup/build/OnBoarding_Screen.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
final List<Item> article=const [
  Item(image: 'assets/sta.png', title: "Find the item you've \nbeen looking for ", description: "Here you'll see rich vartieties of goods carefully classified for seamless browsing experience."),
  Item(image: 'assets/st1.png', title: 'Get those shopping \nbags filled', description: 'Add any item you want to your cart, ir save it on your wishlist'),
  Item(image: 'assets/st2.png', title: 'Fast & secure \npayment', description: 'There are many payment options available for you ease'),

];
late  PageController _pageController;
 int _pageIndex=0;

@override
  void initState() {
    _pageController=PageController(initialPage: 0);
    super.initState();
  }
  @override
  void dispose() {
   _pageController.dispose();
    super.dispose();
  }
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
                  controller: _pageController,
                    onPageChanged: (index){
                    setState(() {
                     _pageIndex=index;
                    });
                    },
                    itemCount:article.length,
                    itemBuilder: (context,index){
                  return OnBoardingScreen(artiItem: article[index],);
                }) ,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 50,),
                child: Row(
                  children: [
                  const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return Home(articles: article,);
                          },),);
                        },
                        child: Text(
                          'Skip',
                          style: Theme.of(context).textTheme.headline5!.copyWith(color: Colors.deepPurple,),
                        ),
                      ),
                    ),
                    const Spacer(),
                   ...List.generate(article.length, (index) => Padding(
                     padding: const EdgeInsets.only(right: 10),
                     child: DoIndocartion(isActive: index==_pageIndex),
                   ),),
                    const Spacer(),
                    InkWell(
                      onTap: (){
                        _pageController.nextPage(duration: const Duration(milliseconds:300), curve: Curves.ease);
                      },
                        child: const Icon(Icons.arrow_forward,color: Colors.deepPurple,),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20,)
            ],
          ),
        ),
      ),
    );
  }
}
