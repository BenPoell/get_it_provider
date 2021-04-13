// @dart=2.9
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:get_it_provider/app/app.locator.dart';
import 'package:get_it_provider/hello.dart';
import 'package:get_it_provider/helloService.dart';
import 'package:get_it_provider/theme.dart';
import 'package:provider/provider.dart';
import 'package:stacked_themes/stacked_themes.dart';

Future<void> main() async {
  //final getIt = GetIt.instance;

  //getIt.registerLazySingleton<HelloService>(() => HelloService());
  await setupLocator();
  //await ThemeManager.initialise();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        StreamProvider<Hello>(
          create: (context) => locator<HelloService>().hello,
          lazy: false,
          initialData: null,
        ),
      ],
      child: ThemeBuilder(
        defaultThemeMode: ThemeMode.light,
        lightTheme: lightTheme,
        darkTheme: darkTheme,
        builder: (context, regularTheme, darkTheme, themeMode) => MaterialApp(
          title: 'Flutter Demo',
          theme: regularTheme,
          darkTheme: darkTheme,
          themeMode: themeMode,
          home: MyHomePage(title: 'Flutter Demo Home Page'),
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
      GetIt.instance.get<HelloService>().registerHello(Hello("hello my dear"));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              Provider.of<Hello>(context)?.message ?? "No message.",
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
