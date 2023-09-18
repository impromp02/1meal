import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:flutter/material.dart';
import 'package:food_recom/meal_card.dart';
import 'package:food_recom/meal_model.dart';
import 'package:food_recom/top_bar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final AppinioSwiperController controller = AppinioSwiperController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TopBar(),
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.75,
            child: AppinioSwiper(
              backgroundCardsCount: meals.length,
              swipeOptions:
                  const AppinioSwipeOptions.only(right: true, left: true),
              unlimitedUnswipe: true,
              controller: controller,
              onSwipe: _swipe,
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 40),
              onEnd: _onEnd,
              cardsCount: meals.length,
              cardsBuilder: (BuildContext context, index) =>
                  MealCard(meal: meals[index]),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 60,
                width: 60,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(0),
                      backgroundColor: Colors.red[500],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(60),
                      )),
                  onPressed: controller.swipeLeft,
                  child: const Icon(
                    Icons.cancel,
                    size: 32,
                  ),
                ),
              ),
              SizedBox(
                height: 60,
                width: 60,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(60),
                      )),
                  onPressed: controller.swipeLeft,
                  child: const Icon(
                    Icons.favorite_border,
                    size: 32,
                  ),
                ),
              ),
              SizedBox(
                height: 60,
                width: 60,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(0),
                      backgroundColor: Colors.teal,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(60),
                      )),
                  onPressed: controller.swipeRight,
                  child: const Icon(
                    Icons.check,
                    size: 32,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  void _swipe(int index, AppinioSwiperDirection direction) {
    debugPrint('index ===> ${index.toString()}');
    if (direction == AppinioSwiperDirection.right) {
      Navigator.pushNamed(context, '/detail',
          arguments: <String, MealModel>{'meal': meals[index - 1]});
    }
  }

  void _onEnd() {
    debugPrint('end reached!');
  }
}
