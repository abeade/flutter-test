import 'package:flutter/material.dart';
import 'screens/home.dart';
import 'screens/second.dart';

class Routes {
  final routes = <String, WidgetBuilder>{
    RandomWords.routeName: (BuildContext context) => RandomWords()
  };

  Routes () {
    runApp(new MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      routes: routes,
      onGenerateRoute: (settings) {
        // If you push the PassArguments route
        if (settings.name == SecondScreen.routeName) {
          // Cast the arguments to the correct type: ScreenArguments.
          final String args = settings.arguments;

          // Then, extract the required data from the arguments and
          // pass the data to the correct screen.
          return MaterialPageRoute(
            builder: (context) {
              return SecondScreen(args);
            },
          );
        }
      },
      home: RandomWords(),
    ));
  }
}
