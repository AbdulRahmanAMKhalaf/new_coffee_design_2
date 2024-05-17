import '../../assets/images/images.dart';
import '../coffee_type_model/coffee_type_model.dart';

class ItemModel{
  String image;
  String name;
  String description;
  String price;

  ItemModel({required this.image,required this.name,required this.description,required this.price});
}
List<ItemModel>itemList=[
  ItemModel(
      image: Images.homeImage1,
      name: coffeeTypeList[0],
      description: 'the best flavor',
      price: '2,7\$'),
  ItemModel(
      image: Images.homeImage2,
      name: coffeeTypeList[1],
      description: 'the best flavor',
      price: '3,7\$'),
  ItemModel(
      image: Images.homeImage3,
      name: coffeeTypeList[2],
      description: 'the best flavor',
      price: '3.0\$'),
  ItemModel(
      image: Images.homeImage4,
      name: coffeeTypeList[3],
      description: 'the best flavor',
      price: '2,7\$'),
  ItemModel(
      image: Images.homeImage5,
      name: coffeeTypeList[4],
      description: 'the best flavor',
      price: '4.1\$'),
];