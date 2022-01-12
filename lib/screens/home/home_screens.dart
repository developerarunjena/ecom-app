import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecom/models/models.dart';
import 'package:ecom/widgets/app_bar.dart';
import 'package:ecom/widgets/bottom_menu.dart';
import 'package:ecom/widgets/hero_carousel.dart';
import 'package:ecom/widgets/product_carousel_card.dart';
import 'package:ecom/widgets/section_title.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  static const String routeName = '/';

  static Route route() {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName), builder: (_) => HomeScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Ecom To Shop'),
      bottomNavigationBar: BottomMenuBar(),
      body: Column(
        children: [
          Container(
            child: HeroCarouselCard(category: Category.categories),
            // child: CarouselSlider(
            //   options: CarouselOptions(
            //     aspectRatio: 1.5,
            //     viewportFraction: 0.9,
            //     enlargeCenterPage: true,
            //     enlargeStrategy: CenterPageEnlargeStrategy.height,
            //   ),
            //   items: Category.categories
            //       .map((category) => HeroCarousel(category: category))
            //       .toList(),
            // ),
          ),
          const SectionTitle(
            title: 'RECOMMENDED',
          ),
          // ProductCard(
          //   product: Product.products[0],
          // ),
          ProductCarouselCard(
            products: Product.products
                .where((element) => element.isRecommended)
                .toList(),
          ),
          const SectionTitle(
            title: 'POPULAR',
          ),
          ProductCarouselCard(
            products:
                Product.products.where((element) => element.isPopular).toList(),
          ),
        ],
      ),
    );
  }
}
