import 'package:flutter/material.dart';
import 'package:the_basics/locator.dart';
import 'package:the_basics/routing/route_names.dart';
import 'package:the_basics/routing/router.dart';
import 'package:the_basics/services/navigation_service.dart';
import 'package:the_basics/views/layout_template/layout_template.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.deepOrange,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme:
              Theme.of(context).textTheme.apply(fontFamily: 'Open Sans')),
      builder: (context, child) => LayoutTemplate(
        child: child,
      ),
      navigatorKey: locator<NavigationService>().navigatorKey,
      onGenerateRoute: generateRoute,
      initialRoute: HomeRoute,
    );
  }
}
