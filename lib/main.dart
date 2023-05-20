import 'utils/route_utils.dart' show MyRoutes;
import 'package:exam2/views/screen/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations(
      [
        DeviceOrientation.portraitUp,
      ]
  );
  runApp(
    MyApp(),
  );
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Text("Generator app"),
            centerTitle: true,
            backgroundColor: Colors.blue,
          ),
          body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.hourglass_empty,size: 80,),
            ],
          ),
          ),
          floatingActionButton: FloatingActionButton (onPressed:() {},
            child: Row(
              children: [Text("generat"),Icon(Icons.add_circle)],
            ),
        ),
    ),
    routes: {
      MyRoutes.home: (context) => const HomePage(),
      MyRoutes.home_page: (context) => const HomePage(),
    }
    );
  }

}
