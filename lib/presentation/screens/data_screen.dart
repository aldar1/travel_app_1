import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app_1/infraestructure/models/image_favorite_model.dart';
import 'package:travel_app_1/presentation/repositories/svg_repository.dart';
import 'package:travel_app_1/presentation/styles/app_text_styles.dart';
import 'package:travel_app_1/presentation/widgets/button_widget.dart';



class DataScreen extends StatelessWidget {
  const DataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments as ImageFavoriteModel;
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(17.0),
              child: SizedBox(
                height: size .height * 0.52,
                child: FadeInDown(child: _CardInformationData(args: args, size: size)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(args.title,style: AppTextStyles.subTitle,),
                  const SizedBox(height: 10,),
                  const Text(
                    'Ullamco irure ut dolor adipisicing enim aliqua esse officia anim. Cillum non cupidatat cillum aliqua cillum commodo laborum culpa sit incididunt occaecat non occaecat consectetur. Ipsum occaecat officia consectetur consequat nulla nisi consequat minim.',
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 5,),
                  const Text('Read more',style: TextStyle(color: Colors.pink,fontWeight: FontWeight.w500,fontSize: 15),),
                ],
              ),
            ),
            const SizedBox(height: 10,),
            const _CardButton(),
            const SizedBox(height: 10,),
            FadeInLeft(child: const ButtonsWidget())
          ],
        ),
      )
    );
  }
}

class _CardButton extends StatelessWidget {
  const _CardButton();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 90,
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        scrollDirection: Axis.horizontal,
        children: [
          _CardButtonIcon(cardIcon,'From 9c 'r'$'),
          _CardButtonIcon(carIcon,'6 Kml'),
          _CardButtonIcon(breakfastIcon,'Ful Board'),
          _CardButtonIcon(insuranceIcon,'Insurance'),
        ],
      ),
    );
  }
}

class _CardButtonIcon extends StatelessWidget {
  const _CardButtonIcon(this.svgPicture, this.title);
  final SvgPicture svgPicture;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      height: 70,
      width: 90,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey[200],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 5),
            child: svgPicture,
          ),
          const SizedBox(height: 10,),
          Text(title)
        ],
      ),
    );
  }
}

class _CardInformationData extends StatelessWidget {
  const _CardInformationData({
    required this.args,
    required this.size,
  });

  final ImageFavoriteModel args;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Image(
            image: AssetImage(args.imageUrl),
            height: size .height * 0.5,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        SafeArea(
          child: GestureDetector(
            onTap:  () => Navigator.pop(context),
            child: Container(
              width: 30,
              height: 30,
              margin:const  EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: const Icon(Icons.arrow_back_ios_new,size: 20,),
            ),
          )
        ),
        Positioned(
          bottom: 0,
          right: 30,
          child: Container(
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.grey[100],
            ),
            child: Icon(Icons.favorite,color: Colors.red.withOpacity(0.9),size: 24,),
          ),
        ),
        Positioned(
          bottom: 40,
          left: 20,
          child: FadeInUp(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 5),
              decoration: BoxDecoration(
                color: Colors.grey[800]?.withOpacity(0.80),
                borderRadius: BorderRadius.circular(20)
              ),
              child: Row(
                children: [
                  const SizedBox(width: 5,),
                  CircleAvatar(
                    maxRadius: 20,
                    child: Image.asset(
                      'assets/images/guide_dp.png',
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 10,),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Azat Kjabirov',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                      Text('Location guide',style: TextStyle(color: Colors.white54),)
                    ],
                  ),
                  const SizedBox(width: 30,),
                ],
              ),
            ),
          )
        )
      ],
    );
  }
}