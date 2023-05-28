import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:travel_app_1/infraestructure/models/image_favorite_model.dart';
import 'package:travel_app_1/presentation/styles/styles.dart';

class CardListPopular extends StatelessWidget {
  const CardListPopular({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: double.infinity,
      height: size.height *0.40,
      child: SizedBox(
        child: ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          scrollDirection: Axis.horizontal,
          itemCount: getImageList().length,
          itemBuilder: (context,index){
            final imageFavoriteModel = getImageList()[index];
            return FadeInRight(
              child: GestureDetector(
                onTap: (){
                  Navigator.pushNamed(
                    context,
                    'data',
                    arguments: imageFavoriteModel
                  );
                  
                },
                child: Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Stack(
                      children: [
                        Image(
                          image: AssetImage(imageFavoriteModel.imageUrl),
                          fit: BoxFit.cover,
                          width: 250,
                          height: 600,
                        ),
                        const _IconTopButton(),
                        _TitleCard(imageFavoriteModel: imageFavoriteModel)
                      ],
                    ),
                  ),
                ),
              ),
            );
          }
        ),
      )
    );
  }
}

class _IconTopButton extends StatelessWidget {
  const _IconTopButton();

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 20,
      top: 20,
      child: Container(
        padding: const EdgeInsets.all(6),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.white,
        ),
        child: Icon(Icons.favorite,color: Colors.red.withOpacity(0.9),size: 24,),
      ),
    );
  }
}

class _TitleCard extends StatelessWidget {
  const _TitleCard({
    required this.imageFavoriteModel,
  });

  final ImageFavoriteModel imageFavoriteModel;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 20,
      left: 20,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(imageFavoriteModel.title,style: AppTextStyles.textCardPopularTitle,),
          const SizedBox(height: 10,),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
            decoration: BoxDecoration(
              color: Colors.grey[400]?.withOpacity(0.4),
              borderRadius: BorderRadius.circular(40)
            ),
            child: Row(
              children: [
                Icon(Icons.star,color: Colors.orange[300],size: 20),
                const SizedBox(width: 5,),
                Text(imageFavoriteModel.stars.toString(),style: AppTextStyles.textCardPopularRanking,),
              ],
            ),
          )
        ],
      )
    );
  }
}