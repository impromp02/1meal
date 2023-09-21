import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:flutter/material.dart';
import 'package:one_meal/services/meal_api.dart';
import 'package:one_meal/widgets/meal_card.dart';
import 'package:one_meal/models/meal_model.dart';
import 'package:one_meal/widgets/top_bar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final AppinioSwiperController controller = AppinioSwiperController();
  late List<MealElement> meals = [];
  @override
  void initState() {
    super.initState();
    () async {
      final response = await fetchMeals('Indian');
      setState(() {
        meals = response.meals;
      });
    }();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TopBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.70,
            child: AppinioSwiper(
              backgroundCardsCount: meals.length,
              swipeOptions:
                  const AppinioSwipeOptions.only(right: true, left: true),
              controller: controller,
              onSwipe: _swipe,
              onEnd: _onEnd,
              cardsCount: meals.length,
              cardsBuilder: (BuildContext context, index) =>
                  meals.isNotEmpty ? MealCard(meal: meals[index]) : Container(),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 80,
                width: 80,
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
                height: 80,
                width: 80,
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
                height: 80,
                width: 80,
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
          arguments: <String, MealElement>{'meal': meals[index - 1]});
    }
  }

  void _onEnd() {
    debugPrint('end reached!');
  }
}
