import '../../assets/images/images.dart';

class OnBourdingModel{
  String image;
  String text;

  OnBourdingModel({required this.image,required this.text});
}
List<OnBourdingModel>onBourdingList=[
  OnBourdingModel(
      image: Images.bourdingImage1,
      text: 'A morning without coffee is like sleep.'),
  OnBourdingModel(
      image: Images.bourdingImage2,
      text: 'Coffee, the favorite drink of the civilized world.'),
  OnBourdingModel(
      image: Images.bourdingImage3,
      text: 'Behind every successful person is a substantial amount of coffee.'),
];