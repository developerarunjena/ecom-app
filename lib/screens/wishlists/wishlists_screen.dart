import 'package:ecom/widgets/app_bar.dart';
import 'package:ecom/widgets/bottom_menu.dart';
import 'package:flutter/material.dart';

class WishlistsScreen extends StatelessWidget {
  const WishlistsScreen({Key? key}) : super(key: key);
  static const String routeName = '/wishlists';

  static Route route() {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName),
        builder: (_) => WishlistsScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Wishlist'),
      bottomNavigationBar: BottomMenuBar(),
    );
  }
}
