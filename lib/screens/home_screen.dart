// lib/screens/home_screen.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../core/constants/dummy_data.dart';
import '../core/utils/theme_provider.dart';
import '../widgets/app_bar.dart';
import '../widgets/category_list/category_list.dart';
import '../widgets/product_category_grid/best_seller_grid.dart';
import '../widgets/product_category_grid/category_grid.dart';
import '../widgets/bottom_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final isDarkMode = themeProvider.isDarkMode;
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const CustomAppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 1,
                //color: Colors.grey[300],
              ),

              // Bestsellers Section
              BestsellerCategoryGrid(
                categories: DummyData.getBestsellerCategories(),
              ),

              // Grocery & Kitchen Section
              CategoryTileGrid(
                sectionTitle: 'Grocery & Kitchen',
                categories: DummyData.getGroceryCategories(),
              ),

              // Snacks & Drinks Section
              CategoryTileGrid(
                sectionTitle: 'Snacks & Drinks',
                categories: DummyData.getSnacksCategories(),
              ),

              // Extra bottom padding
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child:
            Icon(themeProvider.isDarkMode ? Icons.light_mode : Icons.dark_mode),
        onPressed: () => themeProvider.toggleTheme(),
      ),
      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }
}
