
import 'package:flutter/material.dart';
import 'package:lakshmipur_high_school/provider/banner_provider.dart';
import 'package:lakshmipur_high_school/provider/campaignProvider.dart';
import 'package:lakshmipur_high_school/provider/category_provider.dart';
import 'package:lakshmipur_high_school/provider/restaurant_provider.dart';
import 'package:lakshmipur_high_school/provider/theme_provider.dart';
import 'package:lakshmipur_high_school/theme/dart_theme.dart';
import 'package:lakshmipur_high_school/theme/light_theme.dart';
import 'package:lakshmipur_high_school/view/screens/deshboard/deshboard_screen.dart';
import 'package:provider/provider.dart';
import 'di_container.dart' as di;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => di.sl<ThemeProvider>()),
        ChangeNotifierProvider(create: (context) => di.sl<CategoryProvider>()),
        ChangeNotifierProvider(create: (context) => di.sl<CampaignProvider>()),
        ChangeNotifierProvider(create: (context) => di.sl<BannerProvider>()),
        ChangeNotifierProvider(create: (context) => di.sl<RestaurantProvider>()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'pathoo',
      debugShowCheckedModeBanner: false,
     theme: Provider.of<ThemeProvider>(context).darkTheme ? darkTheme : lightTheme,
      home: DashBoardScreen(),

      // home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
