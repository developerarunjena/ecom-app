import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String name;
  final String category;
  final String imageUrl;
  final double price;
  final bool isRecommended;
  final bool isPopular;

  const Product({
    required this.name,
    required this.category,
    required this.imageUrl,
    required this.price,
    required this.isRecommended,
    required this.isPopular,
  });

  @override
  // TODO: implement props
  List<Object?> get props =>
      [name, category, imageUrl, price, isRecommended, isPopular];
  static List<Product> products = [
    const Product(
        name: 'Redmi 10i',
        category: 'Electronics',
        imageUrl:
            'https://images.pexels.com/photos/7657593/pexels-photo-7657593.jpeg?cs=srgb&dl=pexels-cup-of-couple-7657593.jpg&fm=jpg',
        price: 19999.00,
        isRecommended: true,
        isPopular: false),
    const Product(
        name: 'Samsung A1',
        category: 'Electronics',
        imageUrl:
            'https://images.pexels.com/photos/7657593/pexels-photo-7657593.jpeg?cs=srgb&dl=pexels-cup-of-couple-7657593.jpg&fm=jpg',
        price: 20000.00,
        isRecommended: true,
        isPopular: false),
    const Product(
        name: 'Oppo v15',
        category: 'Electronics',
        imageUrl:
            'https://images.pexels.com/photos/7657593/pexels-photo-7657593.jpeg?cs=srgb&dl=pexels-cup-of-couple-7657593.jpg&fm=jpg',
        price: 23000.00,
        isRecommended: true,
        isPopular: true),
    const Product(
        name: 'Vivo v15',
        category: 'Electronics',
        imageUrl:
            'https://images.pexels.com/photos/7657593/pexels-photo-7657593.jpeg?cs=srgb&dl=pexels-cup-of-couple-7657593.jpg&fm=jpg',
        price: 23000.00,
        isRecommended: true,
        isPopular: true),
  ];
}
