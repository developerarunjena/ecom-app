import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final String name;
  final String imageUrl;

  const Category({required this.name, required this.imageUrl});

  @override
  // TODO: implement props
  List<Object?> get props => [name, imageUrl];

  static List<Category> categories = [
    Category(
        name: 'Items Menu',
        imageUrl:
            'https://images.pexels.com/photos/3023476/pexels-photo-3023476.jpeg?cs=srgb&dl=pexels-caleb-oquendo-3023476.jpg&fm=jpg'),
    Category(
        name: 'Order Online',
        imageUrl:
            'https://images.pexels.com/photos/3023476/pexels-photo-3023476.jpeg?cs=srgb&dl=pexels-caleb-oquendo-3023476.jpg&fm=jpg'),
    Category(
        name: 'Starter',
        imageUrl:
            'https://images.pexels.com/photos/3023476/pexels-photo-3023476.jpeg?cs=srgb&dl=pexels-caleb-oquendo-3023476.jpg&fm=jpg'),
    Category(
        name: 'Pizza',
        imageUrl:
            'https://images.pexels.com/photos/375467/pexels-photo-375467.jpeg?cs=srgb&dl=pexels-creative-vix-375467.jpg&fm=jpg')
  ];
}
