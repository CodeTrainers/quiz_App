import 'dart:html';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:newproj/Pages.dart';
import 'package:newproj/Splash.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.transparent),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {

    List pages = [
      const HomePage(),
      const VideoPage(),
      const LearningPage(),
      LibraryPage(),
    ];

    return Scaffold(
      backgroundColor: Colors.white60,
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(icon: Icon(Icons.developer_board_rounded), label: "DigiExams"),
          NavigationDestination(icon: Icon(Icons.ondemand_video), label: "Videos"),
          NavigationDestination(icon: Icon(Icons.menu_book), label: "Learning"),
          NavigationDestination(icon: Icon(Icons.library_books_outlined), label: "Library"),
        ],
      ),
      body:
       SingleChildScrollView(
         scrollDirection: Axis.vertical,
         child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(5),
                height: MediaQuery.of(context).size.width/6,
                width:double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10), //border corner radius
                  boxShadow:[
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5), //color of shadow
                      spreadRadius: 5, //spread radius
                      blurRadius: 7, // blur radius
                      offset: const Offset(0,2), // changes position of shadow
                    ),
                  ],
                ),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text("Hello there.. !! \nContinue your exams!", textAlign:TextAlign.start,),
                    ),
                    Icon(MdiIcons.accountBadge, size: 40, color: Colors.blue,)
                  ],
                ),
              ),
              pages[currentPageIndex]
            ],
          ),
       ),
    );
  }
}
