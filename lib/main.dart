import 'package:blinkit_clone/core/utils/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import 'app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Color(0xFFFFDB58),
    statusBarIconBrightness: Brightness.dark,
  ));

  runApp(ChangeNotifierProvider(
      create: (BuildContext context) => ThemeProvider(),
      child: const BlinkitApp()));
}
