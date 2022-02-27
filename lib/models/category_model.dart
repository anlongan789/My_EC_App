import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final String name;
  final String imgUrl;

  const Category({
    required this.name,
    required this.imgUrl,
  });

  @override
  List<Object?> get props => [name, imgUrl];

  static List<Category> categories = [
    const Category(
      name: 'Soft Drinks',
      imgUrl:
          'https://images.unsplash.com/photo-1500631195312-e3a9a5819f92?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
    ),
    const Category(
      name: 'Smoothies',
      imgUrl:
          'https://images.unsplash.com/photo-1505252585461-04db1eb84625?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=408&q=80',
    ),
    const Category(
      name: 'Water',
      imgUrl:
          'https://images.unsplash.com/photo-1554140426-5e830b73a5e8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
    ),
  ];
}
