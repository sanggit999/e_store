import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/helper/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatefulWidget {
  const NavigationMenu({super.key});

  @override
  State<NavigationMenu> createState() => _NavigationMenuState();
}

class _NavigationMenuState extends State<NavigationMenu> {
  int currentPageIndex = 0;

  final List<Widget> screens = [
    Container(color: Colors.green),
    Container(color: Colors.purple),
    Container(color: Colors.orange),
    Container(color: Colors.blue),
  ];

  void onItemTapped(int index) {
    setState(() {
      currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: NavigationBar(
        height: 80,
        elevation: 0,
        onDestinationSelected: onItemTapped,
        selectedIndex: currentPageIndex,
        backgroundColor: dark ? MyColors.black : MyColors.white,
        indicatorColor: dark
            ? MyColors.white.withOpacity(0.1)
            : MyColors.black.withOpacity(0.1),
        destinations: const [
          NavigationDestination(icon: Icon(Iconsax.home), label: 'Trang chủ'),
          NavigationDestination(icon: Icon(Iconsax.shop), label: 'Cửa hàng'),
          NavigationDestination(icon: Icon(Iconsax.heart), label: 'Yêu thích'),
          NavigationDestination(icon: Icon(Iconsax.user), label: 'Cá nhân'),
        ],
      ),
      body: screens[currentPageIndex],
    );
  }
}
