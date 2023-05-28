import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app_1/presentation/repositories/svg_repository.dart';
import 'package:travel_app_1/presentation/styles/styles.dart';
import 'package:travel_app_1/presentation/widgets/bottom_navigation_bar_widget.dart';
import 'package:travel_app_1/presentation/widgets/card_icon_category.dart';
import 'package:travel_app_1/presentation/widgets/card_list_popular.dart';
import 'package:travel_app_1/presentation/widgets/input_widget_1.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<SvgPicture,String> listCategory = {
      starIcon: 'Top 30 places',
      natureIcon: 'Nature',
      foodIcon : 'Food',
    };
    final List<Color> listColor = [
      Colors.orange,
      Colors.green,
      Colors.red,
    ];

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40,),
            const _AppBarHomeScreen(),
            _ListCategory(listCategory: listCategory,listColor: listColor,),
            const SizedBox(height: 10,),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25,vertical: 10),
              child: Text('Popular',style: AppTextStyles.subTitle,),
            ),
            const CardListPopular(),
            const SizedBox(height: 20,)
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavigationBarWidget(),
    );
  }
}

class _ListCategory extends StatelessWidget {
  const _ListCategory({
    required this.listCategory,
    required this.listColor
  });

  final Map<SvgPicture, String> listCategory;
  final List<Color> listColor;

  @override
  Widget build(BuildContext context) {
    return FadeInLeft(
      child: SizedBox(
        height: 65,
        child: ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          scrollDirection: Axis.horizontal,
          itemCount: listCategory.length,
          itemBuilder: (context,index) {
            final keyMapCategory = listCategory.keys.elementAt(index);
            final valueMapCategory = listCategory[keyMapCategory];
            return Container(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              margin: const EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                color: Colors.grey[200]!.withOpacity(0.8),
                borderRadius: BorderRadius.circular(20)
              ),
              child: InkWell(
                onTap: (){},
                child: Row(
                  children: [
                    CardIconCategory(listColor: listColor, keyMapCategory: keyMapCategory,index:index),
                    const SizedBox(width: 7,),
                    Text(valueMapCategory.toString(),style: AppTextStyles.textCategory,),
                    const SizedBox(width: 5,),
                    
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class _AppBarHomeScreen extends StatelessWidget {
  const _AppBarHomeScreen();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Paris',style: AppTextStyles.title,),
              mapIcon
            ],
          ),
          const SizedBox(height: 5,),
          const Text('Choose another',style: AppTextStyles.subTitleBody,),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: FadeInRight(
              child: const InputWidget1()
            ),
          ),
          const SizedBox(height: 8,),
          const Text('Category',style: AppTextStyles.subTitle,),
        ],
      ),
    );
  }
}


