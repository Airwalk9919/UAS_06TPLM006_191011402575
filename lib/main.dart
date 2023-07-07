import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/cuaca_provider.dart';
import '../Screen/Cuaca_screen.dart';
 // This widget is the root of your application.
 void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const App());
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider<CuacaProvider>(create: (BuildContext context) {
            return CuacaProvider();
          }),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: HomeScreen(),
    ));
  }
}
