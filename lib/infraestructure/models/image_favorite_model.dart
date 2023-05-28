
class ImageFavoriteModel {

  final String title;
  final double stars;
  final String imageUrl;

  ImageFavoriteModel({
    required this.title, 
    required this.stars, 
    required this.imageUrl
  });


}
List<ImageFavoriteModel> getImageList(){
  List<ImageFavoriteModel> listPopular = [];
  listPopular.add(ImageFavoriteModel(title: 'Monument to \nSalavat Yualaev', stars: 4.9, imageUrl: 'assets/images/image1.png'));
  listPopular.add(ImageFavoriteModel(title: 'Krasnyy Klyue \nspring', stars: 4.2, imageUrl: 'assets/images/image2.png'));
  listPopular.add(ImageFavoriteModel(title: 'Shulgat-Tash cave ', stars: 4.1, imageUrl: 'assets/images/image3.png'));
  return listPopular;
}