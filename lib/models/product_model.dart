import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String name;
  final String category;
  final String imgUrl;
  final double price;
  final bool isRecommended;
  final bool isPopular;
  Product({
    required this.name,
    required this.category,
    required this.imgUrl,
    required this.price,
    required this.isRecommended,
    required this.isPopular,
  });

  @override
  // TODO: implement props
  List<Object> get props {
    return [
      name,
      category,
      imgUrl,
      price,
      isRecommended,
      isPopular,
    ];
  }

  static List<Product> products = [
    Product(
      name: 'Coca Cola',
      category: 'Soft Drinks',
      imgUrl:
          "https://kenh14cdn.com/thumb_w/600/2016/coca3-1455639387726-0-0-2400-3840-crop-1455641728316.jpeg",
      price: 1.99,
      isRecommended: true,
      isPopular: true,
    ),
    Product(
      name: '7Up',
      category: 'Soft Drinks',
      imgUrl:
          "https://kenh14cdn.com/thumb_w/640/pr/2021/1622356910902-884-0-1843-1536-crop-1622356925069-63757979067355.jpg",
      price: 1.59,
      isRecommended: false,
      isPopular: false,
    ),
    Product(
      name: 'Coconut Raspberry',
      category: 'Smoothies',
      imgUrl:
          "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/coconut-raspberry-smoothie-1641852442.jpg?crop=0.665xw:1.00xh;0.199xw,0&resize=980:*",
      price: 2.99,
      isRecommended: true,
      isPopular: true,
    ),
    Product(
      name: 'Pineapple-Cucumber',
      category: 'Smoothies',
      imgUrl:
          "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/pineapple-cucumber-smoothie-1641852612.jpg?crop=0.483xw:0.467xh;0.0842xw,0.362xh&resize=980:*",
      price: 3.99,
      isRecommended: true,
      isPopular: false,
    ),
    Product(
      name: 'Summer',
      category: 'Smoothies',
      imgUrl:
          "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/summer-smoothies-1641853036.jpg?crop=0.669xw:1.00xh;0.140xw,0&resize=980:*",
      price: 2.99,
      isRecommended: true,
      isPopular: true,
    ),
    Product(
      name: 'Green Goddess',
      category: 'Smoothies',
      imgUrl:
          "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/green-goddess-smoothie-1564585536.jpg?crop=0.815xw:0.733xh;0.167xw,0.172xh&resize=980:*",
      price: 3.99,
      isRecommended: true,
      isPopular: false,
    ),
    Product(
      name: 'Aquafina',
      category: 'Water',
      imgUrl:
          "https://contact.pepsico.com/files/aquafina/documents/1549383946/aq-featured1.jpg",
      price: 0.99,
      isRecommended: false,
      isPopular: false,
    ),
  ];
}
