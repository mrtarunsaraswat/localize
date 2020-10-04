import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

void main() {
  runApp(
    EasyLocalization(
      supportedLocales: [Locale('en', 'US'), Locale('hindi', 'IND')],
      path: 'assets/translation',
      fallbackLocale: Locale('en', 'US'),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      supportedLocales: context.supportedLocales,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      title: 'Flutter Locale App Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Locale App Demo'),
          backgroundColor: Colors.grey[800],
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Center(
              child: Text(
                'hello_guys',
                style: TextStyle(fontSize: 25),
              ).tr(),
            ),
            Center(
              child: Text(
                'translation',
                style: TextStyle(fontSize: 25),
              ).tr(),
            ),
            Center(
              child: Text(
                'thanks',
                style: TextStyle(fontSize: 25),
              ).tr(),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RaisedButton(
                  color: Colors.amberAccent,
                  onPressed: () {
                    context.locale = Locale('hindi', 'IND');
                  },
                  child: Text('Change to Hindi'),
                ),
                RaisedButton(
                  color: Colors.pinkAccent[100],
                  onPressed: () {
                    context.locale = Locale('en', 'US');
                  },
                  child: Text('Change to english'),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
