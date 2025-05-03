import 'package:blinkit_clone/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import 'bloc/category/category_bloc.dart';
import 'bloc/product/product_bloc.dart';
import 'bloc/search/search_bloc.dart';
import 'core/utils/theme.dart';
import 'core/utils/theme_provider.dart';

class BlinkitApp extends StatelessWidget {
  const BlinkitApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => CategoryBloc()..add(LoadCategories())),
        BlocProvider(create: (context) => ProductBloc()..add(LoadProducts())),
        BlocProvider(create: (context) => SearchBloc()),
      ],
      child: MaterialApp(
        title: 'Blinkit Clone',
        debugShowCheckedModeBanner: false,
        theme: themeProvider.isDarkMode
            ? AppTheme.darkTheme(context)
            : AppTheme.lightTheme(context),
        home: const HomeScreen(),
      ),
    );
  }
}
